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
L Connector_Generic:Conn_02x20_Odd_Even J5
U 1 1 609C8CEC
P 4075 2325
F 0 "J5" H 4125 3442 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 4125 3351 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 4075 2325 50  0001 C CNN
F 3 "~" H 4075 2325 50  0001 C CNN
	1    4075 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1925 4375 1925
NoConn ~ 3875 2825
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 609CDF3D
P 2075 2325
F 0 "J2" H 2125 3442 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2125 3351 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2075 2325 50  0001 C CNN
F 3 "~" H 2075 2325 50  0001 C CNN
	1    2075 2325
	1    0    0    -1  
$EndComp
Text Label 3750 2025 2    50   ~ 0
PWM_6
Text Label 3750 2125 2    50   ~ 0
PWM_7
Text Label 3750 2225 2    50   ~ 0
PWM_8
Text Label 3750 2325 2    50   ~ 0
PWM_9
Text Label 3750 2425 2    50   ~ 0
PWM_10
Text Label 3750 2525 2    50   ~ 0
PWM_11
Text Label 3750 2625 2    50   ~ 0
PWM_12
Text Label 3750 2725 2    50   ~ 0
PWM_13
Text Label 3750 2925 2    50   ~ 0
PWM_14
Text Label 3750 3025 2    50   ~ 0
PWM_15
Text Label 3750 3125 2    50   ~ 0
PWM_16
Text Label 3750 3225 2    50   ~ 0
PWM_17
Text Label 3750 3325 2    50   ~ 0
PWM_18
Text Label 4500 2025 0    50   ~ 0
PWM_24
Text Label 4500 1825 0    50   ~ 0
PWM_23
Text Label 4500 1725 0    50   ~ 0
PWM_22
Text Label 4500 1625 0    50   ~ 0
PWM_21
Text Label 4500 1525 0    50   ~ 0
PWM_20
Text Label 4500 1425 0    50   ~ 0
PWM_19
NoConn ~ 1875 1525
NoConn ~ 1875 1425
NoConn ~ 1875 1725
NoConn ~ 1875 1825
NoConn ~ 1875 1925
NoConn ~ 1875 2925
NoConn ~ 1875 3125
NoConn ~ 1875 3225
NoConn ~ 1875 3325
Wire Wire Line
	1875 2825 1725 2825
Wire Wire Line
	1725 3025 1875 3025
NoConn ~ 2375 1425
NoConn ~ 2375 1525
NoConn ~ 2375 1625
NoConn ~ 2375 1725
NoConn ~ 2375 1925
NoConn ~ 2375 2025
NoConn ~ 2375 2125
NoConn ~ 2375 2225
NoConn ~ 2375 2725
NoConn ~ 2375 2825
NoConn ~ 2375 2925
NoConn ~ 2375 3025
NoConn ~ 2375 3125
NoConn ~ 2375 3225
Wire Wire Line
	2525 1825 2375 1825
Wire Wire Line
	2525 3325 2375 3325
Wire Wire Line
	2375 2625 2525 2625
Text Label 1650 2425 0    50   ~ 0
SCK
Text Label 1650 2325 0    50   ~ 0
MISO
Text Label 1650 2225 0    50   ~ 0
MOSI
Wire Notes Line
	1250 3625 2925 3625
Wire Notes Line
	2925 3625 2925 1075
Wire Notes Line
	1250 3625 1250 1075
Wire Notes Line
	1250 1075 2925 1075
Text Notes 1230 1060 0    50   ~ 0
Raspi_Header
Wire Notes Line
	3150 1075 5150 1075
Wire Notes Line
	5150 1075 5150 3625
Wire Notes Line
	5150 3625 3150 3625
Wire Notes Line
	3150 3625 3150 1075
Text Notes 3140 1050 0    50   ~ 0
De10_LITE+Arduino\n
Wire Wire Line
	1700 4075 1700 4150
$Comp
L power:GND #PWR02
U 1 1 60A505DF
P 1700 4300
F 0 "#PWR02" H 1700 4050 50  0001 C CNN
F 1 "GND" H 1705 4127 50  0000 C CNN
F 2 "" H 1700 4300 50  0001 C CNN
F 3 "" H 1700 4300 50  0001 C CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4250 1700 4300
Text Notes 1230 4040 0    50   ~ 0
5v_IN\n\n\n\n
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60A6320B
P 1375 4150
F 0 "J1" H 1483 4331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1475 4250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1375 4150 50  0001 C CNN
F 3 "~" H 1375 4150 50  0001 C CNN
	1    1375 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60A6594F
P 1700 4075
F 0 "#PWR01" H 1700 3925 50  0001 C CNN
F 1 "+5V" H 1715 4248 50  0000 C CNN
F 2 "" H 1700 4075 50  0001 C CNN
F 3 "" H 1700 4075 50  0001 C CNN
	1    1700 4075
	1    0    0    -1  
$EndComp
Wire Notes Line
	1900 4575 1900 3800
Wire Notes Line
	1250 3800 1250 4575
Wire Notes Line
	1250 4575 1900 4575
Wire Notes Line
	1250 3800 1900 3800
$Comp
L Connector:Conn_01x03_Male J26
U 1 1 60A948C2
P 7830 1430
F 0 "J26" H 7938 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7938 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7830 1430 50  0001 C CNN
F 3 "~" H 7830 1430 50  0001 C CNN
	1    7830 1430
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J22
U 1 1 60A944F6
P 7430 1430
F 0 "J22" H 7538 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7538 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7430 1430 50  0001 C CNN
F 3 "~" H 7430 1430 50  0001 C CNN
	1    7430 1430
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J18
U 1 1 60A94160
P 7030 1430
F 0 "J18" H 7138 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7138 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7030 1430 50  0001 C CNN
F 3 "~" H 7030 1430 50  0001 C CNN
	1    7030 1430
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J14
U 1 1 60A93C70
P 6630 1430
F 0 "J14" H 6738 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6738 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6630 1430 50  0001 C CNN
F 3 "~" H 6630 1430 50  0001 C CNN
	1    6630 1430
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 60A93079
P 6230 1430
F 0 "J10" H 6338 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6338 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6230 1430 50  0001 C CNN
F 3 "~" H 6230 1430 50  0001 C CNN
	1    6230 1430
	1    0    0    -1  
$EndComp
Wire Wire Line
	6030 1430 6130 1430
Wire Wire Line
	6130 1430 6130 1380
Wire Wire Line
	6130 1380 6530 1380
Wire Wire Line
	6430 1430 6530 1430
Wire Wire Line
	6530 1430 6530 1380
Connection ~ 6530 1380
Wire Wire Line
	6530 1380 6930 1380
Wire Wire Line
	6830 1430 6930 1430
Wire Wire Line
	6930 1430 6930 1380
Connection ~ 6930 1380
Wire Wire Line
	6930 1380 7330 1380
Wire Wire Line
	7230 1430 7330 1430
Wire Wire Line
	7330 1430 7330 1380
Wire Wire Line
	7630 1430 7730 1430
Wire Wire Line
	7730 1430 7730 1380
Wire Wire Line
	7330 1380 7730 1380
Connection ~ 7330 1380
$Comp
L power:GND #PWR06
U 1 1 60ACD56F
P 8180 1630
F 0 "#PWR06" H 8180 1380 50  0001 C CNN
F 1 "GND" H 8185 1457 50  0000 C CNN
F 2 "" H 8180 1630 50  0001 C CNN
F 3 "" H 8180 1630 50  0001 C CNN
	1    8180 1630
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 1530 8180 1530
Wire Wire Line
	8180 1530 8180 1580
Wire Wire Line
	7630 1530 7730 1530
Wire Wire Line
	7730 1530 7730 1580
Wire Wire Line
	7730 1580 8180 1580
Connection ~ 8180 1580
Wire Wire Line
	8180 1580 8180 1630
Wire Wire Line
	7230 1530 7330 1530
Wire Wire Line
	7330 1530 7330 1580
Wire Wire Line
	7330 1580 7730 1580
Connection ~ 7730 1580
Wire Wire Line
	6830 1530 6930 1530
Wire Wire Line
	6930 1530 6930 1580
Wire Wire Line
	6930 1580 7330 1580
Connection ~ 7330 1580
Wire Wire Line
	6430 1530 6530 1530
Wire Wire Line
	6530 1530 6530 1580
Wire Wire Line
	6530 1580 6930 1580
Connection ~ 6930 1580
Connection ~ 6530 1580
Wire Wire Line
	6030 1530 6130 1530
Wire Wire Line
	6130 1530 6130 1580
Wire Wire Line
	6130 1580 6530 1580
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60ADFC12
P 5830 1430
F 0 "J6" H 5938 1711 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5938 1620 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5830 1430 50  0001 C CNN
F 3 "~" H 5830 1430 50  0001 C CNN
	1    5830 1430
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 1430 8130 1430
Wire Wire Line
	7730 1380 8130 1380
Wire Wire Line
	8130 1380 8130 1430
Connection ~ 7730 1380
$Comp
L power:+5V #PWR05
U 1 1 60AFA9DF
P 8180 1330
F 0 "#PWR05" H 8180 1180 50  0001 C CNN
F 1 "+5V" H 8195 1503 50  0000 C CNN
F 2 "" H 8180 1330 50  0001 C CNN
F 3 "" H 8180 1330 50  0001 C CNN
	1    8180 1330
	1    0    0    -1  
$EndComp
Wire Wire Line
	8130 1380 8180 1380
Wire Wire Line
	8180 1380 8180 1330
Connection ~ 8130 1380
$Comp
L Connector:Conn_01x03_Male J27
U 1 1 60B0BF79
P 7830 2180
F 0 "J27" H 7938 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7938 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7830 2180 50  0001 C CNN
F 3 "~" H 7830 2180 50  0001 C CNN
	1    7830 2180
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J23
U 1 1 60B0BF83
P 7430 2180
F 0 "J23" H 7538 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7538 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7430 2180 50  0001 C CNN
F 3 "~" H 7430 2180 50  0001 C CNN
	1    7430 2180
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J19
U 1 1 60B0BF8D
P 7030 2180
F 0 "J19" H 7138 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7138 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7030 2180 50  0001 C CNN
F 3 "~" H 7030 2180 50  0001 C CNN
	1    7030 2180
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J15
U 1 1 60B0BF97
P 6630 2180
F 0 "J15" H 6738 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6738 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6630 2180 50  0001 C CNN
F 3 "~" H 6630 2180 50  0001 C CNN
	1    6630 2180
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 60B0BFA1
P 6230 2180
F 0 "J11" H 6338 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6338 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6230 2180 50  0001 C CNN
F 3 "~" H 6230 2180 50  0001 C CNN
	1    6230 2180
	1    0    0    -1  
$EndComp
Wire Wire Line
	6030 2180 6130 2180
Wire Wire Line
	6130 2180 6130 2130
Wire Wire Line
	6130 2130 6530 2130
Wire Wire Line
	6430 2180 6530 2180
Wire Wire Line
	6530 2180 6530 2130
Connection ~ 6530 2130
Wire Wire Line
	6530 2130 6930 2130
Wire Wire Line
	6830 2180 6930 2180
Wire Wire Line
	6930 2180 6930 2130
Connection ~ 6930 2130
Wire Wire Line
	6930 2130 7330 2130
Wire Wire Line
	7230 2180 7330 2180
Wire Wire Line
	7330 2180 7330 2130
Wire Wire Line
	7630 2180 7730 2180
Wire Wire Line
	7730 2180 7730 2130
Wire Wire Line
	7330 2130 7730 2130
Connection ~ 7330 2130
$Comp
L power:GND #PWR08
U 1 1 60B0BFBC
P 8180 2380
F 0 "#PWR08" H 8180 2130 50  0001 C CNN
F 1 "GND" H 8185 2207 50  0000 C CNN
F 2 "" H 8180 2380 50  0001 C CNN
F 3 "" H 8180 2380 50  0001 C CNN
	1    8180 2380
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 2280 8180 2280
Wire Wire Line
	8180 2280 8180 2330
Wire Wire Line
	7630 2280 7730 2280
Wire Wire Line
	7730 2280 7730 2330
Wire Wire Line
	7730 2330 8180 2330
Connection ~ 8180 2330
Wire Wire Line
	8180 2330 8180 2380
Wire Wire Line
	7230 2280 7330 2280
Wire Wire Line
	7330 2280 7330 2330
Wire Wire Line
	7330 2330 7730 2330
Connection ~ 7730 2330
Wire Wire Line
	6830 2280 6930 2280
Wire Wire Line
	6930 2280 6930 2330
Wire Wire Line
	6930 2330 7330 2330
Connection ~ 7330 2330
Wire Wire Line
	6430 2280 6530 2280
Wire Wire Line
	6530 2280 6530 2330
Wire Wire Line
	6530 2330 6930 2330
Connection ~ 6930 2330
Connection ~ 6530 2330
Wire Wire Line
	6030 2280 6130 2280
Wire Wire Line
	6130 2280 6130 2330
Wire Wire Line
	6130 2330 6530 2330
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60B0BFDD
P 5830 2180
F 0 "J7" H 5938 2461 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5938 2370 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5830 2180 50  0001 C CNN
F 3 "~" H 5830 2180 50  0001 C CNN
	1    5830 2180
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 2180 8130 2180
Wire Wire Line
	7730 2130 8130 2130
Wire Wire Line
	8130 2130 8130 2180
Connection ~ 7730 2130
$Comp
L power:+5V #PWR07
U 1 1 60B0BFEB
P 8180 2080
F 0 "#PWR07" H 8180 1930 50  0001 C CNN
F 1 "+5V" H 8195 2253 50  0000 C CNN
F 2 "" H 8180 2080 50  0001 C CNN
F 3 "" H 8180 2080 50  0001 C CNN
	1    8180 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	8130 2130 8180 2130
Wire Wire Line
	8180 2130 8180 2080
Connection ~ 8130 2130
$Comp
L Connector:Conn_01x03_Male J28
U 1 1 60B1AE6B
P 7830 2930
F 0 "J28" H 7938 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7938 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7830 2930 50  0001 C CNN
F 3 "~" H 7830 2930 50  0001 C CNN
	1    7830 2930
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J24
U 1 1 60B1AE75
P 7430 2930
F 0 "J24" H 7538 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7538 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7430 2930 50  0001 C CNN
F 3 "~" H 7430 2930 50  0001 C CNN
	1    7430 2930
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J20
U 1 1 60B1AE7F
P 7030 2930
F 0 "J20" H 7138 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7138 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7030 2930 50  0001 C CNN
F 3 "~" H 7030 2930 50  0001 C CNN
	1    7030 2930
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J16
U 1 1 60B1AE89
P 6630 2930
F 0 "J16" H 6738 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6738 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6630 2930 50  0001 C CNN
F 3 "~" H 6630 2930 50  0001 C CNN
	1    6630 2930
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 60B1AE93
P 6230 2930
F 0 "J12" H 6338 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6338 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6230 2930 50  0001 C CNN
F 3 "~" H 6230 2930 50  0001 C CNN
	1    6230 2930
	1    0    0    -1  
$EndComp
Wire Wire Line
	6030 2930 6130 2930
Wire Wire Line
	6130 2930 6130 2880
Wire Wire Line
	6130 2880 6530 2880
Wire Wire Line
	6430 2930 6530 2930
Wire Wire Line
	6530 2930 6530 2880
Connection ~ 6530 2880
Wire Wire Line
	6530 2880 6930 2880
Wire Wire Line
	6830 2930 6930 2930
Wire Wire Line
	6930 2930 6930 2880
Connection ~ 6930 2880
Wire Wire Line
	6930 2880 7330 2880
Wire Wire Line
	7230 2930 7330 2930
Wire Wire Line
	7330 2930 7330 2880
Wire Wire Line
	7630 2930 7730 2930
Wire Wire Line
	7730 2930 7730 2880
Wire Wire Line
	7330 2880 7730 2880
Connection ~ 7330 2880
Wire Wire Line
	8030 3030 8180 3030
Wire Wire Line
	8180 3030 8180 3080
Wire Wire Line
	7630 3030 7730 3030
Wire Wire Line
	7730 3030 7730 3080
Wire Wire Line
	7730 3080 8180 3080
Connection ~ 8180 3080
Wire Wire Line
	8180 3080 8180 3130
Wire Wire Line
	7230 3030 7330 3030
Wire Wire Line
	7330 3030 7330 3080
Wire Wire Line
	7330 3080 7730 3080
Connection ~ 7730 3080
Wire Wire Line
	6830 3030 6930 3030
Wire Wire Line
	6930 3030 6930 3080
Wire Wire Line
	6930 3080 7330 3080
Connection ~ 7330 3080
Wire Wire Line
	6430 3030 6530 3030
Wire Wire Line
	6530 3030 6530 3080
Wire Wire Line
	6530 3080 6930 3080
Connection ~ 6930 3080
Connection ~ 6530 3080
Wire Wire Line
	6030 3030 6130 3030
Wire Wire Line
	6130 3030 6130 3080
Wire Wire Line
	6130 3080 6530 3080
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 60B1AECF
P 5830 2930
F 0 "J8" H 5938 3211 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5938 3120 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5830 2930 50  0001 C CNN
F 3 "~" H 5830 2930 50  0001 C CNN
	1    5830 2930
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 2930 8130 2930
Wire Wire Line
	7730 2880 8130 2880
Wire Wire Line
	8130 2880 8130 2930
Connection ~ 7730 2880
$Comp
L power:+5V #PWR09
U 1 1 60B1AEDD
P 8180 2830
F 0 "#PWR09" H 8180 2680 50  0001 C CNN
F 1 "+5V" H 8195 3003 50  0000 C CNN
F 2 "" H 8180 2830 50  0001 C CNN
F 3 "" H 8180 2830 50  0001 C CNN
	1    8180 2830
	1    0    0    -1  
$EndComp
Wire Wire Line
	8130 2880 8180 2880
Wire Wire Line
	8180 2880 8180 2830
Connection ~ 8130 2880
$Comp
L Connector:Conn_01x03_Male J29
U 1 1 60B2A11E
P 7830 3630
F 0 "J29" H 7938 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7938 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7830 3630 50  0001 C CNN
F 3 "~" H 7830 3630 50  0001 C CNN
	1    7830 3630
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J25
U 1 1 60B2A128
P 7430 3630
F 0 "J25" H 7538 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7538 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7430 3630 50  0001 C CNN
F 3 "~" H 7430 3630 50  0001 C CNN
	1    7430 3630
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J21
U 1 1 60B2A132
P 7030 3630
F 0 "J21" H 7138 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7138 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7030 3630 50  0001 C CNN
F 3 "~" H 7030 3630 50  0001 C CNN
	1    7030 3630
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J17
U 1 1 60B2A13C
P 6630 3630
F 0 "J17" H 6738 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6738 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6630 3630 50  0001 C CNN
F 3 "~" H 6630 3630 50  0001 C CNN
	1    6630 3630
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 60B2A146
P 6230 3630
F 0 "J13" H 6338 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6338 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6230 3630 50  0001 C CNN
F 3 "~" H 6230 3630 50  0001 C CNN
	1    6230 3630
	1    0    0    -1  
$EndComp
Wire Wire Line
	6030 3630 6130 3630
Wire Wire Line
	6130 3630 6130 3580
Wire Wire Line
	6130 3580 6530 3580
Wire Wire Line
	6430 3630 6530 3630
Wire Wire Line
	6530 3630 6530 3580
Connection ~ 6530 3580
Wire Wire Line
	6530 3580 6930 3580
Wire Wire Line
	6830 3630 6930 3630
Wire Wire Line
	6930 3630 6930 3580
Connection ~ 6930 3580
Wire Wire Line
	6930 3580 7330 3580
Wire Wire Line
	7230 3630 7330 3630
Wire Wire Line
	7330 3630 7330 3580
Wire Wire Line
	7630 3630 7730 3630
Wire Wire Line
	7730 3630 7730 3580
Wire Wire Line
	7330 3580 7730 3580
Connection ~ 7330 3580
$Comp
L power:GND #PWR012
U 1 1 60B2A161
P 8180 3830
F 0 "#PWR012" H 8180 3580 50  0001 C CNN
F 1 "GND" H 8185 3657 50  0000 C CNN
F 2 "" H 8180 3830 50  0001 C CNN
F 3 "" H 8180 3830 50  0001 C CNN
	1    8180 3830
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 3730 8180 3730
Wire Wire Line
	8180 3730 8180 3780
Wire Wire Line
	7630 3730 7730 3730
Wire Wire Line
	7730 3730 7730 3780
Wire Wire Line
	7730 3780 8180 3780
Connection ~ 8180 3780
Wire Wire Line
	8180 3780 8180 3830
Wire Wire Line
	7230 3730 7330 3730
Wire Wire Line
	7330 3730 7330 3780
Wire Wire Line
	7330 3780 7730 3780
Connection ~ 7730 3780
Wire Wire Line
	6830 3730 6930 3730
Wire Wire Line
	6930 3730 6930 3780
Wire Wire Line
	6930 3780 7330 3780
Connection ~ 7330 3780
Wire Wire Line
	6430 3730 6530 3730
Wire Wire Line
	6530 3730 6530 3780
Wire Wire Line
	6530 3780 6930 3780
Connection ~ 6930 3780
Connection ~ 6530 3780
Wire Wire Line
	6030 3730 6130 3730
Wire Wire Line
	6130 3730 6130 3780
Wire Wire Line
	6130 3780 6530 3780
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 60B2A182
P 5830 3630
F 0 "J9" H 5938 3911 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5938 3820 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5830 3630 50  0001 C CNN
F 3 "~" H 5830 3630 50  0001 C CNN
	1    5830 3630
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 3630 8130 3630
Wire Wire Line
	7730 3580 8130 3580
Wire Wire Line
	8130 3580 8130 3630
Connection ~ 7730 3580
$Comp
L power:+5V #PWR011
U 1 1 60B2A190
P 8180 3530
F 0 "#PWR011" H 8180 3380 50  0001 C CNN
F 1 "+5V" H 8195 3703 50  0000 C CNN
F 2 "" H 8180 3530 50  0001 C CNN
F 3 "" H 8180 3530 50  0001 C CNN
	1    8180 3530
	1    0    0    -1  
$EndComp
Wire Wire Line
	8130 3580 8180 3580
Wire Wire Line
	8180 3580 8180 3530
Connection ~ 8130 3580
$Comp
L power:GND #PWR010
U 1 1 60B392EE
P 8180 3130
F 0 "#PWR010" H 8180 2880 50  0001 C CNN
F 1 "GND" H 8185 2957 50  0000 C CNN
F 2 "" H 8180 3130 50  0001 C CNN
F 3 "" H 8180 3130 50  0001 C CNN
	1    8180 3130
	1    0    0    -1  
$EndComp
Text Label 6030 1330 0    50   ~ 0
PWM_1
Text Label 6430 1330 0    50   ~ 0
PWM_2
Text Label 6830 1330 0    50   ~ 0
PWM_3
Text Label 7230 1330 0    50   ~ 0
PWM_4
Text Label 7630 1330 0    50   ~ 0
PWM_5
Text Label 8030 1330 0    50   ~ 0
PWM_6
Text Label 6030 2080 0    50   ~ 0
PWM_7
Text Label 6430 2080 0    50   ~ 0
PWM_8
Text Label 6830 2080 0    50   ~ 0
PWM_9
Text Label 7230 2080 0    50   ~ 0
PWM_10
Text Label 7630 2080 0    50   ~ 0
PWM_11
Text Label 8030 2080 0    50   ~ 0
PWM_12
Text Label 6030 2830 0    50   ~ 0
PWM_13
Text Label 6430 2830 0    50   ~ 0
PWM_14
Text Label 6830 2830 0    50   ~ 0
PWM_15
Text Label 7230 2830 0    50   ~ 0
PWM_16
Text Label 7630 2830 0    50   ~ 0
PWM_17
Text Label 8030 2830 0    50   ~ 0
PWM_18
Text Label 6030 3530 0    50   ~ 0
PWM_19
Text Label 6430 3530 0    50   ~ 0
PWM_20
Text Label 6830 3530 0    50   ~ 0
PWM_21
Text Label 7230 3530 0    50   ~ 0
PWM_22
Text Label 7630 3530 0    50   ~ 0
PWM_23
Text Label 8030 3530 0    50   ~ 0
PWM_24
Wire Notes Line
	8380 1080 8380 4080
Wire Notes Line
	8380 4080 5480 4080
Wire Notes Line
	5480 4080 5480 1080
Wire Notes Line
	5480 1080 8380 1080
Text Notes 5470 1070 0    50   ~ 0
Servo_Header\n
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60BE0219
P 1760 4150
F 0 "#FLG0101" H 1760 4225 50  0001 C CNN
F 1 "PWR_FLAG" V 1760 4278 50  0000 L CNN
F 2 "" H 1760 4150 50  0001 C CNN
F 3 "~" H 1760 4150 50  0001 C CNN
	1    1760 4150
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60BE1136
P 1760 4250
F 0 "#FLG0102" H 1760 4325 50  0001 C CNN
F 1 "PWR_FLAG" V 1760 4378 50  0000 L CNN
F 2 "" H 1760 4250 50  0001 C CNN
F 3 "~" H 1760 4250 50  0001 C CNN
	1    1760 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	1575 4250 1700 4250
Connection ~ 1700 4250
Wire Wire Line
	1700 4250 1760 4250
Wire Wire Line
	1575 4150 1700 4150
Connection ~ 1700 4150
Wire Wire Line
	1700 4150 1760 4150
Wire Wire Line
	1725 1625 1875 1625
Text Label 3750 1425 2    50   ~ 0
PWM_1
Text Label 3750 1725 2    50   ~ 0
PWM_4
Text Label 3750 1825 2    50   ~ 0
PWM_5
Text Label 3750 1625 2    50   ~ 0
PWM_3
Text Label 3750 1525 2    50   ~ 0
PWM_2
NoConn ~ 3875 1925
Wire Wire Line
	4375 1425 4500 1425
Wire Wire Line
	4500 1525 4375 1525
Wire Wire Line
	4375 1625 4500 1625
Wire Wire Line
	4500 1725 4375 1725
Wire Wire Line
	4375 1825 4500 1825
Wire Wire Line
	4375 2025 4500 2025
Wire Wire Line
	3875 1425 3750 1425
Wire Wire Line
	3750 1525 3875 1525
Wire Wire Line
	3750 1625 3875 1625
Wire Wire Line
	3750 1725 3875 1725
Wire Wire Line
	3750 1825 3875 1825
Wire Wire Line
	3750 2025 3875 2025
Wire Wire Line
	3750 2125 3875 2125
Wire Wire Line
	3750 2225 3875 2225
Wire Wire Line
	3750 2325 3875 2325
Wire Wire Line
	3750 2425 3875 2425
Wire Wire Line
	3750 2525 3875 2525
Wire Wire Line
	3750 2625 3875 2625
Wire Wire Line
	3750 2725 3875 2725
Wire Wire Line
	3750 2925 3875 2925
Wire Wire Line
	3750 3025 3875 3025
Wire Wire Line
	3750 3125 3875 3125
Wire Wire Line
	3750 3225 3875 3225
Wire Wire Line
	3750 3325 3875 3325
Wire Wire Line
	4375 2825 4550 2825
NoConn ~ 4500 1925
NoConn ~ 4375 2125
NoConn ~ 4375 2225
NoConn ~ 4375 2325
NoConn ~ 4375 2425
NoConn ~ 4375 2525
NoConn ~ 4375 2625
NoConn ~ 4375 2725
NoConn ~ 4375 2925
NoConn ~ 1725 1625
NoConn ~ 1725 2825
NoConn ~ 1725 3025
Text Label 4475 3225 0    50   ~ 0
SCK
Text Label 4475 3125 0    50   ~ 0
MISO
Text Label 4475 3025 0    50   ~ 0
MOSI
Wire Wire Line
	4375 3225 4475 3225
Wire Wire Line
	4375 3125 4475 3125
Wire Wire Line
	4475 3025 4375 3025
Wire Wire Line
	2725 4075 2725 4150
$Comp
L power:GND #PWR04
U 1 1 60A1FACC
P 2725 4300
F 0 "#PWR04" H 2725 4050 50  0001 C CNN
F 1 "GND" H 2730 4127 50  0000 C CNN
F 2 "" H 2725 4300 50  0001 C CNN
F 3 "" H 2725 4300 50  0001 C CNN
	1    2725 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 4250 2725 4300
Text Notes 2275 4125 0    50   ~ 0
5v_FPGA\n\n\n\n\n
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60A1FAD4
P 2400 4150
F 0 "J3" H 2508 4331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2500 4250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2400 4150 50  0001 C CNN
F 3 "~" H 2400 4150 50  0001 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60A1FADA
P 2725 4075
F 0 "#PWR03" H 2725 3925 50  0001 C CNN
F 1 "+5V" H 2740 4248 50  0000 C CNN
F 2 "" H 2725 4075 50  0001 C CNN
F 3 "" H 2725 4075 50  0001 C CNN
	1    2725 4075
	1    0    0    -1  
$EndComp
Wire Notes Line
	2925 4575 2925 3800
Wire Notes Line
	2275 3800 2275 4575
Wire Notes Line
	2275 4575 2925 4575
Wire Notes Line
	2275 3800 2925 3800
Wire Wire Line
	2600 4250 2725 4250
Wire Wire Line
	2600 4150 2725 4150
Wire Wire Line
	3750 4075 3750 4150
$Comp
L power:GND #PWR014
U 1 1 60A2D3F4
P 3750 4300
F 0 "#PWR014" H 3750 4050 50  0001 C CNN
F 1 "GND" H 3755 4127 50  0000 C CNN
F 2 "" H 3750 4300 50  0001 C CNN
F 3 "" H 3750 4300 50  0001 C CNN
	1    3750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4250 3750 4300
Text Notes 3300 4125 0    50   ~ 0
5v_Raspi\n\n\n\n\n
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60A2D400
P 3425 4150
F 0 "J4" H 3533 4331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3525 4250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3425 4150 50  0001 C CNN
F 3 "~" H 3425 4150 50  0001 C CNN
	1    3425 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 60A2D40A
P 3750 4075
F 0 "#PWR013" H 3750 3925 50  0001 C CNN
F 1 "+5V" H 3765 4248 50  0000 C CNN
F 2 "" H 3750 4075 50  0001 C CNN
F 3 "" H 3750 4075 50  0001 C CNN
	1    3750 4075
	1    0    0    -1  
$EndComp
Wire Notes Line
	3950 4575 3950 3800
Wire Notes Line
	3300 3800 3300 4575
Wire Notes Line
	3300 4575 3950 4575
Wire Notes Line
	3300 3800 3950 3800
Wire Wire Line
	3625 4250 3750 4250
Wire Wire Line
	3625 4150 3750 4150
NoConn ~ 2525 2625
NoConn ~ 2525 3325
Wire Wire Line
	1875 2425 1650 2425
Wire Wire Line
	1650 2325 1875 2325
Wire Wire Line
	1650 2225 1875 2225
NoConn ~ 2375 2325
NoConn ~ 2375 2425
NoConn ~ 2375 2525
NoConn ~ 1875 2625
NoConn ~ 1875 2725
NoConn ~ 2525 1825
NoConn ~ 4550 2825
$Comp
L Mechanical:MountingHole H1
U 1 1 619D5F39
P 4475 4325
F 0 "H1" H 4575 4371 50  0000 L CNN
F 1 "MountingHole" H 4575 4280 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4475 4325 50  0001 C CNN
F 3 "~" H 4475 4325 50  0001 C CNN
	1    4475 4325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 619D64BC
P 4475 4500
F 0 "H2" H 4575 4546 50  0000 L CNN
F 1 "MountingHole" H 4575 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4475 4500 50  0001 C CNN
F 3 "~" H 4475 4500 50  0001 C CNN
	1    4475 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 619D6FBE
P 4475 4675
F 0 "H3" H 4575 4721 50  0000 L CNN
F 1 "MountingHole" H 4575 4630 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4475 4675 50  0001 C CNN
F 3 "~" H 4475 4675 50  0001 C CNN
	1    4475 4675
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 619D7330
P 4475 4850
F 0 "H4" H 4575 4896 50  0000 L CNN
F 1 "MountingHole" H 4575 4805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4475 4850 50  0001 C CNN
F 3 "~" H 4475 4850 50  0001 C CNN
	1    4475 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 619D76F7
P 4700 4325
F 0 "H5" H 4800 4371 50  0000 L CNN
F 1 "MountingHole" H 4800 4280 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 4325 50  0001 C CNN
F 3 "~" H 4700 4325 50  0001 C CNN
	1    4700 4325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 619D7D63
P 4700 4500
F 0 "H6" H 4800 4546 50  0000 L CNN
F 1 "MountingHole" H 4800 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 4500 50  0001 C CNN
F 3 "~" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 619D8B5D
P 4700 4675
F 0 "H7" H 4800 4721 50  0000 L CNN
F 1 "MountingHole" H 4800 4630 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 4675 50  0001 C CNN
F 3 "~" H 4700 4675 50  0001 C CNN
	1    4700 4675
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 619D8FDA
P 4700 4850
F 0 "H8" H 4800 4896 50  0000 L CNN
F 1 "MountingHole" H 4800 4805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4700 4850 50  0001 C CNN
F 3 "~" H 4700 4850 50  0001 C CNN
	1    4700 4850
	1    0    0    -1  
$EndComp
Text Label 4475 3325 0    50   ~ 0
SS
Wire Wire Line
	4475 3325 4375 3325
Text Label 1675 2525 0    50   ~ 0
SS
NoConn ~ 1875 2025
Wire Wire Line
	1675 2525 1875 2525
NoConn ~ 1875 2125
$EndSCHEMATC
