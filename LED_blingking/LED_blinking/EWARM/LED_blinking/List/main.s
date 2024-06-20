///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  18:34:07
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\main.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EWE248.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\main.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_Delay
        EXTERN HAL_GPIO_Init
        EXTERN HAL_GPIO_TogglePin
        EXTERN HAL_GPIO_WritePin
        EXTERN HAL_Init
        EXTERN HAL_RCC_ClockConfig
        EXTERN HAL_RCC_OscConfig
        EXTERN __aeabi_memclr4

        PUBLIC Error_Handler
        PUBLIC SystemClock_Config
        PUBLIC main
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\main.c
//    1 /* USER CODE BEGIN Header */
//    2 /**
//    3   ******************************************************************************
//    4   * @file           : main.c
//    5   * @brief          : Main program body
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
//   19 /* Includes ------------------------------------------------------------------*/
//   20 #include "main.h"
//   21 
//   22 
//   23 void SystemClock_Config(void);
//   24 static void MX_GPIO_Init(void);
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//   26 int main(void)
//   27 {
main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   28   HAL_Init();
          CFI FunCall HAL_Init
        BL       HAL_Init
//   29 
//   30   SystemClock_Config();
          CFI FunCall SystemClock_Config
        BL       SystemClock_Config
//   31 
//   32   MX_GPIO_Init();
          CFI FunCall MX_GPIO_Init
        BL       MX_GPIO_Init
//   33 
//   34   while (1)
//   35   {
//   36     //HAL_GPIO_WritePin(GPIOG, GPIO_PIN_12, GPIO_PIN_RESET);
//   37     //HAL_GPIO_WritePin(GPIOG, GPIO_PIN_12, GPIO_PIN_SET);
//   38     HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_12);
??main_0:
        LDR.N    R4,??DataTable2  ;; 0x40021800
        MOV      R1,#+4096
        MOVS     R0,R4
          CFI FunCall HAL_GPIO_TogglePin
        BL       HAL_GPIO_TogglePin
//   39     HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_13);
        MOV      R1,#+8192
        MOVS     R0,R4
          CFI FunCall HAL_GPIO_TogglePin
        BL       HAL_GPIO_TogglePin
//   40     HAL_Delay(100);
        MOVS     R0,#+100
          CFI FunCall HAL_Delay
        BL       HAL_Delay
        B.N      ??main_0
//   41    
//   42   }
//   43 }
          CFI EndBlock cfiBlock0
//   44 
//   45 /**
//   46   * @brief System Clock Configuration
//   47   * @retval None
//   48   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SystemClock_Config
        THUMB
//   49 void SystemClock_Config(void)
//   50 {
SystemClock_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUB      SP,SP,#+72
          CFI CFA R13+80
//   51   RCC_OscInitTypeDef RCC_OscInitStruct = {0};
        ADD      R0,SP,#+24
        MOVS     R1,#+48
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   52   RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   53 
//   54   /** Configure the main internal regulator output voltage
//   55   */
//   56   __HAL_RCC_PWR_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023840
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   57   __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2_2  ;; 0x40007000
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4000
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   58 
//   59   /** Initializes the RCC Oscillators according to the specified parameters
//   60   * in the RCC_OscInitTypeDef structure.
//   61   */
//   62   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
        MOVS     R0,#+2
        STR      R0,[SP, #+24]
//   63   RCC_OscInitStruct.HSIState = RCC_HSI_ON;
        MOVS     R0,#+1
        STR      R0,[SP, #+36]
//   64   RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
        MOVS     R0,#+16
        STR      R0,[SP, #+40]
//   65   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
        MOVS     R0,#+0
        STR      R0,[SP, #+48]
//   66   if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
        ADD      R0,SP,#+24
          CFI FunCall HAL_RCC_OscConfig
        BL       HAL_RCC_OscConfig
        CMP      R0,#+0
        BEQ.N    ??SystemClock_Config_0
//   67   {
//   68     Error_Handler();
          CFI FunCall Error_Handler
        BL       Error_Handler
//   69   }
//   70 
//   71   /** Initializes the CPU, AHB and APB buses clocks
//   72   */
//   73   RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
//   74                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
??SystemClock_Config_0:
        MOVS     R0,#+15
        STR      R0,[SP, #+4]
//   75   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   76   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   77   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   78   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   79 
//   80   if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
        MOVS     R1,#+0
        ADD      R0,SP,#+4
          CFI FunCall HAL_RCC_ClockConfig
        BL       HAL_RCC_ClockConfig
        CMP      R0,#+0
        BEQ.N    ??SystemClock_Config_1
//   81   {
//   82     Error_Handler();
          CFI FunCall Error_Handler
        BL       Error_Handler
//   83   }
//   84 }
??SystemClock_Config_1:
        ADD      SP,SP,#+76
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock1
//   85 
//   86 /**
//   87   * @brief GPIO Initialization Function
//   88   * @param None
//   89   * @retval None
//   90   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MX_GPIO_Init
        THUMB
//   91 static void MX_GPIO_Init(void)
//   92 {
MX_GPIO_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   93   GPIO_InitTypeDef GPIO_InitStruct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   94 /* USER CODE BEGIN MX_GPIO_Init_1 */
//   95 /* USER CODE END MX_GPIO_Init_1 */
//   96 
//   97   /* GPIO Ports Clock Enable */
//   98   __HAL_RCC_GPIOG_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2_3  ;; 0x40023830
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x40
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x40
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   99 
//  100   /*Configure GPIO pin Output Level */
//  101   HAL_GPIO_WritePin(GPIOG, GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_RESET);
        LDR.N    R4,??DataTable2  ;; 0x40021800
        MOVS     R2,#+0
        MOV      R1,#+12288
        MOVS     R0,R4
          CFI FunCall HAL_GPIO_WritePin
        BL       HAL_GPIO_WritePin
//  102 
//  103   /*Configure GPIO pins : PG12 PG13 */
//  104   GPIO_InitStruct.Pin = GPIO_PIN_12|GPIO_PIN_13;
        MOV      R0,#+12288
        STR      R0,[SP, #+4]
//  105   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  106   GPIO_InitStruct.Pull = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  107   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  108   HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        MOVS     R0,R4
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//  109 
//  110 /* USER CODE BEGIN MX_GPIO_Init_2 */
//  111 /* USER CODE END MX_GPIO_Init_2 */
//  112 }
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     0x40023840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     0x40023830
//  113 
//  114 /* USER CODE BEGIN 4 */
//  115 
//  116 /* USER CODE END 4 */
//  117 
//  118 /**
//  119   * @brief  This function is executed in case of error occurrence.
//  120   * @retval None
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Error_Handler
          CFI NoCalls
        THUMB
//  122 void Error_Handler(void)
//  123 {
//  124   /* USER CODE BEGIN Error_Handler_Debug */
//  125   /* User can add his own implementation to report the HAL error return state */
//  126   __disable_irq();
Error_Handler:
        CPSID    I
//  127   while (1)
??Error_Handler_0:
        B.N      ??Error_Handler_0
//  128   {
//  129   }
//  130   /* USER CODE END Error_Handler_Debug */
//  131 }
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 0, 0, 0, 0, 0

        END
//  132 
//  133 #ifdef  USE_FULL_ASSERT
//  134 /**
//  135   * @brief  Reports the name of the source file and the source line number
//  136   *         where the assert_param error has occurred.
//  137   * @param  file: pointer to the source file name
//  138   * @param  line: assert_param error line source number
//  139   * @retval None
//  140   */
//  141 void assert_failed(uint8_t *file, uint32_t line)
//  142 {
//  143   /* USER CODE BEGIN 6 */
//  144   /* User can add his own implementation to report the file name and line number,
//  145      ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
//  146   /* USER CODE END 6 */
//  147 }
//  148 #endif /* USE_FULL_ASSERT */
// 
//  88 bytes in section .rodata
// 282 bytes in section .text
// 
// 282 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
