
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
#include <libraries/Gui/Gui.h>				// Bela GUI
#include <libraries/OnePole/OnePole.h>		// one pole filter (DC-blocking filter)

// files for saving data (names must be changed)
std::string gEMGName = "EMG_name.txt";
std::string gButtonName = "button_name.txt";
std::ofstream EMGFile;
std::ofstream buttonFile;

// setting up I/O for sensor reading
const int gSensorChannel = 0; 				// analog pin 0 (EMG input)
const int gButtonChannel = 0;				// digital pin 0 (Button input)
float gReadPeriod = 0.1;					// how often the analog input is read (seconds)
float gSendPeriod = 0.5;					// how often buffers will be sent to the browser (seconds)
float gLastTimeRecorded = 0;				// keep track of the last input
float gInverseAnalogSampleRate = 0;			// initialise inverse analog sample rate
float gAnalogScale = 4.096; 				// scale for analog inputs (convert 0-1 to volts)

bool withFilter = 1;						// turn filter on (1) or off (0) for comparison

// object declaration
Gui gui;									// instantiate GUI	
OnePole DCFilt;								// instantiate filter for DC blocking

// Set up vectors for printing to the GUI
std::vector <float> gTimestamps;			// hold the timestamps
std::vector <float> gVoltage;				// hold the voltage readings
// Set up vectors for saving data 
std::vector<std::pair<float,double>> gData;	// hold the data to be saved
std::vector<std::pair<float,int>> gButton; 	// hold the button presses to be saved

// setting up arrays for notch filters
float gCo[4][5];							// array for storing the coefficients when initialising filters
// first notch filter
float previousVoltIn_1[] = {0,0};			// {x[n-1], x[n-2]}
float previousVoltOut_1[] = {0,0}; 			// {y[n-1], y[n-2]}
// second notch filter
float previousVoltIn_2[] = {0,0};
float previousVoltOut_2[] = {0,0};
// third notch filter
float previousVoltIn_3[] = {0,0};
float previousVoltOut_3[] = {0,0};
// fourth notch filter
float previousVoltIn_4[] = {0,0};
float previousVoltOut_4[] = {0,0};
// global filter coefficients for calculation
float a_0 = 0, a_1 = 0, a_2 = 0, b_1 = 0, b_2 = 0;
int notches[] = {50,100,150,200};
// bandwidth of notch
float bandwidth = 0.0066;

////////////////////////////////////////////////////////////////////////////////////////////////////

// calculate notch filter coefficients given specifications (DSP Book, pg 326)
// https://www.analog.com/media/en/technical-documentation/dsp-book/dsp_book_Ch19.pdf
void calculate_coefficients(float sampleRate, float centerFrequency){

	float cf = centerFrequency/sampleRate;
	float R = 1 - 3 * bandwidth;
	float K = (1 - 2 * R * cos(2 * M_PI * cf) + pow(R, 2)) / (2 - 2 * cos(2 * M_PI * cf));

	// calculate filter coefficients from R and K values
	a_0 = K;
	a_1 = 2 * K * cos(2 * M_PI * cf);
	a_2 = K;
	b_1 = 2 * R * cos(2 * M_PI * cf);
	b_2 = pow(R, 2);
}

////////////////////////////////////////////////////////////////////////////////////////////////////

// initialization and allocation dependent on sample rate/period size
bool setup(BelaContext *context, void *userData){
	
	// open files for saving data
	EMGFile.open(gEMGName);
	buttonFile.open(gButtonName);

	// setup GUI for displaying voltage over time
	gui.setup(context->projectName);
	unsigned int numElements = gSendPeriod / gReadPeriod + 0.5;	// allocate space in vectors based on read/send periods
	gTimestamps.reserve(numElements); 							// reserve spaces in vectors
	gVoltage.reserve(numElements);
	
	// setup DC-blocking filter
	DCFilt.setup(10, context->analogSampleRate, 1); 				// cut-off frequency = 10Hz, high-pass (third argument = 1)
	
	// calculate coefficients for notch filter setup
	for (int i = 0; i < 4; i++){
		int notchcf = notches[i];
		calculate_coefficients(context->analogSampleRate, notchcf);
		// assign coefficients to global array
		gCo[i][0] = a_0;
		gCo[i][1] = a_1;
		gCo[i][2] = a_2;
		gCo[i][3] = b_1;
		gCo[i][4] = b_2;
	}
	
	gInverseAnalogSampleRate = 1/context->analogSampleRate;		// calculate inverse analog sample rate

	return true; 
}

////////////////////////////////////////////////////////////////////////////////////////////////////

void render(BelaContext *context, void *userData){

	// initialise counters for read/send frames
	static int readFramesElapsed = 0;
	static int sendFramesElapsed = 0;

	for(unsigned int n = 0; n < context->analogFrames; ++n) {
		
		// get voltage reading from EMG circuit
			float voltFiltered;
			float voltIn = gAnalogScale * analogRead(context, n, gSensorChannel);

			if(withFilter){
				// DC blocking filter
				float volt_DCBlocked = DCFilt.process(voltIn);

				// first notch
				float volt_1 =	gCo[0][0] * volt_DCBlocked - gCo[0][1] * previousVoltIn_1[0] + gCo[0][2] * previousVoltIn_1[1] + 	// apply coefficients to current and previous input (N-2)
								gCo[0][3] * previousVoltOut_1[0] - gCo[0][4] * previousVoltOut_1[1];								// and to previous outputs
				previousVoltIn_1[1] 	= previousVoltIn_1[0];
				previousVoltIn_1[0] 	= volt_DCBlocked;
				previousVoltOut_1[1] 	= previousVoltOut_1[0];
				previousVoltOut_1[0]	= volt_1;

				// second notch
				float volt_2 =	gCo[1][0] * volt_1 - gCo[1][1] * previousVoltIn_2[0] + gCo[1][2] * previousVoltIn_2[1] + 	// apply coefficients to current and previous input (N-2)
								gCo[1][3] * previousVoltOut_2[0] - gCo[1][4] * previousVoltOut_2[1];						// and to previous outputs
				previousVoltIn_2[1] 	= previousVoltIn_2[0];
				previousVoltIn_2[0] 	= volt_1;
				previousVoltOut_2[1] 	= previousVoltOut_2[0];
				previousVoltOut_2[0]	= volt_2;

				// third notch
				float volt_3 =	gCo[2][0] * volt_2 - gCo[2][1] * previousVoltIn_3[0] + gCo[2][2] * previousVoltIn_3[1] + 	// apply coefficients to current and previous input (N-2)
								gCo[2][3] * previousVoltOut_3[0] - gCo[2][4] * previousVoltOut_3[1];				// and to previous outputs
				previousVoltIn_3[1] 	= previousVoltIn_3[0];
				previousVoltIn_3[0] 	= volt_2;
				previousVoltOut_3[1] 	= previousVoltOut_3[0];
				previousVoltOut_3[0]	= volt_3;

				// fourth notch
				float volt_4 =	gCo[3][0] * volt_3 - gCo[3][1] * previousVoltIn_4[0] + gCo[3][2] * previousVoltIn_4[1] + 	// apply coefficients to current and previous input (N-2)
								gCo[3][3] * previousVoltOut_4[0] - gCo[3][4] * previousVoltOut_4[1];				// and to previous outputs
				previousVoltIn_4[1] 	= previousVoltIn_4[0];
				previousVoltIn_4[0] 	= volt_3;
				previousVoltOut_4[1] 	= previousVoltOut_4[0];
				previousVoltOut_4[0]	= volt_4;

				voltFiltered = volt_4;
			} else voltFiltered = voltIn;
		
		// save data once enough frames have elapsed (can be changed by amending the gReadPeriod)
		if(readFramesElapsed > gReadPeriod * context->analogSampleRate) {

			// get milliseconds elapsed since last reading for timestamping/sending to GUI
			float millis = gLastTimeRecorded + 1000 * readFramesElapsed * gInverseAnalogSampleRate;
 			gLastTimeRecorded = millis;

 			// get status of the button at the time of the reading and push to save vector
			float buttonStatus = digitalRead(context, n, gButtonChannel); // read the value of the button
			if(buttonStatus == 0){
				std::pair <float,int> buttonEntry; 			// default constructor
				buttonEntry = std::make_pair(millis, 1);	// make timestamp/voltage pair
				gButton.push_back(buttonEntry);				// add entry to global data vector
			} 
			
			// push EMG data with timestamp to save vector
			std::pair <float,double> entry; 				// default constructor
			entry = std::make_pair(millis, voltFiltered);	// make timestamp/voltage pair
			gData.push_back(entry);							// add entry to global data vector

			// Update vectors with time and filtered voltage to print to GUI
			gTimestamps.push_back(millis);
			gVoltage.push_back(voltFiltered);

			// reset counter for elapsed read frames
			readFramesElapsed = 0;
		} ++readFramesElapsed;
		
		// Send data to GUI for visualisation once enough frames have elapsed
		if(sendFramesElapsed > gSendPeriod * context->analogSampleRate) {
			// If GUI is connected
			if(gui.isConnected()) {
				// send buffers 
				gui.sendBuffer(0, gTimestamps);
				gui.sendBuffer(1, gVoltage);
				
				// clear vectors to free up space	
				gTimestamps.clear();
				gVoltage.clear();
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
	for(std::pair<float,double> value:gData){
		EMGFile << value.first << ", " << value.second << "\n";		// EMG data
	}
	for(std::pair<float,int> value:gButton){
		buttonFile << value.first << ", " << value.second << "\n";	// button activated
	}
}
