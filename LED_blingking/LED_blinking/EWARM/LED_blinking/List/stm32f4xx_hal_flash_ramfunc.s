///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ramfunc.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW428.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ramfunc.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_flash_ramfunc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ramfunc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_flash_ramfunc.c
//    4   * @author  MCD Application Team
//    5   * @brief   FLASH RAMFUNC module driver.
//    6   *          This file provides a FLASH firmware functions which should be 
//    7   *          executed from internal SRAM
//    8   *            + Stop/Start the flash interface while System Run
//    9   *            + Enable/Disable the flash sleep while System Run
//   10   @verbatim
//   11   ==============================================================================
//   12                     ##### APIs executed from Internal RAM #####
//   13   ==============================================================================
//   14   [..]
//   15     *** ARM Compiler ***
//   16     --------------------
//   17     [..] RAM functions are defined using the toolchain options. 
//   18          Functions that are be executed in RAM should reside in a separate
//   19          source module. Using the 'Options for File' dialog you can simply change
//   20          the 'Code / Const' area of a module to a memory space in physical RAM.
//   21          Available memory areas are declared in the 'Target' tab of the 
//   22          Options for Target' dialog.
//   23 
//   24     *** ICCARM Compiler ***
//   25     -----------------------
//   26     [..] RAM functions are defined using a specific toolchain keyword "__ramfunc".
//   27 
//   28     *** GNU Compiler ***
//   29     --------------------
//   30     [..] RAM functions are defined using a specific toolchain attribute
//   31          "__attribute__((section(".RamFunc")))".
//   32   
//   33   @endverbatim         
//   34   ******************************************************************************
//   35   * @attention
//   36   *
//   37   * Copyright (c) 2017 STMicroelectronics.
//   38   * All rights reserved.
//   39   *
//   40   * This software is licensed under terms that can be found in the LICENSE file in
//   41   * the root directory of this software component.
//   42   * If no LICENSE file comes with this software, it is provided AS-IS.
//   43   ******************************************************************************
//   44   */ 
//   45 
//   46 /* Includes ------------------------------------------------------------------*/
//   47 #include "stm32f4xx_hal.h"
//   48 
//   49 /** @addtogroup STM32F4xx_HAL_Driver
//   50   * @{
//   51   */
//   52 
//   53 /** @defgroup FLASH_RAMFUNC FLASH RAMFUNC
//   54   * @brief FLASH functions executed from RAM
//   55   * @{
//   56   */
//   57 #ifdef HAL_FLASH_MODULE_ENABLED
//   58 #if defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) || defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || \ 
//   59     defined(STM32F412Rx) || defined(STM32F412Cx)
//   60 
//   61 /* Private typedef -----------------------------------------------------------*/
//   62 /* Private define ------------------------------------------------------------*/
//   63 /* Private macro -------------------------------------------------------------*/
//   64 /* Private variables ---------------------------------------------------------*/
//   65 /* Private function prototypes -----------------------------------------------*/
//   66 /* Exported functions --------------------------------------------------------*/
//   67 /** @defgroup FLASH_RAMFUNC_Exported_Functions FLASH RAMFUNC Exported Functions
//   68   * @{
//   69   */
//   70 
//   71 /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group1 Peripheral features functions executed from internal RAM 
//   72   *  @brief Peripheral Extended features functions 
//   73   *
//   74 @verbatim   
//   75 
//   76  ===============================================================================
//   77                       ##### ramfunc functions #####
//   78  ===============================================================================  
//   79     [..]
//   80     This subsection provides a set of functions that should be executed from RAM 
//   81     transfers.
//   82     
//   83 @endverbatim
//   84   * @{
//   85   */
//   86 
//   87 /**
//   88   * @brief Stop the flash interface while System Run
//   89   * @note  This mode is only available for STM32F41xxx/STM32F446xx devices. 
//   90   * @note  This mode couldn't be set while executing with the flash itself. 
//   91   *        It should be done with specific routine executed from RAM.     
//   92   * @retval HAL status
//   93   */
//   94 __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_StopFlashInterfaceClk(void)
//   95 {
//   96   /* Enable Power ctrl clock */
//   97   __HAL_RCC_PWR_CLK_ENABLE();
//   98   /* Stop the flash interface while System Run */  
//   99   SET_BIT(PWR->CR, PWR_CR_FISSR);
//  100    
//  101   return HAL_OK;
//  102 }
//  103 
//  104 /**
//  105   * @brief Start the flash interface while System Run
//  106   * @note  This mode is only available for STM32F411xx/STM32F446xx devices. 
//  107   * @note  This mode couldn't be set while executing with the flash itself. 
//  108   *        It should be done with specific routine executed from RAM.     
//  109   * @retval HAL status
//  110   */
//  111 __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_StartFlashInterfaceClk(void)
//  112 {
//  113   /* Enable Power ctrl clock */
//  114   __HAL_RCC_PWR_CLK_ENABLE();
//  115   /* Start the flash interface while System Run */
//  116   CLEAR_BIT(PWR->CR, PWR_CR_FISSR);
//  117 
//  118   return HAL_OK;
//  119 }
//  120 
//  121 /**
//  122   * @brief Enable the flash sleep while System Run
//  123   * @note  This mode is only available for STM32F41xxx/STM32F446xx devices. 
//  124   * @note  This mode could n't be set while executing with the flash itself. 
//  125   *        It should be done with specific routine executed from RAM.     
//  126   * @retval HAL status
//  127   */
//  128 __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_EnableFlashSleepMode(void)
//  129 {
//  130   /* Enable Power ctrl clock */
//  131   __HAL_RCC_PWR_CLK_ENABLE();
//  132   /* Enable the flash sleep while System Run */
//  133   SET_BIT(PWR->CR, PWR_CR_FMSSR);
//  134 
//  135   return HAL_OK;
//  136 }
//  137 
//  138 /**
//  139   * @brief Disable the flash sleep while System Run
//  140   * @note  This mode is only available for STM32F41xxx/STM32F446xx devices. 
//  141   * @note  This mode couldn't be set while executing with the flash itself. 
//  142   *        It should be done with specific routine executed from RAM.     
//  143   * @retval HAL status
//  144   */
//  145 __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_DisableFlashSleepMode(void)
//  146 {
//  147   /* Enable Power ctrl clock */
//  148   __HAL_RCC_PWR_CLK_ENABLE();
//  149   /* Disable the flash sleep while System Run */
//  150   CLEAR_BIT(PWR->CR, PWR_CR_FMSSR);
//  151   
//  152   return HAL_OK;
//  153 }
//  154 
//  155 /**
//  156   * @}
//  157   */
//  158 
//  159 /**
//  160   * @}
//  161   */
//  162 
//  163 #endif /* STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx */
//  164 #endif /* HAL_FLASH_MODULE_ENABLED */
//  165 /**
//  166   * @}
//  167   */
//  168 
//  169 /**
//  170   * @}
//  171   */
//  172 
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none