///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_it.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW51B.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_it.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_it.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_IncTick

        PUBLIC BusFault_Handler
        PUBLIC DebugMon_Handler
        PUBLIC HardFault_Handler
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC PendSV_Handler
        PUBLIC SVC_Handler
        PUBLIC SysTick_Handler
        PUBLIC UsageFault_Handler
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\stm32f4xx_it.c
//    1 /* USER CODE BEGIN Header */
//    2 /**
//    3   ******************************************************************************
//    4   * @file    stm32f4xx_it.c
//    5   * @brief   Interrupt Service Routines.
//    6   ******************************************************************************
//    7   * @attention
//    8   *
//    9   * Copyright (c) 2024 STMicroelectronics.
//   10   * All rights reserved.
//   11   *
//   12   * This software is licensed under terms that can be found in the LICENSE file
//   13   * in the root directory of this software component.
//   14   * If no LICENSE file comes with this software, it is provided AS-IS.
//   15   *
//   16   ******************************************************************************
//   17   */
//   18 /* USER CODE END Header */
//   19 
//   20 /* Includes ------------------------------------------------------------------*/
//   21 #include "main.h"
//   22 #include "stm32f4xx_it.h"
//   23 /* Private includes ----------------------------------------------------------*/
//   24 /* USER CODE BEGIN Includes */
//   25 /* USER CODE END Includes */
//   26 
//   27 /* Private typedef -----------------------------------------------------------*/
//   28 /* USER CODE BEGIN TD */
//   29 
//   30 /* USER CODE END TD */
//   31 
//   32 /* Private define ------------------------------------------------------------*/
//   33 /* USER CODE BEGIN PD */
//   34 
//   35 /* USER CODE END PD */
//   36 
//   37 /* Private macro -------------------------------------------------------------*/
//   38 /* USER CODE BEGIN PM */
//   39 
//   40 /* USER CODE END PM */
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
//   52 /* Private user code ---------------------------------------------------------*/
//   53 /* USER CODE BEGIN 0 */
//   54 
//   55 /* USER CODE END 0 */
//   56 
//   57 /* External variables --------------------------------------------------------*/
//   58 
//   59 /* USER CODE BEGIN EV */
//   60 
//   61 /* USER CODE END EV */
//   62 
//   63 /******************************************************************************/
//   64 /*           Cortex-M4 Processor Interruption and Exception Handlers          */
//   65 /******************************************************************************/
//   66 /**
//   67   * @brief This function handles Non maskable interrupt.
//   68   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NMI_Handler
          CFI NoCalls
        THUMB
//   69 void NMI_Handler(void)
//   70 {
//   71   /* USER CODE BEGIN NonMaskableInt_IRQn 0 */
//   72 
//   73   /* USER CODE END NonMaskableInt_IRQn 0 */
//   74   /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
//   75    while (1)
NMI_Handler:
??NMI_Handler_0:
        B.N      ??NMI_Handler_0
//   76   {
//   77   }
//   78   /* USER CODE END NonMaskableInt_IRQn 1 */
//   79 }
          CFI EndBlock cfiBlock0
//   80 
//   81 /**
//   82   * @brief This function handles Hard fault interrupt.
//   83   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HardFault_Handler
          CFI NoCalls
        THUMB
//   84 void HardFault_Handler(void)
//   85 {
//   86   /* USER CODE BEGIN HardFault_IRQn 0 */
//   87 
//   88   /* USER CODE END HardFault_IRQn 0 */
//   89   while (1)
HardFault_Handler:
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0
//   90   {
//   91     /* USER CODE BEGIN W1_HardFault_IRQn 0 */
//   92     /* USER CODE END W1_HardFault_IRQn 0 */
//   93   }
//   94 }
          CFI EndBlock cfiBlock1
//   95 
//   96 /**
//   97   * @brief This function handles Memory management fault.
//   98   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MemManage_Handler
          CFI NoCalls
        THUMB
//   99 void MemManage_Handler(void)
//  100 {
//  101   /* USER CODE BEGIN MemoryManagement_IRQn 0 */
//  102 
//  103   /* USER CODE END MemoryManagement_IRQn 0 */
//  104   while (1)
MemManage_Handler:
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0
//  105   {
//  106     /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
//  107     /* USER CODE END W1_MemoryManagement_IRQn 0 */
//  108   }
//  109 }
          CFI EndBlock cfiBlock2
//  110 
//  111 /**
//  112   * @brief This function handles Pre-fetch fault, memory access fault.
//  113   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function BusFault_Handler
          CFI NoCalls
        THUMB
//  114 void BusFault_Handler(void)
//  115 {
//  116   /* USER CODE BEGIN BusFault_IRQn 0 */
//  117 
//  118   /* USER CODE END BusFault_IRQn 0 */
//  119   while (1)
BusFault_Handler:
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0
//  120   {
//  121     /* USER CODE BEGIN W1_BusFault_IRQn 0 */
//  122     /* USER CODE END W1_BusFault_IRQn 0 */
//  123   }
//  124 }
          CFI EndBlock cfiBlock3
//  125 
//  126 /**
//  127   * @brief This function handles Undefined instruction or illegal state.
//  128   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UsageFault_Handler
          CFI NoCalls
        THUMB
//  129 void UsageFault_Handler(void)
//  130 {
//  131   /* USER CODE BEGIN UsageFault_IRQn 0 */
//  132 
//  133   /* USER CODE END UsageFault_IRQn 0 */
//  134   while (1)
UsageFault_Handler:
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0
//  135   {
//  136     /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
//  137     /* USER CODE END W1_UsageFault_IRQn 0 */
//  138   }
//  139 }
          CFI EndBlock cfiBlock4
//  140 
//  141 /**
//  142   * @brief This function handles System service call via SWI instruction.
//  143   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SVC_Handler
          CFI NoCalls
        THUMB
//  144 void SVC_Handler(void)
//  145 {
//  146   /* USER CODE BEGIN SVCall_IRQn 0 */
//  147 
//  148   /* USER CODE END SVCall_IRQn 0 */
//  149   /* USER CODE BEGIN SVCall_IRQn 1 */
//  150 
//  151   /* USER CODE END SVCall_IRQn 1 */
//  152 }
SVC_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  153 
//  154 /**
//  155   * @brief This function handles Debug monitor.
//  156   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function DebugMon_Handler
          CFI NoCalls
        THUMB
//  157 void DebugMon_Handler(void)
//  158 {
//  159   /* USER CODE BEGIN DebugMonitor_IRQn 0 */
//  160 
//  161   /* USER CODE END DebugMonitor_IRQn 0 */
//  162   /* USER CODE BEGIN DebugMonitor_IRQn 1 */
//  163 
//  164   /* USER CODE END DebugMonitor_IRQn 1 */
//  165 }
DebugMon_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  166 
//  167 /**
//  168   * @brief This function handles Pendable request for system service.
//  169   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function PendSV_Handler
          CFI NoCalls
        THUMB
//  170 void PendSV_Handler(void)
//  171 {
//  172   /* USER CODE BEGIN PendSV_IRQn 0 */
//  173 
//  174   /* USER CODE END PendSV_IRQn 0 */
//  175   /* USER CODE BEGIN PendSV_IRQn 1 */
//  176 
//  177   /* USER CODE END PendSV_IRQn 1 */
//  178 }
PendSV_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  179 
//  180 /**
//  181   * @brief This function handles System tick timer.
//  182   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SysTick_Handler
        THUMB
//  183 void SysTick_Handler(void)
//  184 {
SysTick_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  185   /* USER CODE BEGIN SysTick_IRQn 0 */
//  186 
//  187   /* USER CODE END SysTick_IRQn 0 */
//  188   HAL_IncTick();
          CFI FunCall HAL_IncTick
        BL       HAL_IncTick
//  189   /* USER CODE BEGIN SysTick_IRQn 1 */
//  190 
//  191   /* USER CODE END SysTick_IRQn 1 */
//  192 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  193 
//  194 /******************************************************************************/
//  195 /* STM32F4xx Peripheral Interrupt Handlers                                    */
//  196 /* Add here the Interrupt Handlers for the used peripherals.                  */
//  197 /* For the available peripheral interrupt handler names,                      */
//  198 /* please refer to the startup file (startup_stm32f4xx.s).                    */
//  199 /******************************************************************************/
//  200 
//  201 /* USER CODE BEGIN 1 */
//  202 
//  203 /* USER CODE END 1 */
// 
// 24 bytes in section .text
// 
// 24 bytes of CODE memory
//
//Errors: none
//Warnings: none
