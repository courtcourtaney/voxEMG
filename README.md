
------------


# VoxEMG (v3.1)
(first presented at NIME 2020)

## About
<p>This repository contains information and all the editable project files for the VoxEMG project. VoxEMG is a pre-amplificaton circuit developed specifically for surface electromyography (sEMG) of the small extrinsic laryngeal muscles. <br>
	
The circuit implemented in a wearable collar is being used to explore the vocalist-voice relationship by visualizing and sonifying movement. The circuit was developed to detect and study the differences between vocalised and subvocalised vocal activaton and to relay information about the singer's body movements in a variety of executed and imagined performance activities.<br>

The schematics and PCB designs have been created in and are editable in [KiCad](http://kicad-pcb.org).

This is an ongoing body of work as part of my PhD, so please keep an eye out for updates, new implementations and improvements, and feel free to get in contact at any time regarding the project, what you're working on with it, and anything I can help with at: [c.n.reed@qmul.ac.uk](mailto:c.n.reed@qmul.ac.uk) </p><br>

## Licensing

<p><a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">VoxEMG</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Courtney N. Reed & Andrew P. McPherson</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>. <br>

In the spirit of open-access research, VoxEMG and the designs included here are are licensed under a Creative Commons Attribtion Sharealike license, or [CC-BY-SA](https://creativecommons.org/licenses/by-sa/3.0/). The information here is free to use and edit, so long as you provide credit and release your resulting work under the same license. This means you are free edit and use these designs, as long as you agree to supply credit and release your results under the same license. <br>

If you use these designs or reference them, please cite the following papers in your work: <br>

 Reed, C. N. and McPherson, A. P. <em>Surface Electromyography for Direct Vocal Control.</em> Proc. International Conference on New Interfaces for Musical Expression (NIME), July 21-25, Birmingham City University, pp. 458–463. Birmingham Conservatoire, Birmingham, UK. 2020. [[PDF]](https://qmro.qmul.ac.uk/xmlui/bitstream/handle/123456789/65364/Reed%20Surface%20Electromyography%20for%202020%20Published.pdf?sequence=2) [[Video]](https://www.youtube.com/watch?v=1nWLgQGNh0g&list=PLz8WNY_I2S5TI1nA-6xaeJksLJPhPpeNa&index=5&t=0s0) <br>

 Reed, C. N. and McPherson, A. P. <em> Surface Electromyography for Sensing Performance Intention and Musical Imagery in Vocalists.</em> In Fifteenth International Conference on Tangible, Embedded, and Embodied Interaction (TEI’21), February 14–19, Salzburg, Austria. ACM, New York, NY, USA, 11 pages. 2021. [DOI: 10.1145/3430524.3440641](https://dl.acm.org/doi/10.1145/3430524.3440641) [[Video]](https://www.youtube.com/watch?v=XujlMjoBG04&list=PLqhXYFYmZ-VeRef4QbMrBzl3NIj6HhStb&index=31&ab_channel=ACMSIGCHI)<br>

If you want to create a commercial product using the VoxEMG hardware designs and don't want to release it under the same license, you will need a commercial license. Please email me at [c.n.reed@qmul.ac.uk](mailto:c.n.reed@qmul.ac.uk) to enquire further. </p>

## Building the Circuit
<p> If you are interested in getting a VoxEMG board, get in contact - I'm happy to help with any sEMG and vocal projects related projects and I can supply PCBs depending on the project. If you wish to make your own board, it is relatively in-expensive and easy to build the circuit yourself and try it out. A Bill of Materials (BOM) can be found in *VoxEMG-v3.1/EMGSensor3.1_bom.xlsx* or listed out below. The setup described here is for single-circuit dual muscle measurement; if you wish to only measure one muscle, you need only use one side of the ICs: </p> <br>

Parts^

* 2x [OPA1612](https://www.ti.com/product/OPA1612) <br>
* 5x [Surface cup electrodes](https://www.pulsemedical.co.uk/store/Gold-Reusable-10mm-EEG-Cup-Electrodes-Pack-of-10-Wire-150cm-p79620827)^^ (we use reusable gold-plated silver electrodes) <br>
* 2x 9V batteries + straps <br>
* Breadboard <br>
* Jumper wires <br>
* Microcontroller of choice or, in our case, a [**Bela**](bela.io)! <br>
* Resistors: <br>
	* 4x 10k Ω 0.1% precison <br>
	* 4x 100k Ω 0.1% precison <br>
	* 2x 100 Ω <br>
	* 2x 1k Ω <br>
	* 6x 10k Ω <br>
	* 2x 100k Ω <br>
	* 2x 150k Ω <br>
* Trimpots/Variable Resistors:<br>
	* 2x 500 Ω <br>
	* 2x 100K Ω <br>
* Capacitors:<br>
	* 1x 0.1 uF ceramic <br>
	* 4x 10 uF ceramic <br>
	* 2x 2.2 nF ceramic <br>
* 2x Schottky 40V 120mA diodes <br><br>

The KiCad project containing the VoxEMG schematics and board layout can be found in the folder *VoxEMG-v3.1,* otherwise using the following schematic (v3.1). This schematic depicts use of one side of the ICs - for the second muscle, the connections should be duplicated on the other side. See *VoxEMG-v3.1/EMGSensor3.1.sch* for the full schematic. <br>

<p align="center">
<img src="https://github.com/courtcourtaney/voxEMG/blob/master/pics/sch.png" width="700"/>
</p>

*Some notes:* <br>
^ Additionally (and especially if you use reusable electrodes), you will need to purchase some adhesive conductive paste (we recommend [Ten20](https://www.pulsemedical.co.uk/store/Ten20-Conductive-Paste-228g-jars-3-pack-10-20-8-p69723951)) and flexible non-woven fabric tape to help secure the electrodes (we use [Hypafix](https://www.bsnmedical.com/products/wound-care-vascular/category-product-search/acute-wound-care/fixation/hypafixr-transparent.html)).<br>
^^ the electrodes here use a DIN adaptor intended for use with medical EMG devices; cut these off and you can use either alligator clips to connect these, or solder a male pin to the end of the cable so you can use it in a breadboard.<br>

                           |  
:-------------------------:|:-------------------------:
![VoxEMG PCB layout](https://github.com/courtcourtaney/voxEMG/blob/master/pics/PCB.png)  |  ![VoxEMG board](https://github.com/courtcourtaney/voxEMG/blob/master/pics/3Drender.png)

## Example Use
Electrodes will need to be affixed to the muscle site, for instance on the suprahyoid digastric muscle here. The VoxEMG board contains both input header pins and castellated holes (designed by Adan Benito and Becky Stewart for the [Bela E-textile Capelet](https://oshpark.com/shared_projects/y0oSowUt) on Innovate UK) for electrode connections. <br>

<p align="center">
<img src="https://github.com/courtcourtaney/voxEMG/blob/master/pics/electrode-place-2.JPG" width="700"/>
</p>

We use a Bela for collection of voltages from the EMG, and so the code included here is also for Bela - it is fine to use another microcontroller, so long as you're ok with implementing some simple digital filtering. In this case, we use the analog inputs on Bela.<br>

Bela handles some additional filtering of the EMG signal, including:<br>
- DC offset removal (from the DC signal introduced in the voltage divider)<br>
- Notch filtering to remove power line interference (**50Hz** UK - keep in mind if you need to change this wherever you are in the world!)<br>

As well, our setup for studies includes:<br>
- Text file output containing voltages over time<br>
- Setup for a button to be added so the vocalist can press during singing, helping with data/audio synchronisation<br>
You can, of course, comment this out (and it's marked as such in the code).

## To-Do List
There's a lot left to done, but at least for this repository, I'm planning on adding more information, including:<br>
- [x] Include editable schematics and PCB design<br>
- [ ] Step-by-step construction of the circuit<br>
- [ ] Walk-through of identifying laryngeal muscles <br>(feel free to contact me and I will help you via Zoom/Skype if you'd like to learn to do this on yourself!)<br>
- [ ] Add example Supercollider interfacing for sonification of signals/fun<br>
