EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
EELAYER 25 0
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
L ESP-12E U1
U 1 1 577C30FB
P 5700 3500
F 0 "U1" H 5700 3400 50  0000 C CNN
F 1 "ESP-12E" H 5700 3600 50  0000 C CNN
F 2 "" H 5700 3500 50  0001 C CNN
F 3 "http://www.es.co.th/Schemetic/PDF/ESP-12E-EN.PDF" H 5700 3500 50  0001 C CNN
	1    5700 3500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C335D
P 4400 3850
F 0 "#PWR?" H 4400 3700 50  0001 C CNN
F 1 "+3.3V" H 4400 3990 50  0000 C CNN
F 2 "" H 4400 3850 50  0000 C CNN
F 3 "" H 4400 3850 50  0000 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 577C3373
P 7000 4250
F 0 "#PWR?" H 7000 4000 50  0001 C CNN
F 1 "GND" H 7000 4100 50  0000 C CNN
F 2 "" H 7000 4250 50  0000 C CNN
F 3 "" H 7000 4250 50  0000 C CNN
	1    7000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3850 4400 3900
Wire Wire Line
	4400 3900 4800 3900
Wire Wire Line
	6600 3900 6800 3900
Wire Wire Line
	6800 3900 6800 4250
$Comp
L R R1
U 1 1 577C357F
P 6950 2850
F 0 "R1" V 7030 2850 50  0000 C CNN
F 1 "10K" V 6950 2850 50  0000 C CNN
F 2 "" V 6880 2850 50  0000 C CNN
F 3 "" H 6950 2850 50  0000 C CNN
	1    6950 2850
	-1   0    0    1   
$EndComp
Text Notes 6950 5400 0    60   ~ 0
ESP8266 Notes:\nOn every boot/reset/wakeup,\nGPIO15 MUST keep LOW, GPIO2 MUST keep HIGH.\nGPIO0 HIGH ->RUN MODE, LOW -> FLASH MODE.\nWhen you need to use the sleep mode,GPIO16 and RST should be connected,\nand GPIO16 will output LOW to reset the system at the time of wakeup.\n
Text GLabel 10100 3400 0    60   Input ~ 0
LEDR
Text GLabel 10100 3550 0    60   Input ~ 0
LEDG
Text GLabel 10100 3700 0    60   Input ~ 0
LEDB
Text GLabel 10350 3900 0    60   Input ~ 0
StepperYaw_A
Text GLabel 10350 4300 0    60   Input ~ 0
StepperPitch_A
Text GLabel 10350 4050 0    60   Input ~ 0
StepperYaw_B
Text GLabel 10350 4450 0    60   Input ~ 0
StepperPitch_B
$Comp
L R R2
U 1 1 577C37CA
P 8050 3550
F 0 "R2" V 8130 3550 50  0000 C CNN
F 1 "10K" V 8050 3550 50  0000 C CNN
F 2 "" V 7980 3550 50  0000 C CNN
F 3 "" H 8050 3550 50  0000 C CNN
	1    8050 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 3600 6600 3600
Wire Wire Line
	6600 3700 8050 3700
$Comp
L R R3
U 1 1 577C398C
P 3250 3250
F 0 "R3" V 3330 3250 50  0000 C CNN
F 1 "10K" V 3250 3250 50  0000 C CNN
F 2 "" V 3180 3250 50  0000 C CNN
F 3 "" H 3250 3250 50  0000 C CNN
	1    3250 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3400 4800 3400
$Comp
L R R4
U 1 1 577C3AB1
P 4700 2650
F 0 "R4" V 4780 2650 50  0000 C CNN
F 1 "10K" V 4700 2650 50  0000 C CNN
F 2 "" V 4630 2650 50  0000 C CNN
F 3 "" H 4700 2650 50  0000 C CNN
	1    4700 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 3200 4800 3200
$Comp
L R R5
U 1 1 577C3B8F
P 7000 3950
F 0 "R5" V 7080 3950 50  0000 C CNN
F 1 "10K" V 7000 3950 50  0000 C CNN
F 2 "" V 6930 3950 50  0000 C CNN
F 3 "" H 7000 3950 50  0000 C CNN
	1    7000 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4100 7000 4250
Wire Wire Line
	7000 3800 6600 3800
$Comp
L GND #PWR?
U 1 1 577C3D59
P 6800 4250
F 0 "#PWR?" H 6800 4000 50  0001 C CNN
F 1 "GND" H 6800 4100 50  0000 C CNN
F 2 "" H 6800 4250 50  0000 C CNN
F 3 "" H 6800 4250 50  0000 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C3EE4
P 3250 3100
F 0 "#PWR?" H 3250 2950 50  0001 C CNN
F 1 "+3.3V" H 3250 3240 50  0000 C CNN
F 2 "" H 3250 3100 50  0000 C CNN
F 3 "" H 3250 3100 50  0000 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C3F01
P 4700 2500
F 0 "#PWR?" H 4700 2350 50  0001 C CNN
F 1 "+3.3V" H 4700 2640 50  0000 C CNN
F 2 "" H 4700 2500 50  0000 C CNN
F 3 "" H 4700 2500 50  0000 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C3F24
P 6950 2700
F 0 "#PWR?" H 6950 2550 50  0001 C CNN
F 1 "+3.3V" H 6950 2840 50  0000 C CNN
F 2 "" H 6950 2700 50  0000 C CNN
F 3 "" H 6950 2700 50  0000 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C3F41
P 8050 3400
F 0 "#PWR?" H 8050 3250 50  0001 C CNN
F 1 "+3.3V" H 8050 3540 50  0000 C CNN
F 2 "" H 8050 3400 50  0000 C CNN
F 3 "" H 8050 3400 50  0000 C CNN
	1    8050 3400
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 577C3FA8
P 3000 3850
F 0 "C1" H 3025 3950 50  0000 L CNN
F 1 "100uF" H 3025 3750 50  0000 L CNN
F 2 "" H 3038 3700 50  0000 C CNN
F 3 "" H 3000 3850 50  0000 C CNN
	1    3000 3850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 577C40B0
P 3000 3700
F 0 "#PWR?" H 3000 3550 50  0001 C CNN
F 1 "+3.3V" H 3000 3840 50  0000 C CNN
F 2 "" H 3000 3700 50  0000 C CNN
F 3 "" H 3000 3700 50  0000 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 577C40D0
P 3000 4000
F 0 "#PWR?" H 3000 3750 50  0001 C CNN
F 1 "GND" H 3000 3850 50  0000 C CNN
F 2 "" H 3000 4000 50  0000 C CNN
F 3 "" H 3000 4000 50  0000 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
Connection ~ 4700 2800
Wire Wire Line
	4700 2800 4700 3200
$Comp
L SW_PUSH SW1
U 1 1 577C447C
P 4250 2800
F 0 "SW1" H 4400 2910 50  0000 C CNN
F 1 "SW_RST" H 4250 2720 50  0000 C CNN
F 2 "" H 4250 2800 50  0000 C CNN
F 3 "" H 4250 2800 50  0000 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 577C4665
P 3950 3100
F 0 "#PWR?" H 3950 2850 50  0001 C CNN
F 1 "GND" H 3950 2950 50  0000 C CNN
F 2 "" H 3950 3100 50  0000 C CNN
F 3 "" H 3950 3100 50  0000 C CNN
	1    3950 3100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 577C4698
P 3950 2950
F 0 "R6" V 4030 2950 50  0000 C CNN
F 1 "1K" V 3950 2950 50  0000 C CNN
F 2 "" V 3880 2950 50  0000 C CNN
F 3 "" H 3950 2950 50  0000 C CNN
	1    3950 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2800 4550 2800
Wire Wire Line
	6950 3600 6950 3000
$Comp
L GND #PWR?
U 1 1 577C5301
P 7700 3400
F 0 "#PWR?" H 7700 3150 50  0001 C CNN
F 1 "GND" H 7700 3250 50  0000 C CNN
F 2 "" H 7700 3400 50  0000 C CNN
F 3 "" H 7700 3400 50  0000 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 577C5330
P 7700 3250
F 0 "R7" V 7780 3250 50  0000 C CNN
F 1 "1K" V 7700 3250 50  0000 C CNN
F 2 "" V 7630 3250 50  0000 C CNN
F 3 "" H 7700 3250 50  0000 C CNN
	1    7700 3250
	-1   0    0    1   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 577C5422
P 7400 3100
F 0 "SW2" H 7550 3210 50  0000 C CNN
F 1 "SW_FLASH" H 7400 3020 50  0000 C CNN
F 2 "" H 7400 3100 50  0000 C CNN
F 3 "" H 7400 3100 50  0000 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Connection ~ 6950 3100
Wire Wire Line
	6950 3100 7100 3100
Text GLabel 10750 2500 0    60   Input ~ 0
Yaw_EndSW
Text GLabel 10750 2650 0    60   Input ~ 0
Pitch_EndSW
$EndSCHEMATC
