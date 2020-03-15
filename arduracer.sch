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
L Transistor_BJT:BC547 Q1
U 1 1 5E6A39E7
P 7400 3950
F 0 "Q1" H 7591 3996 50  0000 L CNN
F 1 "BC547" H 7591 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7600 3875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7400 3950 50  0001 L CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_ECB Q2
U 1 1 5E6A43EC
P 8150 3450
F 0 "Q2" H 8340 3496 50  0000 L CNN
F 1 "BD677" H 8340 3405 50  0000 L CNN
F 2 "" H 8350 3550 50  0001 C CNN
F 3 "~" H 8150 3450 50  0001 C CNN
	1    8150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E6A50BF
P 7500 3050
F 0 "R2" H 7570 3096 50  0000 L CNN
F 1 "1k" H 7570 3005 50  0000 L CNN
F 2 "" V 7430 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E6A5A27
P 6900 3950
F 0 "R1" V 6693 3950 50  0000 C CNN
F 1 "10k" V 6784 3950 50  0000 C CNN
F 2 "" V 6830 3950 50  0001 C CNN
F 3 "~" H 6900 3950 50  0001 C CNN
	1    6900 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3200 7500 3450
Wire Wire Line
	7950 3450 7500 3450
Connection ~ 7500 3450
Wire Wire Line
	7500 3450 7500 3750
Wire Wire Line
	7500 4150 7500 4500
Wire Wire Line
	7500 4500 9050 4500
Wire Wire Line
	8250 3650 8250 4050
Wire Wire Line
	8250 4050 9050 4050
Wire Wire Line
	7500 2900 7500 2650
Wire Wire Line
	8250 3250 8250 2650
Wire Wire Line
	8250 2650 7500 2650
$Comp
L power:GND #PWR?
U 1 1 5E6A6A57
P 7500 4600
F 0 "#PWR?" H 7500 4350 50  0001 C CNN
F 1 "GND" H 7505 4427 50  0000 C CNN
F 2 "" H 7500 4600 50  0001 C CNN
F 3 "" H 7500 4600 50  0001 C CNN
	1    7500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4600 7500 4500
Connection ~ 7500 4500
$Comp
L power:+VDC #PWR?
U 1 1 5E6A71CA
P 7500 2400
F 0 "#PWR?" H 7500 2300 50  0001 C CNN
F 1 "+VDC" H 7500 2675 50  0000 C CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2400 7500 2650
Connection ~ 7500 2650
Wire Wire Line
	7050 3950 7200 3950
Wire Wire Line
	6750 3950 6250 3950
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5E6E507C
P 5350 3950
F 0 "A?" H 5200 2950 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 5350 3950 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5350 3950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3950 4550 3950
Wire Wire Line
	4550 3950 4550 5100
Wire Wire Line
	4550 5100 6250 5100
Wire Wire Line
	6250 5100 6250 3950
Text GLabel 9050 4050 2    50   Input ~ 0
Track+
Text GLabel 9050 4500 2    50   Input ~ 0
Track-
$Comp
L Sensor_Magnetic:A1104LLHL U?
U 1 1 5E6EC9E8
P 2850 3650
F 0 "U?" V 2600 3950 50  0000 R CNN
F 1 "A1104LLHL" V 2600 3750 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 3300 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 2850 4300 50  0001 C CNN
	1    2850 3650
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Magnetic:A1104LLHL U?
U 1 1 5E6ED366
P 2850 2900
F 0 "U?" V 2600 3200 50  0000 R CNN
F 1 "A1104LLHL" V 2600 3000 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 2550 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 2850 3550 50  0001 C CNN
	1    2850 2900
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Magnetic:A1104LLHL U?
U 1 1 5E6EDDCF
P 2850 2150
F 0 "U?" V 2600 2450 50  0000 R CNN
F 1 "A1104LLHL" V 2600 2250 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 1800 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 2850 2800 50  0001 C CNN
	1    2850 2150
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Magnetic:A1104LLHL U?
U 1 1 5E6EE27E
P 2850 4350
F 0 "U?" V 2600 4650 50  0000 R CNN
F 1 "A1104LLHL" V 2600 4450 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 4000 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 2850 5000 50  0001 C CNN
	1    2850 4350
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Magnetic:A1104LLHL U?
U 1 1 5E6EE61F
P 2850 5150
F 0 "U?" V 2600 5450 50  0000 R CNN
F 1 "A1104LLHL" V 2600 5250 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 4800 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 2850 5800 50  0001 C CNN
	1    2850 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 2250 2450 3000
Connection ~ 2450 3000
Wire Wire Line
	2450 3000 2450 3750
Wire Wire Line
	3250 2250 3250 3000
Connection ~ 3250 3000
Wire Wire Line
	3250 3000 3250 3750
Connection ~ 2450 3750
Connection ~ 3250 3750
Connection ~ 2450 4450
Connection ~ 3250 5250
Wire Wire Line
	3250 5250 3250 5500
Wire Wire Line
	2450 3750 2450 4450
Wire Wire Line
	2450 4450 2450 5250
Wire Wire Line
	3250 3750 3250 4450
Connection ~ 3250 4450
Wire Wire Line
	3250 4450 3250 5250
Wire Wire Line
	2850 1850 4400 1850
Wire Wire Line
	4400 4150 4850 4150
Wire Wire Line
	4400 1850 4400 4150
Wire Wire Line
	2850 2600 4350 2600
Wire Wire Line
	4350 2600 4350 4250
Wire Wire Line
	4350 4250 4850 4250
Wire Wire Line
	2850 3350 4300 3350
Wire Wire Line
	4300 3350 4300 4350
Wire Wire Line
	4300 4350 4850 4350
Wire Wire Line
	2850 4050 4250 4050
Wire Wire Line
	4250 4050 4250 4450
Wire Wire Line
	4250 4450 4850 4450
Wire Wire Line
	2850 4850 4250 4850
Wire Wire Line
	4250 4850 4250 4550
Wire Wire Line
	4250 4550 4850 4550
$Comp
L power:GND #PWR?
U 1 1 5E6FC4EE
P 3250 5500
F 0 "#PWR?" H 3250 5250 50  0001 C CNN
F 1 "GND" H 3255 5327 50  0000 C CNN
F 2 "" H 3250 5500 50  0001 C CNN
F 3 "" H 3250 5500 50  0001 C CNN
	1    3250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5550 1750
Wire Wire Line
	5550 1750 2450 1750
Wire Wire Line
	2450 1750 2450 2250
Connection ~ 2450 2250
Wire Wire Line
	5250 2950 5250 2650
Wire Wire Line
	5250 2650 7500 2650
Wire Wire Line
	5350 4950 5450 4950
Wire Wire Line
	3250 5250 5350 5250
Wire Wire Line
	5350 5250 5350 4950
Connection ~ 5350 4950
$EndSCHEMATC
