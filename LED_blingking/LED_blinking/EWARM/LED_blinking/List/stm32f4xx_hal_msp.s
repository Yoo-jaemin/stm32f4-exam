///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_hal_msp.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW43A.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_hal_msp.c
//        -D USE_HAL_DRIVER -D STM32F407xx -lC
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List
//        -lA
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List
//        -o
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Full.h" -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\STM32F4xx_HAL_Driver\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\CMSIS\Include\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\CMSIS\Device\ST\STM32F4xx\Include\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/../Core/Inc\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/../Drivers/STM32F4xx_HAL_Driver/Inc\
//        -Ol)
//    Locale       =  C
//    List file    =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_msp.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_MspInit
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI Resource D0:64, D1:64, D2:64, D3:64, D4:64, D5:64, D6:64, D7:64
          CFI Resource D8:64, D9:64, D10:64, D11:64, D12:64, D13:64, D14:64
          CFI Resource D15:64
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI D0 Undefined
          CFI D1 Undefined
          CFI D2 Undefined
          CFI D3 Undefined
          CFI D4 Undefined
          CFI D5 Undefined
          CFI D6 Undefined
          CFI D7 Undefined
          CFI D8 SameValue
          CFI D9 SameValue
          CFI D10 SameValue
          CFI D11 SameValue
          CFI D12 SameValue
          CFI D13 SameValue
          CFI D14 SameValue
          CFI D15 SameValue
          CFI EndCommon cfiCommon0
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_hal_msp.c
//    1 /* USER CODE BEGIN Header */
//    2 /**
//    3   ******************************************************************************
//    4   * @file         stm32f4xx_hal_msp.c
//    5   * @brief        This file provides code for the MSP Initialization
//    6   *               and de-Initialization codes.
//    7   ******************************************************************************
//    8   * @attention
//    9   *
//   10   * Copyright (c) 2024 STMicroelectronics.
//   11   * All rights reserved.
//   12   *
//   13   * This software is licensed under terms that can be found in the LICENSE file
//   14   * in the root directory of this software component.
//   15   * If no LICENSE file comes with this software, it is provided AS-IS.
//   16   *
//   17   ******************************************************************************
//   18   */
//   19 /* USER CODE END Header */
//   20 
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "main.h"
//   23 /* USER CODE BEGIN Includes */
//   24 
//   25 /* USER CODE END Includes */
//   26 
//   27 /* Private typedef -----------------------------------------------------------*/
//   28 /* USER CODE BEGIN TD */
//   29 
//   30 /* USER CODE END TD */
//   31 
//   32 /* Private define ------------------------------------------------------------*/
//   33 /* USER CODE BEGIN Define */
//   34 
//   35 /* USER CODE END Define */
//   36 
//   37 /* Private macro -------------------------------------------------------------*/
//   38 /* USER CODE BEGIN Macro */
//   39 
//   40 /* USER CODE END Macro */
//   41 
//   42 /* Private variables ---------------------------------------------------------*/
//   43 /* USER CODE BEGIN PV */
//   44 
//   45 /* USER CODE END PV */
//   46 
//   47 /* Private function prototypes -----------------------------------------------*/
//   48 /* USER CODE BEGIN PFP */
//   49 
//   50 /* USER CODE END PFP */
//   51 
//   52 /* External functions --------------------------------------------------------*/
//   53 /* USER CODE BEGIN ExternalFunctions */
//   54 
//   55 /* USER CODE END ExternalFunctions */
//   56 
//   57 /* USER CODE BEGIN 0 */
//   58 
//   59 /* USER CODE END 0 */
//   60 /**
//   61   * Initializes the Global MSP.
//   62   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_MspInit
          CFI NoCalls
        THUMB
//   63 void HAL_MspInit(void)
//   64 {
HAL_MspInit:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//   65 
//   66   /* USER CODE BEGIN MspInit 0 */
//   67 
//   68   /* USER CODE END MspInit 0 */
//   69 
//   70   __HAL_RCC_SYSCFG_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??HAL_MspInit_0  ;; 0x40023844
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4000
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   71   __HAL_RCC_PWR_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??HAL_MspInit_0+0x4  ;; 0x40023840
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   72 
//   73   /* System interrupt init*/
//   74 
//   75   /* USER CODE BEGIN MspInit 1 */
//   76 
//   77   /* USER CODE END MspInit 1 */
//   78 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
        Nop      
        DATA
??HAL_MspInit_0:
        DATA32
        DC32     0x40023844
        DC32     0x40023840
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   79 
//   80 /* USER CODE BEGIN 1 */
//   81 
//   82 /* USER CODE END 1 */
// 
// 64 bytes in section .text
// 
// 64 bytes of CODE memory
//
//Errors: none
//Warnings: none
