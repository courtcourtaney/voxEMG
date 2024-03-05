
------------


# VoxEMG (v3.1)

## About
<p>This repository contains information and all the editable project files for the VoxEMG project. VoxEMG is a pre-amplificaton circuit developed specifically for surface electromyography (sEMG) of the small extrinsic laryngeal muscles, but can be used on other muscles. <br>
	
The VoxEMG circuit is an extension of the open-source [EMG Circuit v7.1 (Advancer Technologies)](advancertechnologies.com/p/muscle-sensor-emg-circuitkit-bronze.html), from which other EMG platforms such as the Myoware are derived. VoxEMG is specifically aimed to detect activation of the extrinsic laryngeal muscles in both vocalised and subvocalised singing. High-precision and trimmable resistors are used to ensure noise reduction and the circuit is flexible to be used with different types of electrodes for desired implementation. The EMG signals can then be used in a variety of manners, for instance to relay feedback about the singer's movements during practice. <br>

This is an ongoing body of work with origins in my PhD thesis, [Imagining & Sensing: Understanding and Extending the Vocalist-Voice Relationship Through Biosignal Feedback](https://www.courtneynreed.com/assets/pdf/Reed_PhD_ImaginingSensing.pdf), which contains details on how the circuit and sonified EMG biofeedback has been used in vocal practice. I am always adding more information and designs, so please keep an eye out for updates, new implementations and improvements, and feel free to get in contact at any time regarding the project, what you're working on with it, and anything I can help with at: [c.n.reed@lboro.ac.uk](mailto:c.n.reed@lboro.ac.uk) </p><br>

## Versions

### v3.1 - eTextile Configuration
<p>The current version's (v3.1) configuration of the circuit is designed for implementations in wearables, featuring mounting loops in the PCB for securing the board to textile structures and castellated inputs (designed by Adan Benito and Becky Stewart for the [Bela E-textile Capelet](https://oshpark.com/shared_projects/y0oSowUt) on Innovate UK), for conductive thread inputs. </p><br>

### v3.1.2 - Bela Mini Capelette
<p>The latest PCB design (v3.1.2) features the same circuit implemented to be compatible with the Bela Mini embedded audio platforms. This setup is designed to be plug and play, with EMG being received directly on the A0 and A1 analogue inputs of the Bela Mini, and uses similar Molex connectors for electrode inputs. </p><br>

<p>The schematics and PCB designs have been created in and are editable in [KiCad](http://kicad-pcb.org). Please feel free to adapt them to your needs and share your designs with me if you like!</p><br>

<p align="center">
<img src="https://github.com/courtcourtaney/voxEMG/blob/master/pics/voxEMG-labeled.png" width="700"/>
</p>

## Building the Circuit
<p> If you are interested in getting a VoxEMG board, get in contact - I'm happy to help with any sEMG and vocal projects related projects and I can supply PCBs depending on the project. If you wish to make your own board, it is relatively in-expensive and easy to build the circuit yourself and try it out. A Bill of Materials (BOM) can be found in each version's folder in the file *EMGSensor3.1_bom.xlsx* or listed out below. The setup described here is for single-circuit dual muscle measurement; if you wish to only measure one muscle, you need only use one side of the ICs: </p> <br>

Parts[^1]

* 2x [Texas Instruments OPA1612 op amp](https://www.ti.com/product/OPA1612) <br>
* 5x [Surface cup electrodes](https://www.pulsemedical.co.uk/store/Gold-Reusable-10mm-EEG-Cup-Electrodes-Pack-of-10-Wire-150cm-p79620827)[^2] <br>
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

<p>The KiCad project containing the VoxEMG schematics and board layout can be found in the folder for each version *VoxEMG-v3.1,* for the textile-integrated board or *VoxEMG-v3.1.2,* for the Bela Mini capelette, otherwise using the following schematic (v3.1). This schematic depicts use of one side of the ICs - for the second muscle, the connections should be duplicated on the other side. See *VoxEMG-v3.1/EMGSensor3.1.sch* for the full schematic. </p><br>

<p align="center">
<img src="https://github.com/courtcourtaney/voxEMG/blob/master/pics/sch.png" width="700"/>
</p>

<!-- *Some notes:* <br> -->
[^1]: Additionally (and especially if you use reusable electrodes), you will need to purchase some adhesive conductive paste (we recommend [Ten20](https://www.pulsemedical.co.uk/store/Ten20-Conductive-Paste-228g-jars-3-pack-10-20-8-p69723951)) and flexible non-woven fabric tape to help secure the electrodes (we use [Hypafix](https://www.bsnmedical.com/products/wound-care-vascular/category-product-search/acute-wound-care/fixation/hypafixr-transparent.html)).

[^2]: These reusable gold-plated silver electrodes use a DIN adaptor intended for use with medical EMG devices; cut these off and you can use either alligator clips to connect these, or solder a male pin to the end of the cable so you can use it in a breadboard or within another cable assembly, such as the Molex connectors implemented in v3.1.2.

<!-- VoxEMG PCB layout          | VoxEMG board
:-------------------------:|:-------------------------:
![](https://github.com/courtcourtaney/voxEMG/blob/master/pics/PCB.png)  |  ![](https://github.com/courtcourtaney/voxEMG/blob/master/pics/3Drender.png) -->

## Example Use
<p>Electrodes will need to be affixed to the muscle site, for instance on the suprahyoid digastric muscle here. The VoxEMG board contains both input header pins and castellated holes (designed by Adan Benito and Becky Stewart for the [Bela E-textile Capelet](https://oshpark.com/shared_projects/y0oSowUt) on Innovate UK) for electrode connections. </p><br>

<p align="center">
<img src="https://github.com/courtcourtaney/voxEMG/blob/master/pics/electrode-place-2.JPG" width="700"/>
</p>

<p>
We use a Bela for collection of voltages from the EMG, and so the code included here is also for Bela - it is fine to use another microcontroller, so long as you're ok with implementing some simple digital filtering. In this case, we use the analog inputs on Bela.</p><br>

Bela handles some additional filtering of the EMG signal, including:<br>
- DC offset removal (from the DC signal introduced in the voltage divider)<br>
- Notch filtering to remove power line interference (**50Hz** UK - keep in mind if you need to change this wherever you are in the world!)<br>

As well, our setup for studies includes:<br>
- Text file output containing voltages over time<br>
- Setup for a button to be added so the vocalist can press during singing, helping with data/audio synchronisation<br>
You can, of course, comment this out (and it's marked as such in the code).

## Projects Using the VoxEMG

<p>If you have used the circuit or designs for your project, please let us know so we can add you here!</p>

### Vocal Performances & Collaborations
<span style="font-size:2em;"> 
[<em>To Fly Out in the Heat of Day</em>](https://loubarnell.co.uk/TO-FLY-OUT-IN-THE-HEAT-OF-DAY). Lou Barnell. 2023-2024. Performed in the UK & EU ([Based in Sheffield](https://www.theatredeli.co.uk/Event/enddateto-fly-out-in-the-heat-of-the-day)).

</span>

### Research Work & Papers
<span style="font-size:2em;"> 

Courtney N. Reed and Andrew P. McPherson. 2023. <em>The Body as Sound: Unpacking Vocal Embodiment through Auditory Biofeedback.</em> In Proceedings of the Seventeenth International Conference on Tangible, Embedded, and Embodied Interaction (TEI '23). Association for Computing Machinery, New York, NY, USA, Article 7, 1–15. https://doi.org/10.1145/3569009.3572738 [[PDF]](https://www.courtneynreed.com/assets/pdf/Reed_TEI23_BodyAsSound.pdf) <br>

Courtney N. Reed, Sophie Skach, Paul Strohmeier, and Andrew P. McPherson. 2022. <em>Singing Knit: Soft Knit Biosensing for Augmenting Vocal Performances.</em> In Proceedings of the Augmented Humans International Conference 2022 (AHs '22). Association for Computing Machinery, New York, NY, USA, 170–183. https://doi.org/10.1145/3519391.3519412 [[PDF]](https://www.courtneynreed.com/assets/pdf/Reed_AHs22_SingingKnit.pdf) <br>

Courtney N. Reed and Andrew P. McPherson. 2021. <em>Surface Electromyography for Sensing Performance Intention and Musical Imagery in Vocalists.</em> In Proceedings of the Fifteenth International Conference on Tangible, Embedded, and Embodied Interaction (TEI '21). Association for Computing Machinery, New York, NY, USA, Article 22, 1–11. https://doi.org/10.1145/3430524.3440641 [[PDF]](https://www.courtneynreed.com/assets/pdf/Reed_TEI21_sEMGPerformance.pdf) <br>

Courtney N. Reed and Andrew P. McPherson. 2020. <em>Surface Electromyography for Direct Vocal Control.</em> In Proceedings of the International Conference on New Interfaces for Musical Expression (NIME), July 21-25, Birmingham, UK, pp. 458–463. Birmingham Conservatoire, Birmingham, UK. https://doi.org/10.5281/zenodo.4813475 [[PDF]](https://www.courtneynreed.com/assets/pdf/Reed_NIME20_VocalsEMG.pdf) <br>
	
</span>

<br>

## Licensing
<br>
<p><a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">VoxEMG</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Courtney N. Reed & Andrew P. McPherson</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>. <br>

In the spirit of open-access research, VoxEMG and the circuit/PBC designs included here are are licensed under a Creative Commons Attribtion Sharealike license, or [CC-BY-SA](https://creativecommons.org/licenses/by-sa/3.0/). The information here is free to use and edit, so long as you provide credit and release your resulting work under the same license. This means you are free to edit and use these designs, as long as you agree to supply credit and release your results under the same license. <br>

If you use these designs or reference them, we ask that you please also cite the following papers in your work: <br>

If you want to create a commercial product using the VoxEMG hardware designs and don't want to release it under the same license, you will need a commercial license. Please email me at [c.n.reed@lboro.ac.uk](mailto:c.n.reed@lboro.ac.uk) to enquire further. </p>

```latex
@inproceedings{Reed_AHs22_SingingKnit,
  title = {{Singing Knit: Soft Knit Biosensing for Augmenting Vocal Performances}},
  author = {Reed, Courtney N. and Skach, Sophie and Strohmeier, Paul and McPherson, Andrew P.},
  year = {2022},
  month = mar,
  booktitle = {{Proceedings of the Augmented Humans International Conference 2022}},
  location = {Kashiwa, Chiba, Japan},
  publisher = {Association for Computing Machinery},
  address = {New York, NY, USA},
  series = {AHs '22},
  pages = {170–183},
  doi = {10.1145/3519391.3519412},
  isbn = {9781450396325},
  url = {https://doi.org/10.1145/3519391.3519412},
  numpages = {14},
  keywords = {wearables, Design, singing, music performance, knit, electromyography, fabric sensors, biosignals},
}
```

```latex
@inproceedings{Reed_NIME20_VocalsEMG,
  title = {{Surface Electromyography for Direct Vocal Control}},
  author = {Reed, Courtney N. and McPherson, Andrew},
  year = {2020},
  month = jul,
  booktitle = {{Proceedings of the International Conference on New Interfaces for Musical Expression}},
  publisher = {Birmingham City University},
  address = {Birmingham, UK},
  pages = {458--463},
  doi = {10.5281/zenodo.4813475},
  issn = {2220-4806},
  url = {https://www.nime.org/proceedings/2020/nime2020_paper88.pdf},
  editor = {Michon, Romain and Schroeder, Franziska},
  presentation-video = {https://youtu.be/1nWLgQGNh0g},
}
```

<!-- 
## To-Do List
There's a lot left to done, but at least for this repository, I'm planning on adding more information, including:<br>
- [x] Include editable schematics and PCB design<br>
- [ ] Step-by-step construction of the circuit<br>
- [ ] Walk-through of identifying laryngeal muscles <br>(feel free to contact me and I will help you via Zoom/Skype if you'd like to learn to do this on yourself!)<br>
- [ ] Add example Supercollider interfacing for sonification of signals/fun<br> -->
