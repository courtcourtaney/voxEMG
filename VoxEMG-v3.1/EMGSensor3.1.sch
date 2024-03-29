EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5F16B207
P 4777 3003
F 0 "#PWR0101" H 4777 2753 50  0001 C CNN
F 1 "GND" H 4782 2830 50  0000 C CNN
F 2 "" H 4777 3003 50  0001 C CNN
F 3 "" H 4777 3003 50  0001 C CNN
	1    4777 3003
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F1DCCC4
P 5575 3318
F 0 "R6" V 5470 3361 50  0000 R CNN
F 1 "100Ω" V 5662 3412 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5615 3308 50  0001 C CNN
F 3 "~" H 5575 3318 50  0001 C CNN
	1    5575 3318
	0    1    1    0   
$EndComp
Wire Wire Line
	5125 1818 5425 1818
$Comp
L Device:R_US R3
U 1 1 5F005405
P 5125 2068
F 0 "R3" V 5217 2131 50  0000 R CNN
F 1 "100kΩ" V 5032 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5165 2058 50  0001 C CNN
F 3 "~" H 5125 2068 50  0001 C CNN
	1    5125 2068
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F005AC6
P 5125 3018
F 0 "R4" V 5219 3016 50  0000 C CNN
F 1 "100kΩ" V 5029 3018 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5165 3008 50  0001 C CNN
F 3 "~" H 5125 3018 50  0001 C CNN
	1    5125 3018
	-1   0    0    1   
$EndComp
Wire Wire Line
	5125 2668 5125 2868
Wire Wire Line
	5125 3168 5125 3318
Wire Wire Line
	5125 3318 5425 3318
Wire Wire Line
	4975 2668 5125 2668
Wire Wire Line
	5125 2668 5275 2668
Connection ~ 5125 2668
Wire Wire Line
	5725 3318 5925 3318
Wire Wire Line
	4577 2318 4675 2318
Wire Wire Line
	4577 2668 4675 2668
Wire Wire Line
	5925 1818 5925 1968
Wire Wire Line
	5725 1818 5925 1818
$Comp
L power:GND #PWR0103
U 1 1 5F1C9F37
P 5925 1968
F 0 "#PWR0103" H 5925 1718 50  0001 C CNN
F 1 "GND" H 5930 1795 50  0000 C CNN
F 2 "" H 5925 1968 50  0001 C CNN
F 3 "" H 5925 1968 50  0001 C CNN
	1    5925 1968
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F175749
P 8476 3280
F 0 "#PWR0104" H 8476 3030 50  0001 C CNN
F 1 "GND" H 8481 3107 50  0000 C CNN
F 2 "" H 8476 3280 50  0001 C CNN
F 3 "" H 8476 3280 50  0001 C CNN
	1    8476 3280
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F021750
P 8628 3130
F 0 "C4" H 8436 3087 50  0000 R CNN
F 1 "0.1uF" H 8459 3181 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8666 2980 50  0001 C CNN
F 3 "~" H 8628 3130 50  0001 C CNN
	1    8628 3130
	-1   0    0    1   
$EndComp
Wire Wire Line
	5925 3318 5925 2568
Wire Wire Line
	5125 1918 5125 1818
Wire Wire Line
	5125 2468 5275 2468
Wire Wire Line
	5125 2318 5125 2218
Wire Wire Line
	5125 2318 5125 2468
Connection ~ 5125 2318
Wire Wire Line
	4975 2318 5125 2318
Wire Wire Line
	4577 3003 4777 3003
$Comp
L Device:R_US R1
U 1 1 5F005615
P 4825 2318
F 0 "R1" V 4725 2318 50  0000 C CNN
F 1 "10kΩ" V 4925 2318 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4865 2308 50  0001 C CNN
F 3 "~" H 4825 2318 50  0001 C CNN
	1    4825 2318
	0    1    1    0   
$EndComp
Connection ~ 5925 2568
$Comp
L Device:R_US R7
U 1 1 5F003DCE
P 6075 2568
F 0 "R7" V 5975 2568 50  0000 C CNN
F 1 "10kΩ" V 6175 2568 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6115 2558 50  0001 C CNN
F 3 "~" H 6075 2568 50  0001 C CNN
	1    6075 2568
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F005825
P 4825 2668
F 0 "R2" V 4725 2668 50  0000 C CNN
F 1 "10kΩ" V 4925 2668 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4865 2658 50  0001 C CNN
F 3 "~" H 4825 2668 50  0001 C CNN
	1    4825 2668
	0    1    1    0   
$EndComp
Text Notes 7382 7496 0    50   ~ 0
Vocal EMG Sensor (vs3.1) - dual muscle setup
Text Notes 8173 7635 0    50   ~ 0
7 May 2021\n
$Comp
L Amplifier_Operational:OPA1612AxD U1
U 2 1 607DD316
P 5613 4882
F 0 "U1" H 5667 4723 50  0000 C CNN
F 1 "OPA1612AID" H 5673 4635 50  0000 C CNN
F 2 "OPA1612AID:OPA1612AID" H 5613 4882 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 5613 4882 50  0001 C CNN
	2    5613 4882
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U1
U 3 1 607DF5AB
P 1742 2146
F 0 "U1" H 1700 2192 50  0000 L CNN
F 1 "OPA1612AID" H 1700 2101 50  0000 L CNN
F 2 "OPA1612AID:OPA1612AID" H 1742 2146 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 1742 2146 50  0001 C CNN
	3    1742 2146
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U2
U 3 1 607E7361
P 2501 2169
F 0 "U2" H 2459 2215 50  0000 L CNN
F 1 "OPA1612AID" H 2459 2124 50  0000 L CNN
F 2 "OPA1612AID:OPA1612AID" H 2501 2169 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 2501 2169 50  0001 C CNN
	3    2501 2169
	1    0    0    -1  
$EndComp
Text Label 4577 2318 2    50   ~ 0
End-Muscle-A
Text Label 4577 2668 2    50   ~ 0
Mid-Muscle-A
Text Label 4577 3003 2    50   ~ 0
Reference
Wire Wire Line
	8328 3280 8476 3280
$Comp
L Device:R_US R17
U 1 1 607F8A35
P 5613 5632
F 0 "R17" V 5508 5675 50  0000 R CNN
F 1 "100Ω" V 5700 5726 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5653 5622 50  0001 C CNN
F 3 "~" H 5613 5632 50  0001 C CNN
	1    5613 5632
	0    1    1    0   
$EndComp
Wire Wire Line
	5163 4132 5463 4132
Text GLabel 8281 4223 2    50   Input ~ 0
Out-B
$Comp
L Device:R_US R14
U 1 1 607F8A43
P 5163 4382
F 0 "R14" V 5255 4445 50  0000 R CNN
F 1 "100kΩ" V 5070 4509 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5203 4372 50  0001 C CNN
F 3 "~" H 5163 4382 50  0001 C CNN
	1    5163 4382
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R15
U 1 1 607F8A49
P 5163 5332
F 0 "R15" V 5257 5330 50  0000 C CNN
F 1 "100kΩ" V 5067 5332 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5203 5322 50  0001 C CNN
F 3 "~" H 5163 5332 50  0001 C CNN
	1    5163 5332
	-1   0    0    1   
$EndComp
Wire Wire Line
	5163 4982 5163 5182
Wire Wire Line
	5163 5482 5163 5632
Wire Wire Line
	5163 5632 5463 5632
Wire Wire Line
	5013 4982 5163 4982
Wire Wire Line
	5163 4982 5313 4982
Connection ~ 5163 4982
Wire Wire Line
	5763 5632 5963 5632
Wire Wire Line
	4615 4632 4713 4632
Wire Wire Line
	4615 4982 4713 4982
Wire Wire Line
	5963 4132 5963 4282
Wire Wire Line
	5763 4132 5963 4132
$Comp
L power:GND #PWR0113
U 1 1 607F8A60
P 5963 4282
F 0 "#PWR0113" H 5963 4032 50  0001 C CNN
F 1 "GND" H 5968 4109 50  0000 C CNN
F 2 "" H 5963 4282 50  0001 C CNN
F 3 "" H 5963 4282 50  0001 C CNN
	1    5963 4282
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 607F8A71
P 8402 5776
F 0 "#PWR0114" H 8402 5526 50  0001 C CNN
F 1 "GND" H 8407 5603 50  0000 C CNN
F 2 "" H 8402 5776 50  0001 C CNN
F 3 "" H 8402 5776 50  0001 C CNN
	1    8402 5776
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 607F8A77
P 8555 5626
F 0 "C8" H 8407 5589 50  0000 R CNN
F 1 "0.1uF" H 8438 5675 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8593 5476 50  0001 C CNN
F 3 "~" H 8555 5626 50  0001 C CNN
	1    8555 5626
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 607F8A7D
P 6409 4289
F 0 "#PWR0115" H 6409 4039 50  0001 C CNN
F 1 "GND" H 6414 4116 50  0000 C CNN
F 2 "" H 6409 4289 50  0001 C CNN
F 3 "" H 6409 4289 50  0001 C CNN
	1    6409 4289
	1    0    0    -1  
$EndComp
Wire Wire Line
	7587 4782 7637 4782
Wire Wire Line
	6488 5284 6288 5284
Wire Wire Line
	6288 5584 6288 5284
Wire Wire Line
	6488 5584 6288 5584
Wire Wire Line
	6988 5584 6788 5584
Wire Wire Line
	6988 5284 6988 5584
Wire Wire Line
	6988 5284 6788 5284
Connection ~ 6988 5284
Wire Wire Line
	6263 4882 6288 4882
Wire Wire Line
	5913 4882 5963 4882
Wire Wire Line
	5963 5632 5963 4882
Wire Wire Line
	5163 4232 5163 4132
Wire Wire Line
	5163 4782 5313 4782
Wire Wire Line
	5163 4632 5163 4532
Wire Wire Line
	5163 4632 5163 4782
Connection ~ 5163 4632
Wire Wire Line
	5013 4632 5163 4632
$Comp
L Device:R_US R19
U 1 1 607F8AAB
P 6638 5284
F 0 "R19" V 6538 5284 50  0000 C CNN
F 1 "150kΩ" V 6738 5284 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6678 5274 50  0001 C CNN
F 3 "~" H 6638 5284 50  0001 C CNN
	1    6638 5284
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 607F8AB1
P 6638 5584
F 0 "C5" V 6464 5583 50  0000 C CNN
F 1 "2.2nF" V 6372 5583 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6676 5434 50  0001 C CNN
F 3 "~" H 6638 5584 50  0001 C CNN
	1    6638 5584
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 607F8AB8
P 4863 4632
F 0 "R12" V 4763 4632 50  0000 C CNN
F 1 "10kΩ" V 4963 4632 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4903 4622 50  0001 C CNN
F 3 "~" H 4863 4632 50  0001 C CNN
	1    4863 4632
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 607F8ABE
P 7637 4582
F 0 "R21" V 7537 4482 50  0000 L CNN
F 1 "100kΩ" V 7737 4482 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7677 4572 50  0001 C CNN
F 3 "~" H 7637 4582 50  0001 C CNN
	1    7637 4582
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 607F8AD5
P 7437 4782
F 0 "R20" V 7629 4816 50  0000 C CNN
F 1 "1kΩ" V 7559 4830 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7477 4772 50  0001 C CNN
F 3 "~" H 7437 4782 50  0001 C CNN
	1    7437 4782
	0    -1   -1   0   
$EndComp
Connection ~ 5963 4882
$Comp
L Device:R_US R18
U 1 1 607F8AE4
P 6113 4882
F 0 "R18" V 6013 4882 50  0000 C CNN
F 1 "10kΩ" V 6213 4882 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6153 4872 50  0001 C CNN
F 3 "~" H 6113 4882 50  0001 C CNN
	1    6113 4882
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 607F8AEA
P 4863 4982
F 0 "R13" V 4763 4982 50  0000 C CNN
F 1 "10kΩ" V 4963 4982 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4903 4972 50  0001 C CNN
F 3 "~" H 4863 4982 50  0001 C CNN
	1    4863 4982
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 607F8AFC
P 7637 4332
F 0 "#PWR0116" H 7637 4182 50  0001 C CNN
F 1 "+3.3V" H 7652 4505 50  0000 C CNN
F 2 "" H 7637 4332 50  0001 C CNN
F 3 "" H 7637 4332 50  0001 C CNN
	1    7637 4332
	1    0    0    -1  
$EndComp
Text Label 4615 4982 2    50   ~ 0
Mid-Muscle-B
Wire Wire Line
	8255 5776 8402 5776
Wire Wire Line
	5875 2568 5925 2568
$Comp
L Amplifier_Operational:OPA1612AxD U1
U 1 1 607DADFF
P 5575 2568
F 0 "U1" H 5653 2393 50  0000 C CNN
F 1 "OPA1612AID" H 5639 2306 50  0000 C CNN
F 2 "OPA1612AID:OPA1612AID" H 5575 2568 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 5575 2568 50  0001 C CNN
	1    5575 2568
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U2
U 2 1 607E4C05
P 6613 4782
F 0 "U2" H 6796 5069 50  0000 C CNN
F 1 "OPA1612AID" H 6933 4983 50  0000 C CNN
F 2 "OPA1612AID:OPA1612AID" H 6613 4782 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 6613 4782 50  0001 C CNN
	2    6613 4782
	1    0    0    -1  
$EndComp
Text Label 3286 4152 2    50   ~ 0
End-Muscle-B
Text Label 3286 4052 2    50   ~ 0
Mid-Muscle-B
Text Label 2146 4143 2    50   ~ 0
End-Muscle-A
Text Label 2146 4043 2    50   ~ 0
Reference
$Comp
L Device:R_POT RV5
U 1 1 608FE739
P 5575 1818
F 0 "RV5" V 5368 1818 50  0000 C CNN
F 1 "500Ω" V 5459 1818 50  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314J_Vertical" H 5575 1818 50  0001 C CNN
F 3 "~" H 5575 1818 50  0001 C CNN
	1    5575 1818
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV16
U 1 1 60910A41
P 5613 4132
F 0 "RV16" V 5406 4132 50  0000 C CNN
F 1 "500Ω" V 5497 4132 50  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314J_Vertical" H 5613 4132 50  0001 C CNN
F 3 "~" H 5613 4132 50  0001 C CNN
	1    5613 4132
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV22
U 1 1 609111CB
P 7637 5032
F 0 "RV22" H 7568 5078 50  0000 R CNN
F 1 "100kΩ" H 7568 4987 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314J_Vertical" H 7637 5032 50  0001 C CNN
F 3 "~" H 7637 5032 50  0001 C CNN
	1    7637 5032
	1    0    0    -1  
$EndComp
Text Label 2146 4243 2    50   ~ 0
Mid-Muscle-A
$Comp
L power:GND #PWR0119
U 1 1 609599E9
P 5613 4282
F 0 "#PWR0119" H 5613 4032 50  0001 C CNN
F 1 "GND" H 5618 4109 50  0000 C CNN
F 2 "" H 5613 4282 50  0001 C CNN
F 3 "" H 5613 4282 50  0001 C CNN
	1    5613 4282
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6095A3F2
P 7787 5032
F 0 "#PWR0120" H 7787 4782 50  0001 C CNN
F 1 "GND" H 7787 4887 50  0000 C CNN
F 2 "" H 7787 5032 50  0001 C CNN
F 3 "" H 7787 5032 50  0001 C CNN
	1    7787 5032
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6095B84B
P 5575 1968
F 0 "#PWR0122" H 5575 1718 50  0001 C CNN
F 1 "GND" H 5580 1795 50  0000 C CNN
F 2 "" H 5575 1968 50  0001 C CNN
F 3 "" H 5575 1968 50  0001 C CNN
	1    5575 1968
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 6095BD89
P 2882 3081
F 0 "#FLG0104" H 2882 3156 50  0001 C CNN
F 1 "PWR_FLAG" H 2882 3254 50  0000 C CNN
F 2 "" H 2882 3081 50  0001 C CNN
F 3 "~" H 2882 3081 50  0001 C CNN
	1    2882 3081
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 6095C168
P 2882 3081
F 0 "#PWR0123" H 2882 2931 50  0001 C CNN
F 1 "+3.3V" H 2897 3254 50  0000 C CNN
F 2 "" H 2882 3081 50  0001 C CNN
F 3 "" H 2882 3081 50  0001 C CNN
	1    2882 3081
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607F1305
P 1652 3089
F 0 "#FLG0101" H 1652 3164 50  0001 C CNN
F 1 "PWR_FLAG" H 1652 3262 50  0000 C CNN
F 2 "" H 1652 3089 50  0001 C CNN
F 3 "~" H 1652 3089 50  0001 C CNN
	1    1652 3089
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 607EE3F1
P 1652 3089
F 0 "#PWR0106" H 1652 2839 50  0001 C CNN
F 1 "GND" H 1657 2916 50  0000 C CNN
F 2 "" H 1652 3089 50  0001 C CNN
F 3 "" H 1652 3089 50  0001 C CNN
	1    1652 3089
	1    0    0    -1  
$EndComp
Text Label 4615 4632 2    50   ~ 0
End-Muscle-B
$Comp
L power:+5V #PWR0108
U 1 1 6087F835
P 2069 3089
F 0 "#PWR0108" H 2069 2939 50  0001 C CNN
F 1 "+5V" H 2084 3262 50  0000 C CNN
F 2 "" H 2069 3089 50  0001 C CNN
F 3 "" H 2069 3089 50  0001 C CNN
	1    2069 3089
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR0109
U 1 1 608803F0
P 2476 3087
F 0 "#PWR0109" H 2476 3187 50  0001 C CNN
F 1 "-5V" H 2491 3260 50  0000 C CNN
F 2 "" H 2476 3087 50  0001 C CNN
F 3 "" H 2476 3087 50  0001 C CNN
	1    2476 3087
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 608812CB
P 2069 3089
F 0 "#FLG0102" H 2069 3164 50  0001 C CNN
F 1 "PWR_FLAG" H 2069 3262 50  0000 C CNN
F 2 "" H 2069 3089 50  0001 C CNN
F 3 "~" H 2069 3089 50  0001 C CNN
	1    2069 3089
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 6088190A
P 2476 3087
F 0 "#FLG0103" H 2476 3162 50  0001 C CNN
F 1 "PWR_FLAG" H 2476 3260 50  0000 C CNN
F 2 "" H 2476 3087 50  0001 C CNN
F 3 "~" H 2476 3087 50  0001 C CNN
	1    2476 3087
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0110
U 1 1 60883B92
P 2401 2469
F 0 "#PWR0110" H 2401 2569 50  0001 C CNN
F 1 "-5V" H 2416 2642 50  0000 C CNN
F 2 "" H 2401 2469 50  0001 C CNN
F 3 "" H 2401 2469 50  0001 C CNN
	1    2401 2469
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR0111
U 1 1 60883F86
P 1642 2446
F 0 "#PWR0111" H 1642 2546 50  0001 C CNN
F 1 "-5V" H 1657 2619 50  0000 C CNN
F 2 "" H 1642 2446 50  0001 C CNN
F 3 "" H 1642 2446 50  0001 C CNN
	1    1642 2446
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 60884344
P 1642 1846
F 0 "#PWR0117" H 1642 1696 50  0001 C CNN
F 1 "+5V" H 1657 2019 50  0000 C CNN
F 2 "" H 1642 1846 50  0001 C CNN
F 3 "" H 1642 1846 50  0001 C CNN
	1    1642 1846
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 60884B1D
P 2401 1869
F 0 "#PWR0118" H 2401 1719 50  0001 C CNN
F 1 "+5V" H 2416 2042 50  0000 C CNN
F 2 "" H 2401 1869 50  0001 C CNN
F 3 "" H 2401 1869 50  0001 C CNN
	1    2401 1869
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 608EEE64
P 7137 4782
F 0 "C6" V 7286 4782 50  0000 C CNN
F 1 "10uF" V 7359 4782 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7175 4632 50  0001 C CNN
F 3 "~" H 7137 4782 50  0001 C CNN
	1    7137 4782
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 608F3718
P 8255 5626
F 0 "C7" H 8414 5633 50  0000 C CNN
F 1 "10uF" H 8401 5719 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8293 5476 50  0001 C CNN
F 3 "~" H 8255 5626 50  0001 C CNN
	1    8255 5626
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 608FFBBC
P 8328 3130
F 0 "C3" H 8116 3162 50  0000 C CNN
F 1 "10uF" H 8103 3079 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8366 2980 50  0001 C CNN
F 3 "~" H 8328 3130 50  0001 C CNN
	1    8328 3130
	1    0    0    -1  
$EndComp
Connection ~ 8402 5776
Wire Wire Line
	8402 5776 8555 5776
Wire Wire Line
	8255 5476 8403 5476
$Comp
L power:-5V #PWR0129
U 1 1 6087C928
P 8403 5476
F 0 "#PWR0129" H 8403 5576 50  0001 C CNN
F 1 "-5V" H 8418 5649 50  0000 C CNN
F 2 "" H 8403 5476 50  0001 C CNN
F 3 "" H 8403 5476 50  0001 C CNN
	1    8403 5476
	1    0    0    -1  
$EndComp
Connection ~ 8403 5476
Wire Wire Line
	8403 5476 8555 5476
Connection ~ 8476 3280
Wire Wire Line
	8476 3280 8628 3280
Wire Wire Line
	8328 2980 8471 2980
$Comp
L power:+5V #PWR0130
U 1 1 6088D15F
P 8471 2980
F 0 "#PWR0130" H 8471 2830 50  0001 C CNN
F 1 "+5V" H 8486 3153 50  0000 C CNN
F 2 "" H 8471 2980 50  0001 C CNN
F 3 "" H 8471 2980 50  0001 C CNN
	1    8471 2980
	1    0    0    -1  
$EndComp
Connection ~ 8471 2980
Wire Wire Line
	8471 2980 8628 2980
$Comp
L power:+3.3V #PWR0124
U 1 1 608AA07F
P 3284 5025
F 0 "#PWR0124" H 3284 4875 50  0001 C CNN
F 1 "+3.3V" V 3282 5258 50  0000 C CNN
F 2 "" H 3284 5025 50  0001 C CNN
F 3 "" H 3284 5025 50  0001 C CNN
	1    3284 5025
	0    -1   -1   0   
$EndComp
Text GLabel 3284 5325 0    50   Input ~ 0
Out-B
$Comp
L power:GND #PWR0125
U 1 1 608AB354
P 3284 5125
F 0 "#PWR0125" H 3284 4875 50  0001 C CNN
F 1 "GND" V 3281 4921 50  0000 C CNN
F 2 "" H 3284 5125 50  0001 C CNN
F 3 "" H 3284 5125 50  0001 C CNN
	1    3284 5125
	0    1    1    0   
$EndComp
$Comp
L power:-5V #PWR0128
U 1 1 608AD426
P 2186 5208
F 0 "#PWR0128" H 2186 5308 50  0001 C CNN
F 1 "-5V" V 2184 5357 50  0000 L CNN
F 2 "" H 2186 5208 50  0001 C CNN
F 3 "" H 2186 5208 50  0001 C CNN
	1    2186 5208
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 608AC4E3
P 2186 5108
F 0 "#PWR0127" H 2186 4958 50  0001 C CNN
F 1 "+5V" V 2186 5253 50  0000 L CNN
F 2 "" H 2186 5108 50  0001 C CNN
F 3 "" H 2186 5108 50  0001 C CNN
	1    2186 5108
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 608ABAD7
P 2186 5008
F 0 "#PWR0126" H 2186 4758 50  0001 C CNN
F 1 "GND" V 2183 4802 50  0000 C CNN
F 2 "" H 2186 5008 50  0001 C CNN
F 3 "" H 2186 5008 50  0001 C CNN
	1    2186 5008
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 6089A3D8
P 2386 5108
F 0 "J3" H 2414 5088 50  0000 L CNN
F 1 "Conn_01x03_Female" H 2414 5043 50  0001 L CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 2386 5108 50  0001 C CNN
F 3 "~" H 2386 5108 50  0001 C CNN
	1    2386 5108
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 60899103
P 3484 5125
F 0 "J4" H 3512 5055 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3512 5010 50  0001 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 3484 5125 50  0001 C CNN
F 3 "~" H 3484 5125 50  0001 C CNN
	1    3484 5125
	1    0    0    -1  
$EndComp
Text GLabel 3284 5225 0    50   Input ~ 0
Out-A
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 6088F2F3
P 3486 4052
F 0 "J2" H 3514 4028 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3514 3937 50  0001 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 3486 4052 50  0001 C CNN
F 3 "~" H 3486 4052 50  0001 C CNN
	1    3486 4052
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 6088681D
P 2346 4143
F 0 "J1" H 2419 4142 50  0000 L CNN
F 1 "Conn_01x03_Female" H 2095 3837 50  0001 L CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 2346 4143 50  0001 C CNN
F 3 "~" H 2346 4143 50  0001 C CNN
	1    2346 4143
	1    0    0    -1  
$EndComp
Text Label 2151 4627 2    50   ~ 0
Reference
Text Label 2151 4527 2    50   ~ 0
End-Muscle-A
Text Label 2151 4427 2    50   ~ 0
Mid-Muscle-A
Text Label 3292 4532 2    50   ~ 0
Mid-Muscle-B
Text Label 3292 4432 2    50   ~ 0
End-Muscle-B
$Comp
L Connector:Conn_01x03_Female J1B1
U 1 1 6089DB74
P 2351 4527
F 0 "J1B1" H 2424 4526 50  0000 L CNN
F 1 "Conn_01x03_Female" H 2100 4221 50  0001 L CNN
F 2 "Connector:Thread_CastellationHoles_1x3" H 2351 4527 50  0001 C CNN
F 3 "~" H 2351 4527 50  0001 C CNN
	1    2351 4527
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2B1
U 1 1 6089E24A
P 3492 4432
F 0 "J2B1" H 3520 4408 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3520 4317 50  0001 L CNN
F 2 "Connector:Thread_CastellationHoles_1x2" H 3492 4432 50  0001 C CNN
F 3 "~" H 3492 4432 50  0001 C CNN
	1    3492 4432
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA1612AxD U2
U 1 1 607E2438
P 6575 2468
F 0 "U2" H 6694 2788 50  0000 C CNN
F 1 "OPA1612AID" H 6845 2696 50  0000 C CNN
F 2 "OPA1612AID:OPA1612AID" H 6575 2468 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa1612.pdf" H 6575 2468 50  0001 C CNN
	1    6575 2468
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 2568 6247 2568
$Comp
L Device:C C1
U 1 1 5F01FBE3
P 6597 3269
F 0 "C1" V 6456 3271 50  0000 C CNN
F 1 "2nF" V 6379 3267 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6635 3119 50  0001 C CNN
F 3 "~" H 6597 3269 50  0001 C CNN
	1    6597 3269
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F004A6F
P 6597 2969
F 0 "R8" V 6497 2969 50  0000 C CNN
F 1 "150kΩ" V 6697 2969 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6637 2959 50  0001 C CNN
F 3 "~" H 6597 2969 50  0001 C CNN
	1    6597 2969
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6947 2969 6747 2969
Wire Wire Line
	6947 3269 6747 3269
Wire Wire Line
	6447 3269 6247 3269
Wire Wire Line
	6247 3269 6247 2969
Wire Wire Line
	6447 2969 6247 2969
$Comp
L power:GND #PWR0105
U 1 1 5F16E85A
P 6375 1977
F 0 "#PWR0105" H 6375 1727 50  0001 C CNN
F 1 "GND" H 6380 1804 50  0000 C CNN
F 2 "" H 6375 1977 50  0001 C CNN
F 3 "" H 6375 1977 50  0001 C CNN
	1    6375 1977
	1    0    0    -1  
$EndComp
Wire Wire Line
	6247 2969 6247 2568
Connection ~ 6247 2969
Connection ~ 6247 2568
Wire Wire Line
	6247 2568 6275 2568
Wire Wire Line
	6875 2468 6947 2468
$Comp
L Device:C C2
U 1 1 608FB620
P 7097 2468
F 0 "C2" V 7242 2469 50  0000 C CNN
F 1 "10uF" V 7324 2469 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7135 2318 50  0001 C CNN
F 3 "~" H 7097 2468 50  0001 C CNN
	1    7097 2468
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6095AE6D
P 7747 2718
F 0 "#PWR0121" H 7747 2468 50  0001 C CNN
F 1 "GND" H 7749 2576 50  0000 C CNN
F 2 "" H 7747 2718 50  0001 C CNN
F 3 "" H 7747 2718 50  0001 C CNN
	1    7747 2718
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV11
U 1 1 608FFE67
P 7597 2718
F 0 "RV11" H 7528 2764 50  0000 R CNN
F 1 "100kΩ" H 7528 2673 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314J_Vertical" H 7597 2718 50  0001 C CNN
F 3 "~" H 7597 2718 50  0001 C CNN
	1    7597 2718
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 607EEE62
P 7597 2018
F 0 "#PWR0107" H 7597 1868 50  0001 C CNN
F 1 "+3.3V" H 7612 2191 50  0000 C CNN
F 2 "" H 7597 2018 50  0001 C CNN
F 3 "" H 7597 2018 50  0001 C CNN
	1    7597 2018
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5F02A158
P 7397 2468
F 0 "R9" V 7629 2510 50  0000 C CNN
F 1 "1kΩ" V 7547 2520 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7437 2458 50  0001 C CNN
F 3 "~" H 7397 2468 50  0001 C CNN
	1    7397 2468
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F004FE5
P 7597 2268
F 0 "R10" V 7497 2168 50  0000 L CNN
F 1 "100kΩ" V 7697 2168 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7637 2258 50  0001 C CNN
F 3 "~" H 7597 2268 50  0001 C CNN
	1    7597 2268
	1    0    0    -1  
$EndComp
Wire Wire Line
	7547 2468 7597 2468
Wire Wire Line
	7597 2468 7597 2568
Connection ~ 7597 2468
Wire Wire Line
	7597 2468 7597 2418
$Comp
L power:GND #PWR0102
U 1 1 5F4C7526
P 7597 2971
F 0 "#PWR0102" H 7597 2721 50  0001 C CNN
F 1 "GND" H 7602 2798 50  0000 C CNN
F 2 "" H 7597 2971 50  0001 C CNN
F 3 "" H 7597 2971 50  0001 C CNN
	1    7597 2971
	1    0    0    -1  
$EndComp
Text GLabel 8196 1938 2    50   Input ~ 0
Out-A
Wire Wire Line
	6947 2468 6947 2969
Connection ~ 6947 2969
Wire Wire Line
	6947 2969 6947 3269
Connection ~ 6947 2468
Wire Wire Line
	6275 2368 6195 2368
Wire Wire Line
	6195 2368 6195 1977
Wire Wire Line
	6195 1977 6375 1977
Wire Wire Line
	6288 5284 6288 4882
Connection ~ 6288 5284
Connection ~ 6288 4882
Wire Wire Line
	6288 4882 6313 4882
Wire Wire Line
	6313 4682 6191 4682
Wire Wire Line
	6191 4682 6191 4289
Wire Wire Line
	6191 4289 6409 4289
Wire Wire Line
	6913 4782 6987 4782
Wire Wire Line
	6988 4782 6988 5284
Connection ~ 6987 4782
Wire Wire Line
	6987 4782 6988 4782
Wire Wire Line
	7597 2468 7597 2471
Wire Wire Line
	7597 2468 7597 2467
Wire Wire Line
	7597 2018 7597 2066
Wire Wire Line
	7597 2914 8006 2914
Wire Wire Line
	8006 2914 8006 2768
Wire Wire Line
	7597 2868 7597 2914
Connection ~ 7597 2914
Wire Wire Line
	7597 2914 7597 2971
Wire Wire Line
	8006 2168 8006 2066
Connection ~ 7597 2066
Wire Wire Line
	7597 2066 7597 2118
$Comp
L Device:D_Schottky_x2_Serial_AKC D1
U 1 1 60959841
P 8006 2468
F 0 "D1" V 8111 2556 50  0000 L CNN
F 1 "D_Schottky_x2_Serial_AKC" V 8191 2555 50  0000 L CNN
F 2 "ul_BAS4004W:BAS40-04W" H 8006 2468 50  0001 C CNN
F 3 "~" H 8006 2468 50  0001 C CNN
	1    8006 2468
	0    1    -1   0   
$EndComp
Wire Wire Line
	7597 2468 7802 2468
$Comp
L Device:D_Schottky_x2_Serial_AKC D2
U 1 1 609ECD9B
P 8105 4782
F 0 "D2" V 8210 4870 50  0000 L CNN
F 1 "D_Schottky_x2_Serial_AKC" V 8290 4869 50  0000 L CNN
F 2 "ul_BAS4004W:BAS40-04W" H 8105 4782 50  0001 C CNN
F 3 "~" H 8105 4782 50  0001 C CNN
	1    8105 4782
	0    1    -1   0   
$EndComp
Wire Wire Line
	7637 4332 7637 4376
Wire Wire Line
	7637 5182 7637 5246
$Comp
L power:GND #PWR0112
U 1 1 60A0658E
P 7637 5285
F 0 "#PWR0112" H 7637 5035 50  0001 C CNN
F 1 "GND" H 7642 5112 50  0000 C CNN
F 2 "" H 7637 5285 50  0001 C CNN
F 3 "" H 7637 5285 50  0001 C CNN
	1    7637 5285
	1    0    0    -1  
$EndComp
Wire Wire Line
	7637 4732 7637 4782
Wire Wire Line
	7637 4782 7904 4782
Connection ~ 7637 4782
Wire Wire Line
	7637 4782 7637 4882
Wire Wire Line
	8105 4376 8105 4482
Connection ~ 7637 4376
Wire Wire Line
	7637 4376 7637 4432
Wire Wire Line
	7637 5246 8105 5246
Wire Wire Line
	8105 5246 8105 5082
Connection ~ 7637 5246
Wire Wire Line
	7637 5246 7637 5285
Wire Wire Line
	7802 1938 8196 1938
Connection ~ 7802 2468
Wire Wire Line
	7802 2468 7806 2468
NoConn ~ 7802 2066
Wire Wire Line
	7904 4223 8281 4223
Connection ~ 7904 4782
Wire Wire Line
	7904 4782 7905 4782
NoConn ~ 7904 4376
NoConn ~ 5296 6973
Wire Wire Line
	7597 2066 8006 2066
Wire Wire Line
	7802 1938 7802 2468
Wire Wire Line
	7637 4376 8105 4376
Wire Wire Line
	7904 4223 7904 4782
$EndSCHEMATC
