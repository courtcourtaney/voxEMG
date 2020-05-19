
#include <stdlib.h>
#include <cstdio>
#include <iostream>
#include <vector>
#include <cmath>
#include <utility>
#include <fstream>
#include <string>
#include <cstring>

// Bela librares
#include <Bela.h>
#include <libraries/Gui/Gui.h>                // Bela GUI
#include <libraries/OnePole/OnePole.h>        // one pole filter (DC-blocking filter)

// files for saving data (names must be changed)
std::string gEMGName_1     = "electrode_1.txt";
std::string gEMGName_2     = "electrode_2.txt";
std::string gButtonName = "button.txt";
std::ofstream EMGFile_1;
std::ofstream EMGFile_2;
std::ofstream buttonFile;

// setting up I/O for sensor reading
const int gSensorChannel_1 = 0;             // analog pin 0 (EMG input)
const int gSensorChannel_2 = 7;             // analog pin 1 (EMG input)
const int gButtonChannel = 0;                // digital pin 0 (Button input)
float gReadPeriod = 0.1;                    // how often the analog input is read (seconds)
float gSendPeriod = 0.5;                    // how often buffers will be sent to the browser (seconds)
float gLastTimeRecorded = 0;                // keep track of the last input
float gInverseAnalogSampleRate = 0;            // initialise inverse analog sample rate
float gAnalogScale = 4.096;                 // scale for analog inputs (convert 0-1 to volts)

bool withFilter = 1;                        // turn filter on (1) or off (0) for comparison

// object declaration
Gui gui;                                    // instantiate GUI
OnePole DCFilt;                                // instantiate filter for DC blocking

// Set up vectors for printing to the GUI
std::vector <float> gTimestamps;            // hold the timestamps
std::vector <float> gVoltage_1;                // hold the voltage readings
std::vector <float> gVoltage_2;                // hold the voltage readings
// Set up vectors for saving data
std::vector<std::pair<float,double>> gData_1;    // hold the data to be saved - muscle one
std::vector<std::pair<float,double>> gData_2;    // muscle 2
std::vector<std::pair<float,int>> gButton;         // hold the button presses to be saved

// struct for storing coefficients
struct coefficients {
    float a_0;
    float a_1;
    float a_2;
    float b_1;
    float b_2;
};

// struct for storing previous voltages
struct previousVolt {
    float in[2];
    float out[2];
};

// declare type for filterResults
using filterResults = std::pair<float,previousVolt>;
// bandwidth of notch
float bandwidth = 0.0066;
// make global coefficients
coefficients c1;
coefficients c2;
coefficients c3;
coefficients c4;
// and set global initial values
filterResults filterResult1a; // stream A
filterResults filterResult2a;
filterResults filterResult3a;
filterResults filterResult4a;
filterResults filterResult1b; // stream B
filterResults filterResult2b;
filterResults filterResult3b;
filterResults filterResult4b;

////////////////////////////////////////////////////////////////////////////////////////////////////

// calculate notch filter coefficients given specifications (DSP Book, pg 326)
// https://www.analog.com/media/en/technical-documentation/dsp-book/dsp_book_Ch19.pdf
coefficients calculate_coefficients(float sampleRate, float centerFrequency){

    float cf = centerFrequency/sampleRate;
    float R = 1 - 3 * bandwidth;
    float K = (1 - 2 * R * cos(2 * M_PI * cf) + pow(R, 2)) / (2 - 2 * cos(2 * M_PI * cf));

    // define coefficient struct
    coefficients c;

    // calculate filter coefficients from R and K values, set up struct
    c.a_0 = K;
    c.a_1 = 2 * K * cos(2 * M_PI * cf);
    c.a_2 = K;
    c.b_1 = 2 * R * cos(2 * M_PI * cf);
    c.b_2 = pow(R, 2);

    return c;
}

////////////////////////////////////////////////////////////////////////////////////////////////////

filterResults notch_filter(coefficients c, float voltIn, previousVolt pv){
    
    float voltFiltered = c.a_0 * voltIn - c.a_1 * pv.in[0]  + c.a_2 * pv.in[1] + c.b_1 * pv.out[0] - c.b_2 * pv.out[1];
    pv.in[1]     = pv.in[0];
    pv.in[0]     = voltIn;
    pv.out[1]     = pv.out[0];
    pv.out[0]    = voltFiltered;
    return std::make_pair(voltFiltered, pv);
};

filterResults makeInitialResults() {
    previousVolt pV;
    return std::make_pair(0, pV);
}

////////////////////////////////////////////////////////////////////////////////////////////////////

// initialization and allocation dependent on sample rate/period size
bool setup(BelaContext *context, void *userData){
    
    // open files for saving data
    EMGFile_1.open(gEMGName_1);
    EMGFile_2.open(gEMGName_2);
    buttonFile.open(gButtonName);

    // setup GUI for displaying voltage over time
    gui.setup(context->projectName);
    unsigned int numElements = gSendPeriod / gReadPeriod + 0.5;    // allocate space in vectors based on read/send periods
    gTimestamps.reserve(numElements);                             // reserve spaces in vectors
    gVoltage_1.reserve(numElements);
    gVoltage_2.reserve(numElements);
    
    // setup DC-blocking filter
    DCFilt.setup(10, context->analogSampleRate, 1);                 // cut-off frequency = 10Hz, high-pass (third argument = 1)
    
    // calculate coefficients for each notch
    c1 = calculate_coefficients(context->analogSampleRate, 50);
    c2 = calculate_coefficients(context->analogSampleRate, 100);
    c3 = calculate_coefficients(context->analogSampleRate, 150);
    c4 = calculate_coefficients(context->analogSampleRate, 200);

    // make initial results for voltage structs
    filterResult1a = makeInitialResults();    // stream A
    filterResult2a = makeInitialResults();
    filterResult3a = makeInitialResults();
    filterResult4a = makeInitialResults();
    filterResult1b = makeInitialResults();    // stream B
    filterResult2b = makeInitialResults();
    filterResult3b = makeInitialResults();
    filterResult4b = makeInitialResults();
    
    gInverseAnalogSampleRate = 1/context->analogSampleRate;        // calculate inverse analog sample rate

    return true;
}

////////////////////////////////////////////////////////////////////////////////////////////////////

void render(BelaContext *context, void *userData){

    // initialise counters for read/send frames
    static int readFramesElapsed = 0;
    static int sendFramesElapsed = 0;

    for(unsigned int n = 0; n < context->analogFrames; ++n) {
        
        // get voltage reading from EMG circuit
            float input_1 = gAnalogScale * analogRead(context, n, gSensorChannel_1); // stream A
            float input_2 = gAnalogScale * analogRead(context, n, gSensorChannel_2); // stream B

        // filter stream A
        filterResult1a = notch_filter(c1, input_1, filterResult1a.second);
        filterResult2a = notch_filter(c2, filterResult1a.first, filterResult2a.second);
        filterResult3a = notch_filter(c3, filterResult2a.first, filterResult3a.second);
        filterResult4a = notch_filter(c4, filterResult3a.first, filterResult4a.second);
        float finalResult_a = filterResult4a.first;
        // filter stream B
        filterResult1b = notch_filter(c1, input_2, filterResult1b.second);
        filterResult2b = notch_filter(c2, filterResult1b.first, filterResult2b.second);
        filterResult3b = notch_filter(c3, filterResult2b.first, filterResult3b.second);
        filterResult4b = notch_filter(c4, filterResult3b.first, filterResult4b.second);
        float finalResult_b = filterResult4b.first;
        
        // save data once enough frames have elapsed (can be changed by amending the gReadPeriod)
        if(readFramesElapsed > gReadPeriod * context->analogSampleRate) {

            // get milliseconds elapsed since last reading for timestamping/sending to GUI
            float millis = gLastTimeRecorded + 1000 * readFramesElapsed * gInverseAnalogSampleRate;
             gLastTimeRecorded = millis;
             // get status of the button at the time of the reading and push to save vector
            int buttonStatus = digitalRead(context, n, gButtonChannel); // read the value of the button
            if(buttonStatus == 1){
                std::pair <float,int> buttonEntry;             // default constructor
                buttonEntry = std::make_pair(millis, 1);    // make timestamp/voltage pair
                gButton.push_back(buttonEntry);                // add entry to global data vector
                printf("%i\n", buttonStatus);
            }
            
            // push EMG data with timestamp to save vector
            std::pair <float,double> entry_1;                     // default constructor
            entry_1 = std::make_pair(millis, finalResult_a);    // make timestamp/voltage pair
            std::pair <float,double> entry_2;                     // and for the second stream
            entry_2 = std::make_pair(millis, finalResult_b);
            gData_1.push_back(entry_1);                            // add entry to global data vectors
            gData_2.push_back(entry_2);

            // Update vectors with time and filtered voltage to print to GUI
            gTimestamps.push_back(millis);
            gVoltage_1.push_back(finalResult_a);
            gVoltage_2.push_back(finalResult_b);

            // reset counter for elapsed read frames
            readFramesElapsed = 0;
        } ++readFramesElapsed;
        
        // Send data to GUI for visualisation once enough frames have elapsed
        if(sendFramesElapsed > gSendPeriod * context->analogSampleRate) {
            // If GUI is connected
            if(gui.isConnected()) {
                // send buffers
                gui.sendBuffer(0, gTimestamps);
                gui.sendBuffer(1, gVoltage_1);
                gui.sendBuffer(2, gVoltage_2);
                
                // clear vectors to free up space
                gTimestamps.clear();
                gVoltage_1.clear();
                gVoltage_2.clear();
                // gData.clear();
            }
            // reset counter for elapsed frames sent to  GUI
            sendFramesElapsed = 0;
        } ++sendFramesElapsed;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////

// end any additional processes, release any resources allocated in setup()
void cleanup(BelaContext *context, void *userData){
    // save data in data vector
    for(std::pair<float,double> value:gData_1){
        EMGFile_1 << value.first << ", " << value.second << "\n";    // EMG data
    }
    for(std::pair<float,double> value:gData_2){
        EMGFile_2 << value.first << ", " << value.second << "\n";    // button activated
    }
    for(std::pair<float,int> value:gButton){
        buttonFile << value.first << ", " << value.second << "\n";    // button activated
    }
}
