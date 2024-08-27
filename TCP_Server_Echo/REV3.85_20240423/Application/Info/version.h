#ifndef   __VERSION_H__
#define   __VERSION_H__


#define FirmwareVersion		(3.85f)


// REV0.0 (2018-11-16 ���� 5:48:05)
// LED, DEBUG UART, RTC, TFT, NAND ���� �Ϸ� 

// REV0.1 (2018-11-26 ���� 11:10:28)
// Cavity Interface �߰� 

// REV0.2 (2018-12-02 ���� 1:18:40)
// EEPROM, KEY �߰�
// Ratary Switch Option �߰� 

// REV0.3 (2018-12-04 ���� 9:57:25)
// Project Tree Renewal
// Internal ADC Sensing �߰�
// Pump Control �߰�
// Sensing Data Processing �߰�

// REV0.4 (2018-12-08 ���� 7:23:12)
// Sensing Data Processing Logic ����
// Data Logging Process ����
// Reset Long-Key ���� �� Cavity Amp. Calibration ����
// Function Long-Key ���� �� Log Mode ���������� ����

// REV0.5 (2018-12-13 ���� 10:37:38)
// Nand Flash �߰�
// Sensing Data Processing Logic ����   

// REV0.6 (2018-12-16 ���� 11:27:10)
// EEPROM Pump Frequency Map �߰�
// Pump Control Logic ����
// I2C2 �߰�
// USART Handle ���� ���� �� USART6 External MODBUS Interface �߰�
// Current Output �߰�    

// REV0.7 (2018-12-18 ���� 1:14:40)
// MODBUS Process ����     

// REV0.8 (2018-12-19 ���� 12:48:44)
// H/W Revision Read Logic �߰�
// I2C ���� ����
// Base Timer ���� ���� (Timer Interrupt Vector �����ð� Ȯ��)
// DAC8571 Power Up Delay Nack Fault ������ ���� Delay(1msec.) �߰�
// Task Process Normal�� Time Synchronization �������� �и�
// Cavity Init. Fuction Sensing Process���� ó�� 

// REV0.9 (2018-12-22 ���� 9:43:43)
// Digital(I2C) Pressure Sensor ���� 
// Key Task - Reed Switch Port �и� ����
// GDI, SDIO, FatFs �߰�
// System Mode ���� 

// REV1.0 (2019-01-03 ���� 11:26:37)
// Boot Logic ����
// Pump Flow Control �߰�
// Function Mode �߰� 

// REV1.1
// GUI Normal View Design 2Ch �Ϸ� ��..... 

// REV1.2 (2019-02-14 ���� 10:59:15)
// LCD Drive Logic ����
// Function Task �߰�
// Flow Calibration �߰� 

// REV1.3 (2019-02-28 ���� 1:56:33)
// Mesurement Setting �߰� 

// REV1.4 (2019-03-11 ���� 9:17:22)
// Gas Calibration Logic �߰�
// Alarm Logic �߰� 

// REV1.5 (2019-03-26 ���� 12:49:17)
// Sensig Logic ����
// Key Short Check �߰�
// COS Trend �м���

// REV1.6 (2019-03-27 ���� 10:48:45)
// Sensig Logic ����
// Cavity Sensor Temperature Lpf ����

// REV1.7 (2019-04-01 ���� 10:42:51)
// Temperaure Resolution ���� (0.0 -> 0.00)
// Cavity EEPROM Remap (SENSOR_EEP_CHn_AMP_CAL_TARGET_100uV)
// Flow Rate Set Logic ����
// Calibration Logic ����

// REV1.8 (2019-05-20 ���� 3:14:08)
// Calibration Logic ����
// Power Sensing Scale ���� ( 59[V] Max )

// REV1.9 (2019-05-31 ���� 5:56:19)
// CH4 Demo�� ���������Ʈ ����...
// Cavity �԰����� 6/10.. ���� 10SET �����Ϸ� ���� 6/12..
// 18�� �ȿ� ������Ȯ��, ���������� ��������, �µ������� ���� ��� �����͸� �����ϰ� �˰��� ������ �Ϸ��Ѵ�...

// REV2.0 (2019-06-07 ���� 1:44:44)
// LwIP �߰�
// POE & System Configuration Function �߰�
// Boot Process ����
// LNG 100%LEL & Auxi 9.440��m & 8.000��m ���� a, n ����
// 2019-06-18 ���� 1:22:31 ���� �µ��м�

// REV2.1 (2019-06-18 ���� 3:21:17)
// Measuring Logic ����

// REV2.2 (2019-06-21 ���� 1:10:13)
// Filtering Logic �߰�
// Voltage per Temperature �⺻�� ���� (LNG 100%LEL = 7.5mV, COS 100PPM = 13mV)

// REV2.3 (2019-06-25 ���� 11:20:50)
// Filtering Parameter �߰�
// �������� ���͸� 4.85��m ����

// REV2.4 (2019-06-26 ���� 7:38:12)
// MODBUS TCP �߰�

// REV2.51 (2019-06-28 ���� 11:50:49)
// Measuring Fault ���� ����
// �µ����� ���� ���� (vpt = 0.f)
// Sensing Process Time Sync Task�� ����
// IR ��� �ǽð����� ����
// Output Gas ����

// REV2.52 (2019-07-01 ���� 12:38:01)
// Base Zero �߰� (Volume Deviation ���� ���� �ʿ�)
// IR Source Power Check �߰�
// Gain Calibration Reference Voltage ���� (4.2[V] ->3.8[V])

// REV2.53 (2019-07-03 ���� 10:14:11)
// �µ����� ����
// LNG DEMO ��������

// REV2.54 (2019-07-05 ���� 2:33:31)
// MODBUS Remap (Rev0.2)
// 4.85��m vpt ���� (8.5mV -> 10.9mV)

// REV2.55 (2019-07-08 ���� 8:34:27)
// LNG ��޵��� �Ϸ�
// Filtering ���� �� ���� �� �ݿ�

// REV2.56 (2019-07-08 ���� 2:40:46)
// 485���� �����
// Current Output DAC 16-BIT ���� (DAC7571 -> DAC8571, H/W Revision �� ������ ����)
// Engineer Mode -> Factory Mode
// Alarm Setting �߰�
// Flow Calibration Set Frequency Limit ���� (50 ~ 250 Hz)
// Function mode���� watchdog 10�� ����
// Remote Test Mode �߰�
// Engineer Mode �߰�

// REV2.57 (2019-08-06 ���� 3:58:14)
// RS-485 Function Menu �߰�

// REV2.58 (2019-08-09 ���� 11:39:34)
// Changed a lot...

// REV2.59 (2019-09-11 ���� 4:54:38)
// Modbus Status Icon �߰�
// Flow Icon Speed ����

// REV2.60 (2019-09-18 ���� 10:54:22)
// Factory Settings...
// Measuring Option �߰�
// Down Long Key Maintenance Mode ���� �߰�
// Calibration Logic ����

// REV2.61 (2019-09-20 ���� 3:05:08)
// Factory Settings...
// Maintenance Mode �߰�

// REV2.62 (2019-09-24 ���� 9:17:20)
// Base Zero ���� ����

// REV2.63 (2019-09-24 ���� 4:19:00)
// Flow Control Logic ���� (Freq -> Freq & Duty)
// Gain Setting Factory Cali Menu�� �̵�

// REV2.64 (2019-10-17 ���� 5:30:24)
// Measuring ���� ����
// Function - Flow Trouble Check Time �߰�
// Remote Test Set True�� ó�� �ǵ��� ����
// Auto Calibration ����
// Factory Calibration �߰�
// mA Adjustment Resolution ���� (10uA -> 1uA)
// Measuring Config ���� (IR Dual ����)
// Cross Sensitivity �߰�

// REV2.65 (2019-11-07 ���� 8:44:55)
// Span Calibration Menu�� Cross Sensitivity ����

// REV2.66 (2019-11-08 ���� 8:40:26)
// Measuring Gas Channel Configuration Logic ����
// Measuring Fault Logic �߰�
// Modbus Remap REV0.6
// Relay Test Mode & Energized Set Logic ����
// mA Set & Test ��忡�� �ִ뼳��ġ ����ǵ��� ����

// REV2.67 (2019-11-13 ���� 12:51:55)
// Error Scan & Decoding Logic �߰�
// Cal Mode���� Measuring Filter ����
// SD Icon -> Status Icon���� ����
// Key Lock Mode �߰�

// REV2.68 (2019-11-21 ���� 2:00:46)
// Current Output Init Value Maintenance Gas ����
// Measuring Filter ���� ���� (Random Noise & ROC Great)
// Maintenance Level Update Length ���� ����

// REV2.69 (2019-11-22 ���� 10:26:00)
// AT24C32 Write Fail Check �ǵ��� ����
// Sensing Process ����

// REV2.70 (2019-11-25 ���� 8:39:31)
// Sensing Process ����
// Status Message �߰�
// Peripheral Error Code 1�� ����
// Factory System Init �߰�
// Factory System Info �߰�
// Function Quit Timer �߰�
// P.P. ����

// REV2.71 (2019-12-13 ���� 11:40:43)
// Status Message ����
// Max Flow ����
// Canlendar Setting & View Logic ����
// Backlight Control ����
// Gain Setting Status ����

// REV2.72 (2019-12-16 ���� 4:18:32)
// vMeasuring Color Set Logic ����
// �������� ������ �߰�

// REV2.73 (2019-12-19 ���� 11:41:17)
// Measuring Config ���� �� �⺻�� �ε�
// Measuring Config Update Logic ����
// Maintenance Logic ���� (Relay Output Disable, Test Mode ���ԺҰ�, mA Adjustment �Ұ�)
// mA Maintenance Level ����
// 1ä�� ��忡�� mA Output ä��2 0 mA ��µǵ��� ����

// REV2.74 (2019-12-19 ���� 5:28:11)
// MODBUS Write Holding Logic �߰� (Alarm Set Point)
// �Ｚ ���� ���� (2019-12-20, Standard: 1SET)

// REV2.75 (2019-12-20 ���� 9:48:05)
// I2C Clock Speed ���� (300KHz -> 100KHz)
// Measuring Option ���� ���� ����
// Sensor Trouble �߰� (Not Stable)

// REV2.76 (2019-12-23 ���� 7:33:07)
// Measuring Filter ���� ����
// Self-Test ���� ����
// Boot..... ����
// Measuring Status �߰�

// REV2.77 (2019-12-26 ���� 7:30:05)
// Measuring Status ����
// AT24C32_WriteWord Logic ����
// LNG, COS P.P. ���� (2019-12-31 ����)

// REV2.78 (2019-12-31 ���� 12:33:33)
// Factory_Sensor_Set_Init() ����

// REV2.79 (2020-01-06 ���� 9:46:58)
// I2C ReInit �߰�
// Modbus 1xxxx ���� ä�� 3, 4 Reseved �߰�
// FlowSet Gain Lower Limit ���� (x21)

// REV2.80 (2020-01-09 ���� 9:18:44)
// AT24C32_WriteWord Logic ����
// Measuring Config Update �� Output Channel �ݿ��ȵǴ� ���� ����

// REV2.81 (2020-01-09 ���� 2:39:35)
// Engineering Mode���� Base Zero ����ǵ��� ����
// High Scale ���� �� Span Gas, Alarm Level�� ���� �����Ͽ� ���� ����ǵ��� ����
// Alarm Level �⺻�� ����
// Manual Base Zero �߰�

// REV2.82 (2020-01-15 ���� 8:15:58)
// �������� ������ ����
// Warm-up Time ���� (900 sec.)
// Enter_Self_Test_Mode() ���� �� Test Event True
// Flow Cal Logic ����
// Flow Cal Threshold ���� (Target Voltage, Zero Reference = 300mV, Target Gain Max = 201, Zero Margin = 50mV)
// Max Flow ���� (1000 mL/min)
// Flow Control Threshold ���� (Freq = 180 - 60Hz, Duty = 20 - 30% )
// Flow Rate ���� �ǽð� ������� ����
// Flow Rate 80mL/min ���� Low ǥ��, 1080 �̻� High ǥ��
// Base Zero Default ���� (Time = COS�� 60�� �������� 120��)
// a, n ���� (LNG, COS)

// REV2.83 (2020-01-30 ���� 5:30:08)
// Flow Set Exceed Ptm Range �߰�
// Flow Filtering ���� ���� (<80% of Target, >120% of Target)
// Flow Trouble   ���� ���� (<80, >1200)
// �������� ���� �� Filter Icon ǥ��

// REV2.84 (2020-02-03 ���� 1:29:26)
// Key Lock ǥ�ù�� ���� (Status Icon -> Status Message)
// Under Gas mA Output Level ���� (2mA -> 0mA)
// I2C Driver ����
// DAC8571 Driver ����
// MCP46x1 Driver ����
// AT24C32 Driver ����
// bZero Logic ���� (���� �� 1�� ���� �� ��� ����)

// REV2.85 (2020-02-06 ���� 5:14:17)
// Sensor �߰� (LMM-274-X027)
// Filter �߰� (8,925nm)
// Gas �߰� (C4F8 2000ppm, C5F8 2000ppm, C4F6 2000ppm, CH2F2 2000ppm, TEOS 30ppm, CH3F 2000ppm)
// Gas Cal Low Zero to Sppn ���� ����
// Cal Status ���� (���� ���� ��忡���� SET, ��������, Info Viewer ��� �� RESET)
// Ȱ��ȭ ������ ������ ���
// Log Mode �߰� (DATA_LOG_MODE_ZERO_STABILITY)
// Normal ��� ���� ���Խ� Key Lock ����, Gas Percentage Min, Max Log �ʱ�ȭ
// Normal ��忡�� Up Long Key�� Gas Percentage Min, Max Log, bZeroCnt �ʱ�ȭ
// 4850nm VPT ���� (7.3mV)
// Modbus Heart Top 65535�� ����
// Gas Simulation���� Modbus Trouble Bit ����
// Gas Simulation Range ���� (0 ~ HIgh Scale * 1.2)
// Gas Simulation Under Set ����
// Gas Simulation Trouble Set �߰�
// Gas 6�� Curve Data ���� (C4F8 2000ppm, C5F8 2000ppm, C4F6 2000ppm, CH2F2 2000ppm, TEOS 30ppm, CH3F 2000ppm)
// Default Span Gas ����

// REV2.86 (2020-02-14 ���� 5:28:52)
// Base Zero Off ���� �߰�
// FlowSet Logic ���� (PTM ����ȭ, Zero Span Decision ����)

// REV2.87 (2020-02-26 ���� 10:46:39)
// Output Gas List �߰� �� ����
// ���� ����� ����� ���� �߰�
// Base Zero Logic ����
// - ���� ��� ä�� ���� ��� ������� (+Percentage Only)
// - ����ȭ �ð� ���� (10��)
// - ä�κ� Warm-up ��� ���� (���� 1�ð�)
// - Warm-up ��忡�� ���� ���� (���� 2��, �ð� 20�� ����)
// - �µ����� 1�� �̳��� ��� Warm-up ��� ����
// EEPROM Write delay ���� (5 -> 7msec)
// Manual Zero Update �� Reference Channel SpanGas Update���� �ʵ��� ����

// REV2.88 (2020-03-03 ���� 4:06:18)
// mA Output Test Mode���� 0mA ��µǴ� ���� ����
// �������͸� Zero Skip �̻󿡼� ����

// REV2.89 (2020-03-03 ���� 9:11:15)
// CARTRIDGE_READ_REGISTER_SIZE ���� (192 -> 128)
// CAVITY_READ_REGISTER_SIZE ���� (256 -> 128)
// Factory Measuring - View Status ����
// - Measuring Status Color ����
// - Interference Gas Monitor �߰�
// - Wave Monitor �߰�

// REV2.90 (2020-03-10 ���� 11:12:15)
// vpt ����
// Peak Monitor �߰�
// All Base Mode �߰�

// REV2.91 (2020-03-11 ���� 4:37:29ȣ)
// Measuring & Status View ��ġ ����
// ����ä�ΰ� ���͸� ���� ����
// Scope mode���� ���� �޴� �̵� �� �ܻ� ����

// REV2.92 (2020-03-16 ���� 2:41:55)
// Measuring Filter
// - Sensor Trouble Logic ����
// - Offset Adjustment ����
// - Source Power ���� �ð� ����
// - LNG Mode ��ź ���� �߰�
// Self-test
// - Sensor Level Test ���� �߰�
// Gain Set �µ� ���� ���� (30 ~ 50)

// REV2.94 (2020-03-19 ���� 1:43:39)
// TEOS Range ���� (30.0 -> 100)

// REV2.95 (2020-03-23 ���� 4:22:52)
// Base Zero Warm-up ���� ���� ���� ����
// - �µ����� ����
// - �������� ���� �� ����
// Base Zero Warm-up ���� ���� �ð� ���� (20�� -> 10��)
// LNG Mode ��ź ���� ����

// REV2.96 (2020-03-24 ���� 9:12:53)
// Factory Measuring (View Status)
// - Output Channel ���� ���� ������ �߰�
// - Raw Deviation ������ �߰�
// - ������ ǥ�� ����
// - ���� �÷� ���� ����
// - i-Gas Mornitor ����
// - i-Peak & t-Peak Monitor ����
// Factory Cal
// - Base Set Update Error ����
// Factory System Init
// - Sensor Set (Skip Percentage ������ �⺻�� ����)
// - PoE / 485 ����
// - 1ä�� ��忡�� mA CH-2 Disable ����
// iPer ��� ���� ���� (bSpan ����)
// Base Zero And ���� ����

// REV2.97 (2020-03-30 ���� 9:40:34)
// Base Zero ���� ����
// - Timer ��ü �⺻�� 600 ����
// - �µ����� ���� ���� (1 -> 0.5dec)
// Vpt ����
// ���� �µ� ���� ���� ���� (-10 to 85 -> -20 to 85)

// REV2.98 (2020-04-06 ���� 9:13:09)
// �µ����� ����
// Measuring Status OcAvrg �߰�
// Measuring Status Up & Down Key Repeat Disable
// Manual Cal Update �� Base Cal Data ������Ʈ
// Factory Cal -> View Info
// - Channel Rotation Key ���� (Func -> Up & Down)
// - Base Zero Counts Clear (Func Long Key)
// Function Menu ���� �� Rotation ���� (Top->Bot & Bot->Top)
// Nand ID �߰� (CYPRESS, S34ML04G2)

// REV2.99 (2020-04-14 ���� 5:07:29)
// VBAT Scan Logic ���� (Factory -> System Info������ Ȱ��ȭ)
// Function Menu Rotation ����
// Maintenance Mode���� Interface -> Relay Setting Disable
// TEOS 100ppm Curve Data ����
// CAL Logic ����
// - All Base & Span ���� �߰�
// - Span ������ ǥ��
// - Span ������ ���� ���� ���� (Zero to Span ADC < Span Gas Resolution * 2 = failure)
// - Zero ������ ���� ����
// - View Info ������ �߰�

// REV3.00 (2020-04-20 ���� 2:54:06)
// �������� ���� ���� (�� ä�� �̻� 3% �̻��̸� ����)

// REV3.01 (2020-04-21 ���� 2:14:48)
// IR Sensor Number ���� (2.84 Down Grade Mapping)

// REV3.02 (2020-04-21 ���� 3:14:35)
// High Scale Ȧ�� ���� �� Gas Simulation �󵵼��� ���� ����

// REV3.03 (2020-05-11 ���� 4:42:54)
// Base Zero ���к��� (������ - ���簪) * 0.3 + ���簪

// REV3.04 (2020-05-14 ���� 2:36:49)
// Factory Measuring Status Parameter ����

// REV3.05 (2020-05-20 ���� 9:10:29)
// Modbus RTU Unit ID �������� ����
// Modbus TCP Unit ID ����
// Webpage ���� (Status View�� ����)
// Flow Control ������ ���� (��ü���� ������ ����)
// - ����: 180 ~ 60Hz, 20 ~ 30% Duty
// - ����:       60Hz,  1 ~ 31% Duty

// REV3.06 (2020-05-28 ���� 2:31:16)
// System EEPROM �±� �����и� �� �߰�
// �ø���ѹ� 11�ڸ� ����
// Flow Control �ʱⰪ ����
// �ø���ѹ� ������Ʈ ������ �и� (factory.htm)

// REV3.07 (2020-06-02 ���� 1:48:40)
// Serial Number �⺻�� ����

// REV3.08 (2020-06-02 ���� 2:58:34)
// URL Decoding ����
// TAG Prefix ����
// TAG �⺻�� ����
// TEOS SPAN �⺻�� ���� (50 -> 30ppm)

// REV3.09 (2020-06-03 ���� 8:55:14)
// URL Decoding Character �߰� �� ����

// REV3.10 (2020-06-03 ���� 7:02:48)
// Measuring Config ��������ȣ ���� �� ������ ���� ���� ����
// Com Status Icon ǥ�ù�� ���� (��� -> ����)

// REV3.11 (2020-06-04 ���� 4:56:00)
// IR Signal Not Stable �����ð� ���� (10�� -> 15��)
// Waepage 0.1 ���� (Parameter, Alarm �߰�)
// LNG KFI ��������

// REV3.12 (2020-06-10 ���� 8:58:26)
// Waepage 0.1 �Ϸ�
// Flow Trouble ���� ���� ( 80mL ���� �Ǵ� 1200mL �̻� -> Target -20% ���� �Ǵ� Target +20% �̻�)
// Flow Trouble ���� �ð� �ּ� ������ ���� (1�� -> 5��)
// Offset Drift ���� ����
// Error-50 �߰� (�����Ҵɻ��� 2�ð� �̻� ���ӵ� ���)

// REV3.13 (2020-06-22 ���� 3:50:39)
// Error Decoding �켱���� ���� (����: E-50 -> ä��n E-41,42,47, ����: ä��n E-41,42,47 -> E-50)

// REV3.14 (2020-07-14 ���� 10:27:52)
// Amp Cal Target Voltage ���� �߰�
// Sensor Cal �ʱⰪ ���� (Zero = 2.5[V], Span = 2.215[V])
// Not Stable Monitor �߰�

// REV3.15 (2020-07-20 ���� 9:57:52)
// Not Stable Mointor -> Filtering Status ����
// Measuring Filter Set �߰�

// REV3.16 (2020-07-27 ���� 5:03:06)
// Filtering Status Target ä�� �÷� ����

// REV3.17 (2020-09-14 ���� 5:18:45)
// Gas Simulation Mode ������ ǥ�� �����̽� ����
// Measuring Task Ȱ�� ä�θ� ����
// LMM-274-X025 C4H10 ����
// Dual IR Logic �߰�
// Sensor Type �߰�
// - LIM-272-CH
// - LIM-272-DH
// - LIM-272-IH
// - LIM-272-X018
// - LIM-272-X021
// - LIM-272-XXXX (Reserved)
// - LIM-272-X044
// - LIM-272-X040

// REV3.18 (2020-11-02 ���� 11:23:24)
// CO2 High Scale ���� (3% -> 5%)
// CO2 Alarm �� ���� (CO2)
// Span Cal ���п��� ����

// REV3.19 (2020-11-12 ���� 11:23:18)
// LIM-272-XXXX -> LIM-272-X054 ����
// CO2 5% �߰�

// REV3.20 (2020-11-19 ���� 10:33:00)
// ������ ������ �߰�
// Gain �������� ���� (Offset: 3.0[V] -> 3.5[V], Target: 2.5[V] -> 2.0[V])
// Gain �⺻���� ���� (Offset: 3.0[V] -> 3.3[V], Target: 2.5[V] -> 2.2[V])
// Sensor Set Init - Gain �⺻������ ����
// IR Offset Drift Check Margin ���� (200mV -> 100mV)
// IR Reference ������ iPer�� ����

// REV3.21 (2020-12-07 ���� 10:04:36)
// Base Zero Off �� Manual Base Zero ��Ȱ��ȭ
// Span Gas �� ���� ���� Cross Scale �����ǵ��� ����
// Cross Scale ���� ��ġ ���� (����� -> ���ǰ�����)
// CO2 �µ����� ����
// IR Curve Data ���� (CH2F2 QUAD)
// �����߰� (COS DUAL, C4F8 DUAL, ECH QUAD, SFA-1 QUAD, C4F6S QUAD)

// REV3.22 (2021-02-03 ���� 4:56:39)
// ä�θ��� ���� (ECH, SFA-1)

// REV3.23 (2021-02-04 ���� 2:47:03)
// Span Gas ǥ�ð� ���� (Cross Scale ������)
// Span Max ���� ���� (SpanMax = HighScale * (100.f / CrossScale) + 0.5f, �ִ밪 = 9999)

// REV3.24 (2021-02-05 ���� 1:52:13)
// Measuring Config Update ���� ���� (Cross Scale)
// SFA-1 �������͸� ����ä�� ���� (3.330(Target) -> 8.925)
// ECH, SFA-1 ������� ���� (a, n, iSpanScale, CrossScale)

// REV3.25 (2021-02-09 ���� 5:05:09)
// SFA-1 ������� ���� (a, n, CrossScale)
// Span Skip Cross Scale ����

// REV3.26 (2021-03-02 ���� 3:43:14)
// LIM-272-X054 ǥ�ð� ���� (DUAL-XXX -> DUAL-054)
// IR Gas List �߰� (10.100)
// iGas ���� Cross Scale ������� �ʵ��� ����
// Gas Name ������� �߰�
// Maintenance Auto Quit Timer �⺻�� ���� (60�� -> OFF)
// SFA-1 Range ���� (2000ppm -> 100%LEL)
// IR Gas List ���� (IR_GAS_03_330_HC_CH4_100_LEL, IR_GAS_03_330_HC_C4H10_100_LEL)

// REV3.27 (2021-03-18 ���� 11:42:46)
// SFA-1 ������� ���� (a, n, iSpanScale, CrossScale)
// System Error Hex Code ǥ�� ����

// REV3.28 (2021-03-29 ���� 2:41:02)
// �����߰� (IPA QUAD)
// Measuring Status �׸� �߰� (Error Status)

// REV3.29 (2021-04-08 ���� 4:38:45)
// Measuring Config ���� (LIM-272-CH TYPE-004 & 005 ����)

// REV3.30 (2021-05-13 ���� 3:24:43)
// ���� ��� ���� ���� �߰�(E-07)
// �����߰� (3.33, X027_4MS_100_LEL)

// REV3.31 (2021-06-01 ���� 12:59:03)
// COS �������͸� ������ ���� (IPA & Ethanol ���� ���� ��û - ���̴н�)

// REV3.32 (2021-06-02 ���� 5:43:31)
// COS �������͸� ������ ���� (FC-3283 ���� �߰� ���� ��û - ���̴н�)

// REV3.33 (2021-10-14 ���� 11:14:32)
// Buzzer Drive �߰�
// Pump PWM ���� ����
// brownout reset �߰� (LEVEL1 Falling Edge 2.13 ~ 2.24[V] Typ. 2.19[V])
// Sensor Type �߰� (LMM-274-X040(Rotary-B), LMM-274-X042(Rotary-C))
// �����߰� (ECH, NF3)
// SFA-1, 4MS Span Gas & Cross Scale �⺻�� ����

// REV3.34 (2021-12-15 ���� 10:20:58)
// Measuring Mode Item�� Test �׸� �и� (EEPROM ������, ���� OFF �� ����)
// NF3 ���� ���͸� ������ ����

// REV3.35 (2021-12-20 ���� 2:42:49)
// NDIR ���� Kelvin �µ� ����

// REV3.36 (2022-03-25 ���� 2:42:49)
// �������͸� ��� ���� (iSpanScale: CH2F2)

// REV3.37 (2022-04-05 ���� 9:47:47)
// �������͸� ��� ����
// - iSpanScale: CH4, LNG, CH3F, C5F8, TEOS, C4F6, SFA-1, IPA, 4MS, C4F6S, ECH
// - n: CH4, LNG, CH3F, SFA-1, IPA

// REV3.38 (2022-05-30 ���� 8:34:04)
// MODBUS Map ���� (�ý��۱׷� ��û����)
// �������͸� ���� (SFA-1, CH3F, C5F8, TEOS, IPA)
// �������͸� ���¿��� Base Zero ������� �ʵ��� ����

// REV3.39 (2022-06-14 ���� 3:01:03)
// �������͸� ���� (C5F8, IPA)

// REV3.40 (2022-09-06 ���� 3:23:17)
// �ű԰��� �߰� (GMP-02, C4H2F6, OMCTS, Toluene)
// LMM-274-X042 Channel-2 Filter ���� (9.000 -> 9.150)

// REV3.41 (2022-10-13 ���� 2:45:16)
// IPA RANGE �߰� (IPA 100 %LEL)

// REV3.42 (2022-10-31 ���� 7:24:13)
// System Error Scan �׸� �߰� (Cartridge & Cavity eADC)
// Sensor State Mapping �и�
// Modbus RTU & TCP ���� ���� �ּ� ����
// Modbus RTU & TCP Write Multiple Registers ���� ���� ����
// Scope Mode 8Hz �߰� ����
// Modbus Master �����߰� (MODBUS_RTU_MASTER_UNUSED_FUNCTION_CODE)
// Timer Frequency ���� ��Ȯ�� ��� (TIM_Base_InitTypeDef -> AutoReloadPreload �߰�)
// Flow Init Item �߰� (SYSTEM_EEP_FLOW_CTRL_P_CALCULATION_SCALE)
// FlowSet Target ���� Scale ����(972 = 0.5)
// FlowSet Span Decision ���� ���� (Result_Full < (FlowSet.Cal.Span_mL * 0.5f))

// REV3.43 (2022-11-16 ���� 5:34:33)
// LCD ��� ���� �߰�

// REV3.44 (2022-11-23 ���� 9:20:18)
// LCD Brightness EEP Prefix ����

// REV3.45 (2022-11-25 ���� 9:54:41)
// Measuring Timer IR Source Frequency ����
// �𵨺� RawMaxSum Limit ����
// N2O 1000 PPM �߰�
// COS 75 PPM �߰� (�űԼ��� GSA-972 ����)

// REV3.46 (2022-12-06 ���� 5:45:05)
// GTD-5100FN-H COS 75 PPM -> 50 PPM ����
// Maximum Power Test Mode �߰�
// Dual Sensor CH4 Range �߰� (100 %VOL)

// REV3.47 (2022-12-09 ���� 10:30:06)
// COS 75ppm a, n, 1st, 2nd Alarm ����

// REV3.48 (2022-12-12 ���� 4:21:08)
// Pump & Buzzer Drive Tree ���� (App -> BSP)
// Power Control �߰� (Battery Mode)
// Time Deviation Limit ���� (>1 -> >3)
// Modbus RTU & TCP Write Multiple Registers ���� �ּ� ���� ����
// �˶����� ����ġ ���� (Zero Skip + 1)

// REV3.49 (2023-01-26 ���� 8:50:57)
// BQ2579x, TPS25750 Driver �߰�

// REV3.50 (2023-03-15 ���� 9:23:47)
// �űԹ��� �߰� (HMDS, Silitane, Ethanol, Methanol, CTFE, C3F6 DUAL)
// Flow Set GTD-5100FN-H ���� Taget Full & Zero ���� ���� (���� ������ ���� �ҷ��� ����)

// REV3.51 (2023-03-16 ���� 11:34:14)
// ���͸� �̻�� ��忡�� BatCharger Sync Set �ǵ��� ����
// CTFE Unit ���� (%VOL -> PPM)
// BatMode Hardware Version Port ����
// Flow Set GTD-5100FN ���� Taget Full & Zero ���� ���� (���� ������ ���� �ҷ��� ����)

// REV3.52 (2023-03-20 ���� 11:29:24)
// Methanol iSpanScale & ZeroSkip ����

// REV3.53 (2023-03-20 ���� 3:45:53)
// �űԹ��� �߰� (Ethylene, C3F6 QUAD)

// REV3.54 (2023-04-19 ���� 5:45:49)
// TPS25750 Dead Battery Flag Clear Logic �߰�

// REV3.55 (2023-04-20 ���� 3:35:13)
// Battery Icon �߰�
// Low Battery Message & Auto Shut Dwon ����
// Buzzer ���� �߰�
// Portable & Buzzer Present Mode UI ����
// Relay_BlinkType ����

// REV3.56 (2023-05-16 ���� 4:27:43)
// Fully Charged LED �߰�
// Power S/W GPIO Port ����
// H/W Version AD Port ����

// REV3.57 (2023-05-30 ���� 9:21:33)
// Power Off Mode Log �߰�

// REV3.58 (2023-05-30 ���� 1:54:00)
// USB PD Configuration ���� (ȣȯ ������ Ȯ��)
// Power On �� Fully Charged LED Off
// Protable NF3 ���� ���� ���� (�������� ����� 06/01 ���)
// Battery Icon ���󺯰� �� Fully Charged ���� �߰�

// REV3.59 (2023-06-01 ���� 2:56:32)
// Battery Charger PFM ��Ȱ��ȭ
// Battery �ܷ� ���� ���� ����
// System Option Detection Time ���� (1msec * 1000)
// PowerKey PUPDR Register Init ���� (PULLUP -> NOPULL)
// �űԹ��� �߰� (FL300)
// Portable Mode System Info ����

// REV3.60 (2023-06-29 ���� 2:58:44)
// ��Ż��� ������ ��ġ ���� ����
// FL300 ������� ���� (SpanGas, CrossScale, a, n)

// REV3.61 (2023-07-05 ���� 2:56:13)
// mA ����ȭ ����

// REV3.62 (2023-07-11 ���� 10:39:31)
// E-11 mA ��� ���� ����

// REV3.63 (2023-08-25 ���� 2:28:43)
// Cartridge �߰�
// - Measuring Config ����
// - Gas Channel �߰� 5 -> 6 (Cartridge 2, Cavity 4)
// - Sensing_Process Fifo ����
// - Sensing_Process Task �̵� (TmSync_Common_Task -> Measuring_Task)
// - Sensor Sequence Number Check Logic ����
// - Factory Menu UI ����
// - Sensor EEPROM Write Logic ����
// Cartridge Sensor & Gas List �߰�
// MODBUS RTU & TCP Slave Write Register ������ �ּ� ���� ���� ����
// Dual Channel UI ����
// - Font ���� (29x48 -> 29x46)
// - ������ Dot ó�� ��ǥ ����
// - System Error ä�� �и�
// Output Gas Decision �������� �߰� (Sensor Warm Up �Ϸ� �� ����)

// REV3.64 (2023-09-25 ���� 7:04:14)
// EC_GAS_EC_DC_HCL_15_CH2CL2_500_PPM Dp ���� (1 -> 0)
// CT_SEN_EC_DC_HF_9 Config ���� ����
// Default Gas Info �׸��߰� (Maintenance Gas)
// Cross Scale ���Ѱ� ���� (5.00 -> 50.00)
// Maintenance Set CH-2 Decimal Point Mapping ���� ����
// Cartridge Error Item �߰� (HS300x: Humidity & Temperature Sensor, iADC, Flash)
// Cavity �̻�� Error Reserved ó�� (IR Sensor, IR Source, iADC, I2C Driver)
// System_Error_Peripheral �߰� (Cavity: Driver, Init, Cartridge: HS300x, iADC, Flash)
// Interference Gas Filtering Channel Remap (1, 2, 3, 4 -> 2, 3, 4, 5)
// RandomNoise, Deviation ���� ������ ���� (2 or 1 -> IR Sensor ä�� �� / 2)

// REV3.65 (2023-10-13 ���� 4:07:41)
// Cartridge Data Mapping
// Scope Mode ǥ�ÿ켱���� ���� (����ǥ�� -> ������)
// Sequence Number Check ���� ���� (TOP -> BOT)
// Factory Cal Channel ���� ���� ���� (Gain Target Voltage, Zero, Base Zero Set)
// Cavity Gain Target Voltage Lower Limit ���� (2.000[V] -> 1.800[V])
// System Config ���� ���� (Cavity -> Cartridge)
// Cartridge Config ���� (BuffSize & Period Cavity ����)
// Cartridge nRat, nPer ���� ����
// Debug Print Data ���� (Cartridge Data �߰�)

// REV3.66 (2023-10-20 ���� 10:54:18)
// CT_RAW_DV_ITEM ���� (TEMP, AVDD, DVDD, VCB, ICB0, ICB1)
// IR Calculation Beta ���� ���ؿµ� ���� (bzTemp -> mzTemp)
// Zero Cal Reverse ���� ����
// IPA 100 %LEL a, n, SpanGas ����
// Sensor & Gas �߰� (LIM-272-X127, NF3 200 PPM Dual)
// Gas Info �׸��߰� (mGain)
// Default Gas Info & Sensor Set Init �׸��߰� (mGain, TargetOffs, TargetGain)
// �űԹ��� �߰� (HMDS 100 %LEL, OMCTS 100 %LEL, TEOS_HT200)
// TEOS iSpanScale Ch1 ���� (IPA Filtering Margin Ȯ��)

// REV3.67 (2023-10-25 ���� 1:43:42)
// Measuring_Gas_Info_Update(), Factory_Sensor_Set_Init() AmpCalTarget Cartridge ���� ����
// Measuring_Gas_Info_Update(), Factory_Sensor_Set_Init() Cartridge DAC, TIA Data �߰�
// Cartridge_TiaType �߰�
// AmpCalTarget Cartridge ���� ���� ���� (300mV ~ 1900mV)
// Cartridge Gain Cal �߰�

// REV3.68 (2023-10-27 ���� 8:44:54)
// Cartridge Sensing Config Flash Address ����
// Function State Calibration Bit Menu ���� �� Ȱ��ȭ �ǵ��� ����
// Cartridge Gain ���� �� ��� ����ǵ��� ����
// Cartridge Gain Cal C-RATE ��� bZero �� ����

// REV3.69 (2023-10-27 ���� 10:54:04)
// Factroy Cal Info, Measuring Status ���� (Catridge Data ����)
// Channel Config Load Combined ��� Cavity Ref Channel Mapping ���� ����
// Peak Monitor �ʱ�ȭ ���� ����
// Cartridge Rgain Return Logic ���� (�������� �ٸ� ��츸 ����)
// DEBUG PRINT Data ����
// Cartridge Gain Cross Scale ����
// Alpha ���� IR ���� ���� (Absorbance -> Transmittance)
// PUMP_CTRL_DUTY_MAX ���� (31% -> 36%)
// Self test <-> Warm up ���� ����
// Normal Mode ���� ���� �� Measuring Lpf �ʱ�ȭ
// Normal Mode ���� �� Flow Trouble Timer �ʱ�ȭ & System Error Clear
// Warm up zero calibration �߰�

// REV3.70 (2023-11-14 ���� 9:33:46)
// Warm up zero Ȱ��ȭ ���� ���� (Portable & Cavity Dual & NF3 200ppm�� ��츸 Ȱ��ȭ)

// REV3.71 (2023-11-14 ���� 1:30:14)
// Cartridge �������� ���� (Zero to Span: 1.6[V] -> 1.4[V])
// CT_SEN_EC_DC_O3_1 RGAIN �⺻�� �߰� (512K)

// REV3.72 (2023-11-14 ���� 5:05:24)
// Warm up zero ���� �� Base zero NotSable ����
// View Cal Info Offs, Gain ä�� Mapping ���� ����
// SENSOR_EEP_CT_CHn_DEFAULT ���� (Zero: 0.4[V], Span: 1.8[V])
// Cartridge Target Offs ���� �� Bias ���е� ����ǵ��� ����
// Factory Sensor Set Init �ʱⰪ ���� (Maintenance Gas)
// Gas Percentage �ʱⰪ ���� (0 -> Maintenence Gas)
// Warm up zero Ȱ��ȭ �� Flow Self Test ���� ���� (50% -> 90%)
// Self Test Sensor Check �׸��߰� (CtgRawDvSumSum)
// Cartridge Data ���� (RawDvMax -> RawDvSum)

// REV3.73 (2023-11-23 ���� 9:22:44)
// UNI Type �߰�
// �űԹ��� �߰� (C3F6O 5000 PPM)
// Cal Decision Logic ���� (Low Response Factor: 1.25 -> 0.7)
// TEOS & HT200 Gas Name ���� (TEOS -> TEOS-HT200)
// HMDS 100 %LEL a, n �߰�

// REV3.74 (2023-11-24 ���� 2:59:02)
// Measuring Deviation Data ���� (CtgRawDvSum)
// Self test ���� ���� (Cartridge Channels ����)
// CARTRIDGE_BUF_SIZE ���� (180 -> 200)
// Scope Mode ǥ�ÿ��� ����
// UNI Type ���� (Power Sensing & Trouble ����)
// Measuring Filter Item ���� (Temp -> CtgTemp & CvtTemp)
// Log Print Data �߰� (BatSenTemp, CtgSenTemp, CtgSenHumi)
// CSTACK, HEAP Size ���� (16K -> 8K, 32K -> 16K)
// Cartridge Filtering Item �߰� (VCE, VRE, LPTIA_LPF_PeakDv)

// REV3.75 (2023-12-11 ���� 11:09:36)
// Cartridge R-Filter �⺻�� ���� (1M -> 20K)
// Cartridge R-Gain �⺻�� ����
// Cartridge DAC Reset & Error(Code-8, 2mA) �߰�
// Cavity �̻�� �� Source Frequency 10���� ���� (Measuring Timer �⺻��)
// Unified Type Detection Pin ���� (GPIOA.12 -> GPIOA.6)

// REV3.76 (2024-01-12 ���� 9:30:31)
// Cartridge DAC Error ������ ���� (15mV, 5��, 3ȸ -> 30mV, 10��, 5ȸ)
// Cartridge Default Gas Info REV0.1 ����
// Default Gas Info Item �߰� (OutDelayPer, OutDelaySec)
// Cavity Gain Target Voltage Lower Limit ���� (1.800[V] -> 1.400[V])
// O2 Linearity & Temperature ���� ����
// ������ĺ� Span Cal Response ���� (������, ����, ����)

// REV3.77 (2024-01-30 ���� 2:14:35)
// CB Type Span Cal Response ��� �� ǥ�� ���� ����
// Cartridge TIA R-FILTER ���� (20Kohm -> 1Mohm)
// Measuring Filter Type ���� View Status ���� (U16 -> U32)
// Self-test Sensor Check Timeout �и� ���� (60�� -> 900��)
// System Init ä�μ���ǥ�� ���� ���� (Sensor Set, Sensor Cal)
// Cartridge RandomNoise ���� ���� ���� (Zero & Vias -> Zero | Bias)
// IR NotStable ���� �߰� (offset unstable)
// IR NotStable Common Error �߰� (���͸� ���� ����ȭ ���� ������ �߻�)
// Measuring Config Set Number Memory ���� (System EEP -> Sensor EEP)
// Cartridge Response ����
// Interference Gas Filtering Channel Mapping
// O2 25%VOL �߰�
// Cal Limit �߰� (IR High ����)
// NF3 Portable WarmUpSec ���� (150 -> 120)

// REV3.78 (2024-02-19 ���� 9:31:05)
// O2 25%VOL Alarm Type ���� (Increas -> Decrease)
// Self-test Sensor Level Check ���� �߰� (Cavity Offset)
// Cartridge Sensor Lpf ����ġ �и� (16%)
// Cartridge TIA R-FILTER ���� (1Mohm -> 20Kohm)
// Cartridge Modbus Remap
// Cartridge Random Noise ������ �����

// REV3.79 (2024-02-23 ���� 9:53:15)
// Default TIA ���� (RLOAD = 0, RFILTER = DISCONNECT, RGAIN = DISCONNECT, SWMODE = OFF)
// Cartridge Undefined Sensor �߰�
// Cal Response Limit �Ϸ�
// CT_SEN_SIH4_CD_50 Gain & Cal Limit ����
// Measuring Filter Decision ��Ÿ ���� (CvtNotStable -> CtgNotStable)
// System Error Remap
// Sys Error Decoding (Cartridge & Dual Mode ����)
// Cartridge Error �߰� (Exceed current)
// IR Not Stable Common Error ����
// System Error �߻� �� Maintenance Gas ���
// �űԹ��� �߰� (C3H6 100 %LEL)

// REV3.80 (2024-03-04 ���� 5:11:21)
// VCE, VRE ����
// Cartridge PeakDvType �� Item �߰� (Zero, Bias)

// REV3.81 (2024-03-05 ���� 4:20:35)
// VZERO, VBIAS PeakDv Limit ����
// nPerDv Limit ���� (SiH4, HF, HCl, C2H4, NO)

// REV3.82 (2024-03-11 ���� 5:12:57)
// Self-test ���Ǻ��� (CtgRawDvSum_LPTIA_LPF: 1000 -> 2000)
// CtgExcCurrent Error Check ���� ���� (EC Type ����)
// CtgRandomNoise ���� ���� ���� (RawDvSumLmt_VZB -> PeakDvLmt_VZB)

// REV3.83 (2024-03-14 ���� 9:07:08) T-PJT �������� ����
// EC_DC_HCL_15 ��ü �������� Zero Skip �� Calibration Low Limit ���� (Skip: 7% -> 9%, Limit: 5% -> 7%)

// REV3.84 (2024-04-02 ���� 11:23:03)
// IR Error ���� �߰� (Offset Unstable)

// REV3.85 (2024-04-23 ���� 1:40:14)
// AvDvSumLmt 100���� ���� (���� �̿ϼ� �ӽ� ����)
// Portable C4F8 Dual Warm-up zero �� Beta ���� ����
// TPS25750 Patch Bundle Reload �߰� (Patch Mode ���� �� PBM Process ����)
// IR optical path contamination check Dual X127 ���� �߰�



#ifdef __VERSION_C__
	#define VERSION_EXT
#else
	#define VERSION_EXT extern
#endif

/* Start abbreviation */
/* End abbreviation */

/* Start Include */
#include "common.h"
/* End Include */

/* Start Define */
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
/* End Struct */

/* Start Function */
VERSION_EXT bool System_Ver_Load( void );
/* End Function */

/* Start Variable */
VERSION_EXT float		HardwareVersion;
/* End Variable */


#endif // __VERSION_H__


