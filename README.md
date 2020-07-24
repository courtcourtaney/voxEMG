
------------


# Vocal EMG Setup
Presented at NIME 2020:

## About
<p>This repository is for all of the currently used materials for building/setting up, and using our surface electromyography system for detecting vocal musculature activation (or whatever other muscular activation you'd like to try!).<br><br>The system is being used to study the difference between vocalised and subvocalised voice exercises (that is, those sung aloud and those movements which occur during imagination of an exercise, as done during mental rehearsal. More information regarding subvocalisation and musical imagery can be found in the paper: <br><br> Reed, C. N. and McPherson, A. P. <em>Surface Electromyography for Direct Vocal Control. Proc. NIME</em>, 2020. [[PDF]](https://qmro.qmul.ac.uk/xmlui/bitstream/handle/123456789/65364/Reed%20Surface%20Electromyography%20for%202020%20Published.pdf?sequence=2) [[Video]](https://www.youtube.com/watch?v=1nWLgQGNh0g&list=PLz8WNY_I2S5TI1nA-6xaeJksLJPhPpeNa&index=5&t=0s0) <br>
This is an ongoing body of work as part of my PhD, so please keep an eye out for updates, new implementations and improvements, and feel free to get in contact at any time regarding the project, what you're working on with it, and anything I can help with at: [c.n.reed@qmul.ac.uk](mailto:c.n.reed@qmul.ac.uk) </p>

## Building the Circuit
<p> I hope sometime in the near future to get some ready-made boards going for studies and performances - in the meantime, it is in-expensive and relatively easy to build the circuit yourself and try it out. The setup described here is for single muscle measurement; however, both of the ICs are dual-op amps and so can be easily used for a second muscle. You will need to gather a few parts^:</p>
- 1x [OPA1612](https://www.ti.com/product/OPA1612) <br>
- 1x [TL072](https://www.ti.com/product/TL072?keyMatch=TL072&tisearch=Search-EN-everything&usecase=GPN) <br>
- 3x [Surface cup electrodes](https://www.pulsemedical.co.uk/store/Gold-Reusable-10mm-EEG-Cup-Electrodes-Pack-of-10-Wire-150cm-p79620827)^^ (we use reusable gold-plated silver electrodes)
- 2x 9V batteries + straps
- Breadboard
- Jumper wires
- Microcontroller of choice or, in our case, a [**Bela**](bela.io)!
- Resistors^^^:
	- 1x 500 Ω
	- 2x 1K Ω
	- 3x 10K Ω
	- 1x 150k Ω
	- 3x 100K Ω
- Trimmers:
	- 1x 500 Ω
	- 1x 100K Ω
- Capacitors:
	- 1x 2 nF ceramic
	- 2x 10 uF tant
	- 1x 0.1 uF tant
- 2x IN4148 diodes

Eagle/KiCad schematics can be found in the folder *sensor-sch,* otherwise using the following schematic (v2.2):

*Some notes: *
^ Additionally (and especially if you use reusable electrodes), you will need to purchase some adhesive conductive paste (we recommend [Ten20](https://www.pulsemedical.co.uk/store/Ten20-Conductive-Paste-228g-jars-3-pack-10-20-8-p69723951)) and flexible non-woven fabric tape to help secure the electrodes (we use [Hypafix](https://www.bsnmedical.com/products/wound-care-vascular/category-product-search/acute-wound-care/fixation/hypafixr-transparent.html)).
^ the electrodes here use a DIN adaptor intended for use with medical EMG devices; cut these off and you can use either alligator clips to connect these, or solder a male pin to the end of the cable so you can use it in your breadboard.
^^ R1-R4 should ideally be precision resistors (that's 2x 10kΩ and 2x 100kΩ).

## Use with Bela 
We use a Bela for collection of voltages from the EMG, and so the code included here is also for Bela - it is fine to use another microcontroller, so long as you're ok with implementing some simple digital filtering. In this case, we use the analog inputs on Bela.

Bela handles some additional filtering of the EMG signal, including:
- DC offset removal (from the DC signal introduced in the voltage divider)
- Notch filtering to remove power line interference (**50Hz** UK - keep in mind if you need to change this wherever you are in the world!)

As well, our setup for studies includes:
- Output of text files containing voltages over time
- Setup for a button to be added so the vocalist can press during singing, helping with data/audio synchronisation
You can, of course, comment this out (and it's marked as such in the code).

## To-Do
There's a lot left to done, but at least for this repository, I'm planning on adding more information, including:
1) Step-by-step construction of the circuit
2) Walk-through of identifying laryngeal muscles (feel free to contact me and I will help you via Zoom/Skype if you'd like to learn to do this on yourself!)
3) Add example Supercollider interfacing for sonification of signals/fun
