///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr_ex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW47A.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr_ex.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_pwr_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GetTick

        PUBLIC HAL_PWREx_ControlVoltageScaling
        PUBLIC HAL_PWREx_DisableBkUpReg
        PUBLIC HAL_PWREx_DisableFlashPowerDown
        PUBLIC HAL_PWREx_EnableBkUpReg
        PUBLIC HAL_PWREx_EnableFlashPowerDown
        PUBLIC HAL_PWREx_GetVoltageRange
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_pwr_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   Extended PWR HAL module driver.
//    6   *          This file provides firmware functions to manage the following 
//    7   *          functionalities of PWR extension peripheral:           
//    8   *           + Peripheral Extended features functions
//    9   *         
//   10   ******************************************************************************
//   11   * @attention
//   12   *
//   13   * Copyright (c) 2017 STMicroelectronics.
//   14   * All rights reserved.
//   15   *
//   16   * This software is licensed under terms that can be found in the LICENSE file in
//   17   * the root directory of this software component.
//   18   * If no LICENSE file comes with this software, it is provided AS-IS.
//   19   ******************************************************************************
//   20   */ 
//   21 
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "stm32f4xx_hal.h"
//   24 
//   25 /** @addtogroup STM32F4xx_HAL_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup PWREx PWREx
//   30   * @brief PWR HAL module driver
//   31   * @{
//   32   */
//   33 
//   34 #ifdef HAL_PWR_MODULE_ENABLED
//   35 
//   36 /* Private typedef -----------------------------------------------------------*/
//   37 /* Private define ------------------------------------------------------------*/
//   38 /** @addtogroup PWREx_Private_Constants
//   39   * @{
//   40   */    
//   41 #define PWR_OVERDRIVE_TIMEOUT_VALUE  1000U
//   42 #define PWR_UDERDRIVE_TIMEOUT_VALUE  1000U
//   43 #define PWR_BKPREG_TIMEOUT_VALUE     1000U
//   44 #define PWR_VOSRDY_TIMEOUT_VALUE     1000U
//   45 /**
//   46   * @}
//   47   */
//   48 
//   49    
//   50 /* Private macro -------------------------------------------------------------*/
//   51 /* Private variables ---------------------------------------------------------*/
//   52 /* Private function prototypes -----------------------------------------------*/
//   53 /* Private functions ---------------------------------------------------------*/
//   54 /** @defgroup PWREx_Exported_Functions PWREx Exported Functions
//   55   *  @{
//   56   */
//   57 
//   58 /** @defgroup PWREx_Exported_Functions_Group1 Peripheral Extended features functions 
//   59   *  @brief Peripheral Extended features functions 
//   60   *
//   61 @verbatim   
//   62 
//   63  ===============================================================================
//   64                  ##### Peripheral extended features functions #####
//   65  ===============================================================================
//   66 
//   67     *** Main and Backup Regulators configuration ***
//   68     ================================================
//   69     [..] 
//   70       (+) The backup domain includes 4 Kbytes of backup SRAM accessible only from 
//   71           the CPU, and address in 32-bit, 16-bit or 8-bit mode. Its content is 
//   72           retained even in Standby or VBAT mode when the low power backup regulator
//   73           is enabled. It can be considered as an internal EEPROM when VBAT is 
//   74           always present. You can use the HAL_PWREx_EnableBkUpReg() function to 
//   75           enable the low power backup regulator. 
//   76 
//   77       (+) When the backup domain is supplied by VDD (analog switch connected to VDD) 
//   78           the backup SRAM is powered from VDD which replaces the VBAT power supply to 
//   79           save battery life.
//   80 
//   81       (+) The backup SRAM is not mass erased by a tamper event. It is read 
//   82           protected to prevent confidential data, such as cryptographic private 
//   83           key, from being accessed. The backup SRAM can be erased only through 
//   84           the Flash interface when a protection level change from level 1 to 
//   85           level 0 is requested. 
//   86       -@- Refer to the description of Read protection (RDP) in the Flash 
//   87           programming manual.
//   88 
//   89       (+) The main internal regulator can be configured to have a tradeoff between 
//   90           performance and power consumption when the device does not operate at 
//   91           the maximum frequency. This is done through __HAL_PWR_MAINREGULATORMODE_CONFIG() 
//   92           macro which configure VOS bit in PWR_CR register
//   93           
//   94         Refer to the product datasheets for more details.
//   95 
//   96     *** FLASH Power Down configuration ****
//   97     =======================================
//   98     [..] 
//   99       (+) By setting the FPDS bit in the PWR_CR register by using the 
//  100           HAL_PWREx_EnableFlashPowerDown() function, the Flash memory also enters power 
//  101           down mode when the device enters Stop mode. When the Flash memory 
//  102           is in power down mode, an additional startup delay is incurred when 
//  103           waking up from Stop mode.
//  104           
//  105            (+) For STM32F42xxx/43xxx/446xx/469xx/479xx Devices, the scale can be modified only when the PLL 
//  106            is OFF and the HSI or HSE clock source is selected as system clock. 
//  107            The new value programmed is active only when the PLL is ON.
//  108            When the PLL is OFF, the voltage scale 3 is automatically selected. 
//  109         Refer to the datasheets for more details.
//  110 
//  111     *** Over-Drive and Under-Drive configuration ****
//  112     =================================================
//  113     [..]         
//  114        (+) For STM32F42xxx/43xxx/446xx/469xx/479xx Devices, in Run mode: the main regulator has
//  115            2 operating modes available:
//  116         (++) Normal mode: The CPU and core logic operate at maximum frequency at a given 
//  117              voltage scaling (scale 1, scale 2 or scale 3)
//  118         (++) Over-drive mode: This mode allows the CPU and the core logic to operate at a 
//  119             higher frequency than the normal mode for a given voltage scaling (scale 1,  
//  120             scale 2 or scale 3). This mode is enabled through HAL_PWREx_EnableOverDrive() function and
//  121             disabled by HAL_PWREx_DisableOverDrive() function, to enter or exit from Over-drive mode please follow 
//  122             the sequence described in Reference manual.
//  123              
//  124        (+) For STM32F42xxx/43xxx/446xx/469xx/479xx Devices, in Stop mode: the main regulator or low power regulator 
//  125            supplies a low power voltage to the 1.2V domain, thus preserving the content of registers 
//  126            and internal SRAM. 2 operating modes are available:
//  127          (++) Normal mode: the 1.2V domain is preserved in nominal leakage mode. This mode is only 
//  128               available when the main regulator or the low power regulator is used in Scale 3 or 
//  129               low voltage mode.
//  130          (++) Under-drive mode: the 1.2V domain is preserved in reduced leakage mode. This mode is only
//  131               available when the main regulator or the low power regulator is in low voltage mode.
//  132 
//  133 @endverbatim
//  134   * @{
//  135   */
//  136 
//  137 /**
//  138   * @brief Enables the Backup Regulator.
//  139   * @retval HAL status
//  140   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_PWREx_EnableBkUpReg
        THUMB
//  141 HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg(void)
//  142 {
HAL_PWREx_EnableBkUpReg:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  143   uint32_t tickstart = 0U;
        MOVS     R0,#+0
//  144 
//  145   *(__IO uint32_t *) CSR_BRE_BB = (uint32_t)ENABLE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x420e00a4
        STR      R0,[R1, #+0]
//  146 
//  147   /* Get tick */
//  148   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
//  149 
//  150   /* Wait till Backup regulator ready flag is set */  
//  151   while(__HAL_PWR_GET_FLAG(PWR_FLAG_BRR) == RESET)
??HAL_PWREx_EnableBkUpReg_0:
        LDR.N    R0,??DataTable5_1  ;; 0x40007004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BMI.N    ??HAL_PWREx_EnableBkUpReg_1
//  152   {
//  153     if((HAL_GetTick() - tickstart ) > PWR_BKPREG_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        MOVW     R1,#+1001
        CMP      R0,R1
        BCC.N    ??HAL_PWREx_EnableBkUpReg_0
//  154     {
//  155       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_PWREx_EnableBkUpReg_2
//  156     } 
//  157   }
//  158   return HAL_OK;
??HAL_PWREx_EnableBkUpReg_1:
        MOVS     R0,#+0
??HAL_PWREx_EnableBkUpReg_2:
        POP      {R4,PC}          ;; return
//  159 }
          CFI EndBlock cfiBlock0
//  160 
//  161 /**
//  162   * @brief Disables the Backup Regulator.
//  163   * @retval HAL status
//  164   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_PWREx_DisableBkUpReg
        THUMB
//  165 HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg(void)
//  166 {
HAL_PWREx_DisableBkUpReg:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  167   uint32_t tickstart = 0U;
        MOVS     R0,#+0
//  168 
//  169   *(__IO uint32_t *) CSR_BRE_BB = (uint32_t)DISABLE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x420e00a4
        STR      R0,[R1, #+0]
//  170 
//  171   /* Get tick */
//  172   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
//  173 
//  174   /* Wait till Backup regulator ready flag is set */  
//  175   while(__HAL_PWR_GET_FLAG(PWR_FLAG_BRR) != RESET)
??HAL_PWREx_DisableBkUpReg_0:
        LDR.N    R0,??DataTable5_1  ;; 0x40007004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_PWREx_DisableBkUpReg_1
//  176   {
//  177     if((HAL_GetTick() - tickstart ) > PWR_BKPREG_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        MOVW     R1,#+1001
        CMP      R0,R1
        BCC.N    ??HAL_PWREx_DisableBkUpReg_0
//  178     {
//  179       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_PWREx_DisableBkUpReg_2
//  180     } 
//  181   }
//  182   return HAL_OK;
??HAL_PWREx_DisableBkUpReg_1:
        MOVS     R0,#+0
??HAL_PWREx_DisableBkUpReg_2:
        POP      {R4,PC}          ;; return
//  183 }
          CFI EndBlock cfiBlock1
//  184 
//  185 /**
//  186   * @brief Enables the Flash Power Down in Stop mode.
//  187   * @retval None
//  188   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_PWREx_EnableFlashPowerDown
          CFI NoCalls
        THUMB
//  189 void HAL_PWREx_EnableFlashPowerDown(void)
//  190 {
//  191   *(__IO uint32_t *) CR_FPDS_BB = (uint32_t)ENABLE;
HAL_PWREx_EnableFlashPowerDown:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_2  ;; 0x420e0024
        STR      R0,[R1, #+0]
//  192 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  193 
//  194 /**
//  195   * @brief Disables the Flash Power Down in Stop mode.
//  196   * @retval None
//  197   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_PWREx_DisableFlashPowerDown
          CFI NoCalls
        THUMB
//  198 void HAL_PWREx_DisableFlashPowerDown(void)
//  199 {
//  200   *(__IO uint32_t *) CR_FPDS_BB = (uint32_t)DISABLE;
HAL_PWREx_DisableFlashPowerDown:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_2  ;; 0x420e0024
        STR      R0,[R1, #+0]
//  201 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  202 
//  203 /**
//  204   * @brief Return Voltage Scaling Range.
//  205   * @retval The configured scale for the regulator voltage(VOS bit field).
//  206   *         The returned value can be one of the following:
//  207   *            - @arg PWR_REGULATOR_VOLTAGE_SCALE1: Regulator voltage output Scale 1 mode
//  208   *            - @arg PWR_REGULATOR_VOLTAGE_SCALE2: Regulator voltage output Scale 2 mode
//  209   *            - @arg PWR_REGULATOR_VOLTAGE_SCALE3: Regulator voltage output Scale 3 mode
//  210   */  

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_PWREx_GetVoltageRange
          CFI NoCalls
        THUMB
//  211 uint32_t HAL_PWREx_GetVoltageRange(void)
//  212 {
//  213   return (PWR->CR & PWR_CR_VOS);
HAL_PWREx_GetVoltageRange:
        LDR.N    R0,??DataTable5_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4000
        BX       LR               ;; return
//  214 }
          CFI EndBlock cfiBlock4
//  215 
//  216 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx)
//  217 /**
//  218   * @brief Configures the main internal regulator output voltage.
//  219   * @param  VoltageScaling specifies the regulator output voltage to achieve
//  220   *         a tradeoff between performance and power consumption.
//  221   *          This parameter can be one of the following values:
//  222   *            @arg PWR_REGULATOR_VOLTAGE_SCALE1: Regulator voltage output range 1 mode,
//  223   *                                               the maximum value of fHCLK = 168 MHz.
//  224   *            @arg PWR_REGULATOR_VOLTAGE_SCALE2: Regulator voltage output range 2 mode,
//  225   *                                               the maximum value of fHCLK = 144 MHz.
//  226   * @note  When moving from Range 1 to Range 2, the system frequency must be decreased to
//  227   *        a value below 144 MHz before calling HAL_PWREx_ConfigVoltageScaling() API.
//  228   *        When moving from Range 2 to Range 1, the system frequency can be increased to
//  229   *        a value up to 168 MHz after calling HAL_PWREx_ConfigVoltageScaling() API.
//  230   * @retval HAL Status
//  231   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_PWREx_ControlVoltageScaling
        THUMB
//  232 HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling)
//  233 {
HAL_PWREx_ControlVoltageScaling:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//  234   uint32_t tickstart = 0U;
        MOVS     R1,#+0
//  235   
//  236   assert_param(IS_PWR_VOLTAGE_SCALING_RANGE(VoltageScaling));
//  237   
//  238   /* Enable PWR RCC Clock Peripheral */
//  239   __HAL_RCC_PWR_CLK_ENABLE();
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR.N    R1,??DataTable5_4  ;; 0x40023840
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x10000000
        STR      R2,[R1, #+0]
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x10000000
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
//  240   
//  241   /* Set Range */
//  242   __HAL_PWR_VOLTAGESCALING_CONFIG(VoltageScaling);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR.N    R1,??DataTable5_3  ;; 0x40007000
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0x4000
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        LDR      R0,[R1, #+0]
        ANDS     R0,R0,#0x4000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  243   
//  244   /* Get Start Tick*/
//  245   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
//  246   while((__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY) == RESET))
??HAL_PWREx_ControlVoltageScaling_0:
        LDR.N    R0,??DataTable5_1  ;; 0x40007004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BMI.N    ??HAL_PWREx_ControlVoltageScaling_1
//  247   {
//  248     if((HAL_GetTick() - tickstart ) > PWR_VOSRDY_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        MOVW     R1,#+1001
        CMP      R0,R1
        BCC.N    ??HAL_PWREx_ControlVoltageScaling_0
//  249     {
//  250       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_PWREx_ControlVoltageScaling_2
//  251     } 
//  252   }
//  253 
//  254   return HAL_OK;
??HAL_PWREx_ControlVoltageScaling_1:
        MOVS     R0,#+0
??HAL_PWREx_ControlVoltageScaling_2:
        POP      {R1,R2,R4,PC}    ;; return
//  255 }
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DATA32
        DC32     0x420e00a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DATA32
        DC32     0x40007004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DATA32
        DC32     0x420e0024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DATA32
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DATA32
        DC32     0x40023840

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  256 
//  257 #elif defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) || \ 
//  258       defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || \ 
//  259       defined(STM32F410Rx) || defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F469xx) || \ 
//  260       defined(STM32F479xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) || \ 
//  261       defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
//  262 /**
//  263   * @brief Configures the main internal regulator output voltage.
//  264   * @param  VoltageScaling specifies the regulator output voltage to achieve
//  265   *         a tradeoff between performance and power consumption.
//  266   *          This parameter can be one of the following values:
//  267   *            @arg PWR_REGULATOR_VOLTAGE_SCALE1: Regulator voltage output range 1 mode,
//  268   *                                               the maximum value of fHCLK is 168 MHz. It can be extended to
//  269   *                                               180 MHz by activating the over-drive mode.
//  270   *            @arg PWR_REGULATOR_VOLTAGE_SCALE2: Regulator voltage output range 2 mode,
//  271   *                                               the maximum value of fHCLK is 144 MHz. It can be extended to,                
//  272   *                                               168 MHz by activating the over-drive mode.
//  273   *            @arg PWR_REGULATOR_VOLTAGE_SCALE3: Regulator voltage output range 3 mode,
//  274   *                                               the maximum value of fHCLK is 120 MHz.
//  275   * @note To update the system clock frequency(SYSCLK):
//  276   *        - Set the HSI or HSE as system clock frequency using the HAL_RCC_ClockConfig().
//  277   *        - Call the HAL_RCC_OscConfig() to configure the PLL.
//  278   *        - Call HAL_PWREx_ConfigVoltageScaling() API to adjust the voltage scale.
//  279   *        - Set the new system clock frequency using the HAL_RCC_ClockConfig().
//  280   * @note The scale can be modified only when the HSI or HSE clock source is selected 
//  281   *        as system clock source, otherwise the API returns HAL_ERROR.  
//  282   * @note When the PLL is OFF, the voltage scale 3 is automatically selected and the VOS bits
//  283   *       value in the PWR_CR1 register are not taken in account.
//  284   * @note This API forces the PLL state ON to allow the possibility to configure the voltage scale 1 or 2.
//  285   * @note The new voltage scale is active only when the PLL is ON.  
//  286   * @retval HAL Status
//  287   */
//  288 HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling)
//  289 {
//  290   uint32_t tickstart = 0U;
//  291   
//  292   assert_param(IS_PWR_VOLTAGE_SCALING_RANGE(VoltageScaling));
//  293   
//  294   /* Enable PWR RCC Clock Peripheral */
//  295   __HAL_RCC_PWR_CLK_ENABLE();
//  296   
//  297   /* Check if the PLL is used as system clock or not */
//  298   if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
//  299   {
//  300     /* Disable the main PLL */
//  301     __HAL_RCC_PLL_DISABLE();
//  302     
//  303     /* Get Start Tick */
//  304     tickstart = HAL_GetTick();    
//  305     /* Wait till PLL is disabled */  
//  306     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
//  307     {
//  308       if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
//  309       {
//  310         return HAL_TIMEOUT;
//  311       }
//  312     }
//  313     
//  314     /* Set Range */
//  315     __HAL_PWR_VOLTAGESCALING_CONFIG(VoltageScaling);
//  316     
//  317     /* Enable the main PLL */
//  318     __HAL_RCC_PLL_ENABLE();
//  319     
//  320     /* Get Start Tick */
//  321     tickstart = HAL_GetTick();
//  322     /* Wait till PLL is ready */  
//  323     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
//  324     {
//  325       if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
//  326       {
//  327         return HAL_TIMEOUT;
//  328       } 
//  329     }
//  330     
//  331     /* Get Start Tick */
//  332     tickstart = HAL_GetTick();
//  333     while((__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY) == RESET))
//  334     {
//  335       if((HAL_GetTick() - tickstart ) > PWR_VOSRDY_TIMEOUT_VALUE)
//  336       {
//  337         return HAL_TIMEOUT;
//  338       } 
//  339     }
//  340   }
//  341   else
//  342   {
//  343     return HAL_ERROR;
//  344   }
//  345 
//  346   return HAL_OK;
//  347 }
//  348 #endif /* STM32F405xx || STM32F415xx || STM32F407xx || STM32F417xx */
//  349 
//  350 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) ||\ 
//  351     defined(STM32F411xE) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) ||\ 
//  352     defined(STM32F413xx) || defined(STM32F423xx)
//  353 /**
//  354   * @brief Enables Main Regulator low voltage mode.
//  355   * @note  This mode is only available for STM32F401xx/STM32F410xx/STM32F411xx/STM32F412Zx/STM32F412Rx/STM32F412Vx/STM32F412Cx/
//  356   *        STM32F413xx/STM32F423xx devices.   
//  357   * @retval None
//  358   */
//  359 void HAL_PWREx_EnableMainRegulatorLowVoltage(void)
//  360 {
//  361   *(__IO uint32_t *) CR_MRLVDS_BB = (uint32_t)ENABLE;
//  362 }
//  363 
//  364 /**
//  365   * @brief Disables Main Regulator low voltage mode.
//  366   * @note  This mode is only available for STM32F401xx/STM32F410xx/STM32F411xx/STM32F412Zx/STM32F412Rx/STM32F412Vx/STM32F412Cx/
//  367   *        STM32F413xx/STM32F423xxdevices. 
//  368   * @retval None
//  369   */
//  370 void HAL_PWREx_DisableMainRegulatorLowVoltage(void)
//  371 {
//  372   *(__IO uint32_t *) CR_MRLVDS_BB = (uint32_t)DISABLE;
//  373 }
//  374 
//  375 /**
//  376   * @brief Enables Low Power Regulator low voltage mode.
//  377   * @note  This mode is only available for STM32F401xx/STM32F410xx/STM32F411xx/STM32F412Zx/STM32F412Rx/STM32F412Vx/STM32F412Cx/
//  378   *        STM32F413xx/STM32F423xx devices.   
//  379   * @retval None
//  380   */
//  381 void HAL_PWREx_EnableLowRegulatorLowVoltage(void)
//  382 {
//  383   *(__IO uint32_t *) CR_LPLVDS_BB = (uint32_t)ENABLE;
//  384 }
//  385 
//  386 /**
//  387   * @brief Disables Low Power Regulator low voltage mode.
//  388   * @note  This mode is only available for STM32F401xx/STM32F410xx/STM32F411xx/STM32F412Zx/STM32F412Rx/STM32F412Vx/STM32F412Cx/
//  389   *        STM32F413xx/STM32F423xx  devices.   
//  390   * @retval None
//  391   */
//  392 void HAL_PWREx_DisableLowRegulatorLowVoltage(void)
//  393 {
//  394   *(__IO uint32_t *) CR_LPLVDS_BB = (uint32_t)DISABLE;
//  395 }
//  396 
//  397 #endif /* STM32F401xC || STM32F401xE || STM32F410xx || STM32F411xE || STM32F412Zx || STM32F412Rx || STM32F412Vx || STM32F412Cx ||
//  398           STM32F413xx || STM32F423xx */
//  399 
//  400 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) ||\ 
//  401     defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  402 /**
//  403   * @brief  Activates the Over-Drive mode.
//  404   * @note   This function can be used only for STM32F42xx/STM32F43xx/STM32F446xx/STM32F469xx/STM32F479xx devices.
//  405   *         This mode allows the CPU and the core logic to operate at a higher frequency
//  406   *         than the normal mode for a given voltage scaling (scale 1, scale 2 or scale 3).   
//  407   * @note   It is recommended to enter or exit Over-drive mode when the application is not running 
//  408   *         critical tasks and when the system clock source is either HSI or HSE. 
//  409   *         During the Over-drive switch activation, no peripheral clocks should be enabled.   
//  410   *         The peripheral clocks must be enabled once the Over-drive mode is activated.   
//  411   * @retval HAL status
//  412   */
//  413 HAL_StatusTypeDef HAL_PWREx_EnableOverDrive(void)
//  414 {
//  415   uint32_t tickstart = 0U;
//  416 
//  417   __HAL_RCC_PWR_CLK_ENABLE();
//  418   
//  419   /* Enable the Over-drive to extend the clock frequency to 180 Mhz */
//  420   __HAL_PWR_OVERDRIVE_ENABLE();
//  421 
//  422   /* Get tick */
//  423   tickstart = HAL_GetTick();
//  424 
//  425   while(!__HAL_PWR_GET_FLAG(PWR_FLAG_ODRDY))
//  426   {
//  427     if((HAL_GetTick() - tickstart) > PWR_OVERDRIVE_TIMEOUT_VALUE)
//  428     {
//  429       return HAL_TIMEOUT;
//  430     }
//  431   }
//  432   
//  433   /* Enable the Over-drive switch */
//  434   __HAL_PWR_OVERDRIVESWITCHING_ENABLE();
//  435 
//  436   /* Get tick */
//  437   tickstart = HAL_GetTick();
//  438 
//  439   while(!__HAL_PWR_GET_FLAG(PWR_FLAG_ODSWRDY))
//  440   {
//  441     if((HAL_GetTick() - tickstart ) > PWR_OVERDRIVE_TIMEOUT_VALUE)
//  442     {
//  443       return HAL_TIMEOUT;
//  444     }
//  445   } 
//  446   return HAL_OK;
//  447 }
//  448 
//  449 /**
//  450   * @brief  Deactivates the Over-Drive mode.
//  451   * @note   This function can be used only for STM32F42xx/STM32F43xx/STM32F446xx/STM32F469xx/STM32F479xx devices.
//  452   *         This mode allows the CPU and the core logic to operate at a higher frequency
//  453   *         than the normal mode for a given voltage scaling (scale 1, scale 2 or scale 3).    
//  454   * @note   It is recommended to enter or exit Over-drive mode when the application is not running 
//  455   *         critical tasks and when the system clock source is either HSI or HSE. 
//  456   *         During the Over-drive switch activation, no peripheral clocks should be enabled.   
//  457   *         The peripheral clocks must be enabled once the Over-drive mode is activated.
//  458   * @retval HAL status
//  459   */
//  460 HAL_StatusTypeDef HAL_PWREx_DisableOverDrive(void)
//  461 {
//  462   uint32_t tickstart = 0U;
//  463   
//  464   __HAL_RCC_PWR_CLK_ENABLE();
//  465     
//  466   /* Disable the Over-drive switch */
//  467   __HAL_PWR_OVERDRIVESWITCHING_DISABLE();
//  468   
//  469   /* Get tick */
//  470   tickstart = HAL_GetTick();
//  471  
//  472   while(__HAL_PWR_GET_FLAG(PWR_FLAG_ODSWRDY))
//  473   {
//  474     if((HAL_GetTick() - tickstart) > PWR_OVERDRIVE_TIMEOUT_VALUE)
//  475     {
//  476       return HAL_TIMEOUT;
//  477     }
//  478   } 
//  479   
//  480   /* Disable the Over-drive */
//  481   __HAL_PWR_OVERDRIVE_DISABLE();
//  482 
//  483   /* Get tick */
//  484   tickstart = HAL_GetTick();
//  485 
//  486   while(__HAL_PWR_GET_FLAG(PWR_FLAG_ODRDY))
//  487   {
//  488     if((HAL_GetTick() - tickstart) > PWR_OVERDRIVE_TIMEOUT_VALUE)
//  489     {
//  490       return HAL_TIMEOUT;
//  491     }
//  492   }
//  493   
//  494   return HAL_OK;
//  495 }
//  496 
//  497 /**
//  498   * @brief  Enters in Under-Drive STOP mode.
//  499   *  
//  500   * @note   This mode is only available for STM32F42xxx/STM32F43xxx/STM32F446xx/STM32F469xx/STM32F479xx devices.
//  501   * 
//  502   * @note    This mode can be selected only when the Under-Drive is already active 
//  503   *   
//  504   * @note    This mode is enabled only with STOP low power mode.
//  505   *          In this mode, the 1.2V domain is preserved in reduced leakage mode. This 
//  506   *          mode is only available when the main regulator or the low power regulator 
//  507   *          is in low voltage mode
//  508   *        
//  509   * @note   If the Under-drive mode was enabled, it is automatically disabled after 
//  510   *         exiting Stop mode. 
//  511   *         When the voltage regulator operates in Under-drive mode, an additional  
//  512   *         startup delay is induced when waking up from Stop mode.
//  513   *                    
//  514   * @note   In Stop mode, all I/O pins keep the same state as in Run mode.
//  515   *   
//  516   * @note   When exiting Stop mode by issuing an interrupt or a wake-up event, 
//  517   *         the HSI RC oscillator is selected as system clock.
//  518   *           
//  519   * @note   When the voltage regulator operates in low power mode, an additional 
//  520   *         startup delay is incurred when waking up from Stop mode. 
//  521   *         By keeping the internal regulator ON during Stop mode, the consumption 
//  522   *         is higher although the startup time is reduced.
//  523   *     
//  524   * @param  Regulator specifies the regulator state in STOP mode.
//  525   *          This parameter can be one of the following values:
//  526   *            @arg PWR_MAINREGULATOR_UNDERDRIVE_ON:  Main Regulator in under-drive mode 
//  527   *                 and Flash memory in power-down when the device is in Stop under-drive mode
//  528   *            @arg PWR_LOWPOWERREGULATOR_UNDERDRIVE_ON:  Low Power Regulator in under-drive mode 
//  529   *                and Flash memory in power-down when the device is in Stop under-drive mode
//  530   * @param  STOPEntry specifies if STOP mode in entered with WFI or WFE instruction.
//  531   *          This parameter can be one of the following values:
//  532   *            @arg PWR_SLEEPENTRY_WFI: enter STOP mode with WFI instruction
//  533   *            @arg PWR_SLEEPENTRY_WFE: enter STOP mode with WFE instruction
//  534   * @retval None
//  535   */
//  536 HAL_StatusTypeDef HAL_PWREx_EnterUnderDriveSTOPMode(uint32_t Regulator, uint8_t STOPEntry)
//  537 {
//  538   uint32_t tmpreg1 = 0U;
//  539 
//  540   /* Check the parameters */
//  541   assert_param(IS_PWR_REGULATOR_UNDERDRIVE(Regulator));
//  542   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
//  543   
//  544   /* Enable Power ctrl clock */
//  545   __HAL_RCC_PWR_CLK_ENABLE();
//  546   /* Enable the Under-drive Mode ---------------------------------------------*/
//  547   /* Clear Under-drive flag */
//  548   __HAL_PWR_CLEAR_ODRUDR_FLAG();
//  549   
//  550   /* Enable the Under-drive */ 
//  551   __HAL_PWR_UNDERDRIVE_ENABLE();
//  552 
//  553   /* Select the regulator state in STOP mode ---------------------------------*/
//  554   tmpreg1 = PWR->CR;
//  555   /* Clear PDDS, LPDS, MRLUDS and LPLUDS bits */
//  556   tmpreg1 &= (uint32_t)~(PWR_CR_PDDS | PWR_CR_LPDS | PWR_CR_LPUDS | PWR_CR_MRUDS);
//  557   
//  558   /* Set LPDS, MRLUDS and LPLUDS bits according to PWR_Regulator value */
//  559   tmpreg1 |= Regulator;
//  560   
//  561   /* Store the new value */
//  562   PWR->CR = tmpreg1;
//  563   
//  564   /* Set SLEEPDEEP bit of Cortex System Control Register */
//  565   SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
//  566   
//  567   /* Select STOP mode entry --------------------------------------------------*/
//  568   if(STOPEntry == PWR_SLEEPENTRY_WFI)
//  569   {   
//  570     /* Request Wait For Interrupt */
//  571     __WFI();
//  572   }
//  573   else
//  574   {
//  575     /* Request Wait For Event */
//  576     __WFE();
//  577   }
//  578   /* Reset SLEEPDEEP bit of Cortex System Control Register */
//  579   SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk);
//  580 
//  581   return HAL_OK;  
//  582 }
//  583 
//  584 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F446xx || STM32F469xx || STM32F479xx */
//  585 /**
//  586   * @}
//  587   */
//  588 
//  589 /**
//  590   * @}
//  591   */
//  592 
//  593 #endif /* HAL_PWR_MODULE_ENABLED */
//  594 /**
//  595   * @}
//  596   */
//  597 
//  598 /**
//  599   * @}
//  600   */
// 
// 228 bytes in section .text
// 
// 228 bytes of CODE memory
//
//Errors: none
//Warnings: none
