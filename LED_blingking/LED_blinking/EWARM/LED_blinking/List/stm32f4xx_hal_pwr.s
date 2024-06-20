///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW479.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_pwr.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_PWR_ConfigPVD
        PUBLIC HAL_PWR_DeInit
        PUBLIC HAL_PWR_DisableBkUpAccess
        PUBLIC HAL_PWR_DisablePVD
        PUBLIC HAL_PWR_DisableSEVOnPend
        PUBLIC HAL_PWR_DisableSleepOnExit
        PUBLIC HAL_PWR_DisableWakeUpPin
        PUBLIC HAL_PWR_EnableBkUpAccess
        PUBLIC HAL_PWR_EnablePVD
        PUBLIC HAL_PWR_EnableSEVOnPend
        PUBLIC HAL_PWR_EnableSleepOnExit
        PUBLIC HAL_PWR_EnableWakeUpPin
        PUBLIC HAL_PWR_EnterSLEEPMode
        PUBLIC HAL_PWR_EnterSTANDBYMode
        PUBLIC HAL_PWR_EnterSTOPMode
        PUBWEAK HAL_PWR_PVDCallback
        PUBLIC HAL_PWR_PVD_IRQHandler
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_pwr.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_pwr.c
//    4   * @author  MCD Application Team
//    5   * @brief   PWR HAL module driver.
//    6   *          This file provides firmware functions to manage the following 
//    7   *          functionalities of the Power Controller (PWR) peripheral:
//    8   *           + Initialization and de-initialization functions
//    9   *           + Peripheral Control functions 
//   10   *         
//   11   ******************************************************************************
//   12   * @attention
//   13   *
//   14   * Copyright (c) 2017 STMicroelectronics.
//   15   * All rights reserved.
//   16   *
//   17   * This software is licensed under terms that can be found in the LICENSE file in
//   18   * the root directory of this software component.
//   19   * If no LICENSE file comes with this software, it is provided AS-IS.
//   20   ******************************************************************************
//   21   */ 
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "stm32f4xx_hal.h"
//   25 
//   26 /** @addtogroup STM32F4xx_HAL_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup PWR PWR
//   31   * @brief PWR HAL module driver
//   32   * @{
//   33   */
//   34 
//   35 #ifdef HAL_PWR_MODULE_ENABLED
//   36 
//   37 /* Private typedef -----------------------------------------------------------*/
//   38 /* Private define ------------------------------------------------------------*/
//   39 /** @addtogroup PWR_Private_Constants
//   40   * @{
//   41   */
//   42   
//   43 /** @defgroup PWR_PVD_Mode_Mask PWR PVD Mode Mask
//   44   * @{
//   45   */     
//   46 #define PVD_MODE_IT               0x00010000U
//   47 #define PVD_MODE_EVT              0x00020000U
//   48 #define PVD_RISING_EDGE           0x00000001U
//   49 #define PVD_FALLING_EDGE          0x00000002U
//   50 /**
//   51   * @}
//   52   */
//   53 
//   54 /**
//   55   * @}
//   56   */    
//   57 /* Private macro -------------------------------------------------------------*/
//   58 /* Private variables ---------------------------------------------------------*/
//   59 /* Private function prototypes -----------------------------------------------*/
//   60 /* Private functions ---------------------------------------------------------*/
//   61 
//   62 /** @defgroup PWR_Exported_Functions PWR Exported Functions
//   63   * @{
//   64   */
//   65 
//   66 /** @defgroup PWR_Exported_Functions_Group1 Initialization and de-initialization functions 
//   67   *  @brief    Initialization and de-initialization functions
//   68   *
//   69 @verbatim
//   70  ===============================================================================
//   71               ##### Initialization and de-initialization functions #####
//   72  ===============================================================================
//   73     [..]
//   74       After reset, the backup domain (RTC registers, RTC backup data 
//   75       registers and backup SRAM) is protected against possible unwanted 
//   76       write accesses. 
//   77       To enable access to the RTC Domain and RTC registers, proceed as follows:
//   78         (+) Enable the Power Controller (PWR) APB1 interface clock using the
//   79             __HAL_RCC_PWR_CLK_ENABLE() macro.
//   80         (+) Enable access to RTC domain using the HAL_PWR_EnableBkUpAccess() function.
//   81  
//   82 @endverbatim
//   83   * @{
//   84   */
//   85 
//   86 /**
//   87   * @brief Deinitializes the HAL PWR peripheral registers to their default reset values.
//   88   * @retval None
//   89   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_PWR_DeInit
          CFI NoCalls
        THUMB
//   90 void HAL_PWR_DeInit(void)
//   91 {
//   92   __HAL_RCC_PWR_FORCE_RESET();
HAL_PWR_DeInit:
        LDR.N    R0,??DataTable15  ;; 0x40023820
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
//   93   __HAL_RCC_PWR_RELEASE_RESET();
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
//   94 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   95 
//   96 /**
//   97   * @brief Enables access to the backup domain (RTC registers, RTC 
//   98   *         backup data registers and backup SRAM).
//   99   * @note If the HSE divided by 2, 3, ..31 is used as the RTC clock, the 
//  100   *         Backup Domain Access should be kept enabled.
//  101   * @note The following sequence is required to bypass the delay between
//  102   *         DBP bit programming and the effective enabling  of the backup domain.
//  103   *         Please check the Errata Sheet for more details under "Possible delay
//  104   *         in backup domain protection disabling/enabling after programming the
//  105   *         DBP bit" section.
//  106   * @retval None
//  107   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_PWR_EnableBkUpAccess
          CFI NoCalls
        THUMB
//  108 void HAL_PWR_EnableBkUpAccess(void)
//  109 {
HAL_PWR_EnableBkUpAccess:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  110   __IO uint32_t dummyread;
//  111   *(__IO uint32_t *) CR_DBP_BB = (uint32_t)ENABLE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable15_1  ;; 0x420e0020
        STR      R0,[R1, #+0]
//  112   dummyread = PWR->CR;
        LDR.N    R0,??DataTable15_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  113   UNUSED(dummyread);
        LDR      R0,[SP, #+0]
//  114 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  115 
//  116 /**
//  117   * @brief Disables access to the backup domain (RTC registers, RTC 
//  118   *         backup data registers and backup SRAM).
//  119   * @note If the HSE divided by 2, 3, ..31 is used as the RTC clock, the 
//  120   *         Backup Domain Access should be kept enabled.
//  121   * @note The following sequence is required to bypass the delay between
//  122   *         DBP bit programming and the effective disabling  of the backup domain.
//  123   *         Please check the Errata Sheet for more details under "Possible delay
//  124   *         in backup domain protection disabling/enabling after programming the
//  125   *         DBP bit" section.
//  126   * @retval None
//  127   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_PWR_DisableBkUpAccess
          CFI NoCalls
        THUMB
//  128 void HAL_PWR_DisableBkUpAccess(void)
//  129 {
HAL_PWR_DisableBkUpAccess:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  130   __IO uint32_t dummyread;
//  131   *(__IO uint32_t *) CR_DBP_BB = (uint32_t)DISABLE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_1  ;; 0x420e0020
        STR      R0,[R1, #+0]
//  132   dummyread = PWR->CR;
        LDR.N    R0,??DataTable15_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  133   UNUSED(dummyread);
        LDR      R0,[SP, #+0]
//  134 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  135 
//  136 /**
//  137   * @}
//  138   */
//  139 
//  140 /** @defgroup PWR_Exported_Functions_Group2 Peripheral Control functions 
//  141   *  @brief Low Power modes configuration functions 
//  142   *
//  143 @verbatim
//  144 
//  145  ===============================================================================
//  146                  ##### Peripheral Control functions #####
//  147  ===============================================================================
//  148      
//  149     *** PVD configuration ***
//  150     =========================
//  151     [..]
//  152       (+) The PVD is used to monitor the VDD power supply by comparing it to a 
//  153           threshold selected by the PVD Level (PLS[2:0] bits in the PWR_CR).
//  154       (+) A PVDO flag is available to indicate if VDD/VDDA is higher or lower 
//  155           than the PVD threshold. This event is internally connected to the EXTI 
//  156           line16 and can generate an interrupt if enabled. This is done through
//  157           __HAL_PWR_PVD_EXTI_ENABLE_IT() macro.
//  158       (+) The PVD is stopped in Standby mode.
//  159 
//  160     *** Wake-up pin configuration ***
//  161     ================================
//  162     [..]
//  163       (+) Wake-up pin is used to wake up the system from Standby mode. This pin is 
//  164           forced in input pull-down configuration and is active on rising edges.
//  165       (+) There is one Wake-up pin: Wake-up Pin 1 on PA.00.
//  166 	   (++) For STM32F446xx there are two Wake-Up pins: Pin1 on PA.00 and Pin2 on PC.13
//  167            (++) For STM32F410xx/STM32F412xx/STM32F413xx/STM32F423xx  there are three Wake-Up pins: Pin1 on PA.00, Pin2 on PC.00 and Pin3 on PC.01 
//  168 
//  169     *** Low Power modes configuration ***
//  170     =====================================
//  171     [..]
//  172       The devices feature 3 low-power modes:
//  173       (+) Sleep mode: Cortex-M4 core stopped, peripherals kept running.
//  174       (+) Stop mode: all clocks are stopped, regulator running, regulator 
//  175           in low power mode
//  176       (+) Standby mode: 1.2V domain powered off.
//  177    
//  178    *** Sleep mode ***
//  179    ==================
//  180     [..]
//  181       (+) Entry:
//  182         The Sleep mode is entered by using the HAL_PWR_EnterSLEEPMode(Regulator, SLEEPEntry)
//  183               functions with
//  184           (++) PWR_SLEEPENTRY_WFI: enter SLEEP mode with WFI instruction
//  185           (++) PWR_SLEEPENTRY_WFE: enter SLEEP mode with WFE instruction
//  186           (++) PWR_SLEEPENTRY_WFE_NO_EVT_CLEAR: Enter SLEEP mode with WFE instruction and
//  187                                                 no clear of pending event before.
//  188       
//  189       -@@- The Regulator parameter is not used for the STM32F4 family 
//  190               and is kept as parameter just to maintain compatibility with the 
//  191               lower power families (STM32L).
//  192       (+) Exit:
//  193         Any peripheral interrupt acknowledged by the nested vectored interrupt 
//  194               controller (NVIC) can wake up the device from Sleep mode.
//  195 
//  196    *** Stop mode ***
//  197    =================
//  198     [..]
//  199       In Stop mode, all clocks in the 1.2V domain are stopped, the PLL, the HSI,
//  200       and the HSE RC oscillators are disabled. Internal SRAM and register contents 
//  201       are preserved.
//  202       The voltage regulator can be configured either in normal or low-power mode.
//  203       To minimize the consumption In Stop mode, FLASH can be powered off before 
//  204       entering the Stop mode using the HAL_PWREx_EnableFlashPowerDown() function.
//  205       It can be switched on again by software after exiting the Stop mode using
//  206       the HAL_PWREx_DisableFlashPowerDown() function. 
//  207 
//  208       (+) Entry:
//  209          The Stop mode is entered using the HAL_PWR_EnterSTOPMode(Regulator, STOPEntry) 
//  210              function with:
//  211        (++) Regulator:
//  212         (+++) Main regulator ON.
//  213         (+++) Low Power regulator ON.
//  214        (++) STOPEntry:
//  215         (+++) PWR_STOPENTRY_WFI              : Enter STOP mode with WFI instruction.
//  216         (+++) PWR_STOPENTRY_WFE              : Enter STOP mode with WFE instruction and
//  217                                                clear of pending events before.
//  218         (+++) PWR_STOPENTRY_WFE_NO_EVT_CLEAR : Enter STOP mode with WFE instruction and
//  219                                                no clear of pending event before.
//  220       (+) Exit:
//  221         Any EXTI Line (Internal or External) configured in Interrupt/Event mode.
//  222 
//  223    *** Standby mode ***
//  224    ====================
//  225     [..]
//  226     (+)
//  227       The Standby mode allows to achieve the lowest power consumption. It is based 
//  228       on the Cortex-M4 deep sleep mode, with the voltage regulator disabled. 
//  229       The 1.2V domain is consequently powered off. The PLL, the HSI oscillator and 
//  230       the HSE oscillator are also switched off. SRAM and register contents are lost 
//  231       except for the RTC registers, RTC backup registers, backup SRAM and Standby 
//  232       circuitry.
//  233    
//  234       The voltage regulator is OFF.
//  235       
//  236       (++) Entry:
//  237         (+++) The Standby mode is entered using the HAL_PWR_EnterSTANDBYMode() function.
//  238       (++) Exit:
//  239         (+++) WKUP pin rising edge, RTC alarm (Alarm A and Alarm B), RTC wake-up,
//  240              tamper event, time-stamp event, external reset in NRST pin, IWDG reset.
//  241 
//  242    *** Auto-wake-up (AWU) from low-power mode ***
//  243    =============================================
//  244     [..]
//  245     
//  246      (+) The MCU can be woken up from low-power mode by an RTC Alarm event, an RTC 
//  247       Wake-up event, a tamper event or a time-stamp event, without depending on 
//  248       an external interrupt (Auto-wake-up mode).
//  249 
//  250       (+) RTC auto-wake-up (AWU) from the Stop and Standby modes
//  251        
//  252         (++) To wake up from the Stop mode with an RTC alarm event, it is necessary to 
//  253               configure the RTC to generate the RTC alarm using the HAL_RTC_SetAlarm_IT() function.
//  254 
//  255         (++) To wake up from the Stop mode with an RTC Tamper or time stamp event, it 
//  256              is necessary to configure the RTC to detect the tamper or time stamp event using the
//  257                 HAL_RTCEx_SetTimeStamp_IT() or HAL_RTCEx_SetTamper_IT() functions.
//  258                   
//  259         (++) To wake up from the Stop mode with an RTC Wake-up event, it is necessary to
//  260               configure the RTC to generate the RTC Wake-up event using the HAL_RTCEx_SetWakeUpTimer_IT() function.
//  261 
//  262 @endverbatim
//  263   * @{
//  264   */
//  265 
//  266 /**
//  267   * @brief Configures the voltage threshold detected by the Power Voltage Detector(PVD).
//  268   * @param sConfigPVD pointer to an PWR_PVDTypeDef structure that contains the configuration
//  269   *        information for the PVD.
//  270   * @note Refer to the electrical characteristics of your device datasheet for
//  271   *         more details about the voltage threshold corresponding to each 
//  272   *         detection level.
//  273   * @retval None
//  274   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_PWR_ConfigPVD
          CFI NoCalls
        THUMB
//  275 void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD)
//  276 {
HAL_PWR_ConfigPVD:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  277   /* Check the parameters */
//  278   assert_param(IS_PWR_PVD_LEVEL(sConfigPVD->PVDLevel));
//  279   assert_param(IS_PWR_PVD_MODE(sConfigPVD->Mode));
//  280   
//  281   /* Set PLS[7:5] bits according to PVDLevel value */
//  282   MODIFY_REG(PWR->CR, PWR_CR_PLS, sConfigPVD->PVDLevel);
        LDR.N    R2,??DataTable15_2  ;; 0x40007000
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0xE0
        LDR      R1,[R0, #+0]
        ORRS     R3,R1,R3
        STR      R3,[R2, #+0]
//  283   
//  284   /* Clear any previous config. Keep it clear if no event or IT mode is selected */
//  285   __HAL_PWR_PVD_EXTI_DISABLE_EVENT();
        LDR.N    R1,??DataTable15_3  ;; 0x40013c04
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0x10000
        STR      R2,[R1, #+0]
//  286   __HAL_PWR_PVD_EXTI_DISABLE_IT();
        LDR.N    R4,??DataTable15_4  ;; 0x40013c00
        LDR      R2,[R4, #+0]
        BICS     R2,R2,#0x10000
        STR      R2,[R4, #+0]
//  287   __HAL_PWR_PVD_EXTI_DISABLE_RISING_EDGE();
        LDR.N    R2,??DataTable15_5  ;; 0x40013c08
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0x10000
        STR      R3,[R2, #+0]
//  288   __HAL_PWR_PVD_EXTI_DISABLE_FALLING_EDGE(); 
        LDR.N    R3,??DataTable15_6  ;; 0x40013c0c
        LDR      R5,[R3, #+0]
        BICS     R5,R5,#0x10000
        STR      R5,[R3, #+0]
//  289 
//  290   /* Configure interrupt mode */
//  291   if((sConfigPVD->Mode & PVD_MODE_IT) == PVD_MODE_IT)
        LDR      R5,[R0, #+4]
        LSLS     R5,R5,#+15
        BPL.N    ??HAL_PWR_ConfigPVD_0
//  292   {
//  293     __HAL_PWR_PVD_EXTI_ENABLE_IT();
        LDR      R5,[R4, #+0]
        ORRS     R5,R5,#0x10000
        STR      R5,[R4, #+0]
//  294   }
//  295   
//  296   /* Configure event mode */
//  297   if((sConfigPVD->Mode & PVD_MODE_EVT) == PVD_MODE_EVT)
??HAL_PWR_ConfigPVD_0:
        LDR      R4,[R0, #+4]
        LSLS     R4,R4,#+14
        BPL.N    ??HAL_PWR_ConfigPVD_1
//  298   {
//  299     __HAL_PWR_PVD_EXTI_ENABLE_EVENT();
        LDR      R4,[R1, #+0]
        ORRS     R4,R4,#0x10000
        STR      R4,[R1, #+0]
//  300   }
//  301   
//  302   /* Configure the edge */
//  303   if((sConfigPVD->Mode & PVD_RISING_EDGE) == PVD_RISING_EDGE)
??HAL_PWR_ConfigPVD_1:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+31
        BPL.N    ??HAL_PWR_ConfigPVD_2
//  304   {
//  305     __HAL_PWR_PVD_EXTI_ENABLE_RISING_EDGE();
        LDR      R1,[R2, #+0]
        ORRS     R1,R1,#0x10000
        STR      R1,[R2, #+0]
//  306   }
//  307   
//  308   if((sConfigPVD->Mode & PVD_FALLING_EDGE) == PVD_FALLING_EDGE)
??HAL_PWR_ConfigPVD_2:
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_PWR_ConfigPVD_3
//  309   {
//  310     __HAL_PWR_PVD_EXTI_ENABLE_FALLING_EDGE();
        LDR      R0,[R3, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R3, #+0]
//  311   }
//  312 }
??HAL_PWR_ConfigPVD_3:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  313 
//  314 /**
//  315   * @brief Enables the Power Voltage Detector(PVD).
//  316   * @retval None
//  317   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_PWR_EnablePVD
          CFI NoCalls
        THUMB
//  318 void HAL_PWR_EnablePVD(void)
//  319 {
//  320   *(__IO uint32_t *) CR_PVDE_BB = (uint32_t)ENABLE;
HAL_PWR_EnablePVD:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable15_7  ;; 0x420e0010
        STR      R0,[R1, #+0]
//  321 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  322 
//  323 /**
//  324   * @brief Disables the Power Voltage Detector(PVD).
//  325   * @retval None
//  326   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_PWR_DisablePVD
          CFI NoCalls
        THUMB
//  327 void HAL_PWR_DisablePVD(void)
//  328 {
//  329   *(__IO uint32_t *) CR_PVDE_BB = (uint32_t)DISABLE;
HAL_PWR_DisablePVD:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_7  ;; 0x420e0010
        STR      R0,[R1, #+0]
//  330 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  331 
//  332 /**
//  333   * @brief Enables the Wake-up PINx functionality.
//  334   * @param WakeUpPinx Specifies the Power Wake-Up pin to enable.
//  335   *         This parameter can be one of the following values:
//  336   *           @arg PWR_WAKEUP_PIN1
//  337   *           @arg PWR_WAKEUP_PIN2 available only on STM32F410xx/STM32F446xx/STM32F412xx/STM32F413xx/STM32F423xx devices
//  338   *           @arg PWR_WAKEUP_PIN3 available only on STM32F410xx/STM32F412xx/STM32F413xx/STM32F423xx devices
//  339   * @retval None
//  340   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_PWR_EnableWakeUpPin
          CFI NoCalls
        THUMB
//  341 void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx)
//  342 {
//  343   /* Check the parameter */
//  344   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinx));
//  345 
//  346   /* Enable the wake up pin */
//  347   SET_BIT(PWR->CSR, WakeUpPinx);
HAL_PWR_EnableWakeUpPin:
        LDR.N    R1,??DataTable15_8  ;; 0x40007004
        LDR      R2,[R1, #+0]
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
//  348 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  349 
//  350 /**
//  351   * @brief Disables the Wake-up PINx functionality.
//  352   * @param WakeUpPinx Specifies the Power Wake-Up pin to disable.
//  353   *         This parameter can be one of the following values:
//  354   *           @arg PWR_WAKEUP_PIN1
//  355   *           @arg PWR_WAKEUP_PIN2 available only on STM32F410xx/STM32F446xx/STM32F412xx/STM32F413xx/STM32F423xx devices
//  356   *           @arg PWR_WAKEUP_PIN3 available only on STM32F410xx/STM32F412xx/STM32F413xx/STM32F423xx devices
//  357   * @retval None
//  358   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_PWR_DisableWakeUpPin
          CFI NoCalls
        THUMB
//  359 void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx)
//  360 {
//  361   /* Check the parameter */
//  362   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinx));  
//  363 
//  364   /* Disable the wake up pin */
//  365   CLEAR_BIT(PWR->CSR, WakeUpPinx);
HAL_PWR_DisableWakeUpPin:
        LDR.N    R1,??DataTable15_8  ;; 0x40007004
        LDR      R2,[R1, #+0]
        BICS     R0,R2,R0
        STR      R0,[R1, #+0]
//  366 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  367   
//  368 /**
//  369   * @brief Enters Sleep mode.
//  370   *   
//  371   * @note In Sleep mode, all I/O pins keep the same state as in Run mode.
//  372   * 
//  373   * @note In Sleep mode, the systick is stopped to avoid exit from this mode with
//  374   *       systick interrupt when used as time base for Timeout 
//  375   *                
//  376   * @param Regulator Specifies the regulator state in SLEEP mode.
//  377   *            This parameter can be one of the following values:
//  378   *            @arg PWR_MAINREGULATOR_ON: SLEEP mode with regulator ON
//  379   *            @arg PWR_LOWPOWERREGULATOR_ON: SLEEP mode with low power regulator ON
//  380   * @note This parameter is not used for the STM32F4 family and is kept as parameter
//  381   *       just to maintain compatibility with the lower power families.
//  382   * @param SLEEPEntry Specifies if SLEEP mode in entered with WFI or WFE instruction.
//  383   *          This parameter can be one of the following values:
//  384   *            @arg PWR_SLEEPENTRY_WFI              : Enter SLEEP mode with WFI instruction
//  385   *            @arg PWR_SLEEPENTRY_WFE              : Enter SLEEP mode with WFE instruction and
//  386   *                                                   clear of pending events before.
//  387   *            @arg PWR_SLEEPENTRY_WFE_NO_EVT_CLEAR : Enter SLEEP mode with WFE instruction and
//  388   *                                                   no clear of pending event before.
//  389   * @retval None
//  390   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_PWR_EnterSLEEPMode
          CFI NoCalls
        THUMB
//  391 void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry)
//  392 {
//  393   /* Prevent unused argument(s) compilation warning */
//  394   UNUSED(Regulator);
//  395 
//  396   /* Check the parameters */
//  397   assert_param(IS_PWR_REGULATOR(Regulator));
//  398   assert_param(IS_PWR_SLEEP_ENTRY(SLEEPEntry));
//  399 
//  400   /* Clear SLEEPDEEP bit of Cortex System Control Register */
//  401   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
HAL_PWR_EnterSLEEPMode:
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x4
        STR      R2,[R0, #+0]
//  402 
//  403   /* Select SLEEP mode entry -------------------------------------------------*/
//  404   if(SLEEPEntry == PWR_SLEEPENTRY_WFI)
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_PWR_EnterSLEEPMode_0
//  405   {   
//  406     /* Request Wait For Interrupt */
//  407     __WFI();
        WFI      
        B.N      ??HAL_PWR_EnterSLEEPMode_1
//  408   }
//  409   else
//  410   {
//  411     if(SLEEPEntry != PWR_SLEEPENTRY_WFE_NO_EVT_CLEAR)
??HAL_PWR_EnterSLEEPMode_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BEQ.N    ??HAL_PWR_EnterSLEEPMode_2
//  412     {
//  413       /* Clear all pending event */
//  414       __SEV();
        SEV      
//  415       __WFE();
        WFE      
//  416     }
//  417 
//  418     /* Request Wait For Event */
//  419     __WFE();
??HAL_PWR_EnterSLEEPMode_2:
        WFE      
//  420   }
//  421 }
??HAL_PWR_EnterSLEEPMode_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  422 
//  423 /**
//  424   * @brief Enters Stop mode. 
//  425   * @note In Stop mode, all I/O pins keep the same state as in Run mode.
//  426   * @note When exiting Stop mode by issuing an interrupt or a wake-up event, 
//  427   *         the HSI RC oscillator is selected as system clock.
//  428   * @note When the voltage regulator operates in low power mode, an additional 
//  429   *         startup delay is incurred when waking up from Stop mode. 
//  430   *         By keeping the internal regulator ON during Stop mode, the consumption 
//  431   *         is higher although the startup time is reduced.    
//  432   * @param Regulator Specifies the regulator state in Stop mode.
//  433   *          This parameter can be one of the following values:
//  434   *            @arg PWR_MAINREGULATOR_ON: Stop mode with regulator ON
//  435   *            @arg PWR_LOWPOWERREGULATOR_ON: Stop mode with low power regulator ON
//  436   * @param STOPEntry Specifies if Stop mode in entered with WFI or WFE instruction.
//  437   *          This parameter can be one of the following values:
//  438   *            @arg PWR_STOPENTRY_WFI              : Enter Stop mode with WFI instruction 
//  439   *            @arg PWR_STOPENTRY_WFE              : Enter Stop mode with WFE instruction and
//  440   *                                                  clear of pending events before.
//  441   *            @arg PWR_STOPENTRY_WFE_NO_EVT_CLEAR : Enter STOP mode with WFE instruction and
//  442   *                                                  no clear of pending event before.
//  443   * @retval None
//  444   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_PWR_EnterSTOPMode
          CFI NoCalls
        THUMB
//  445 void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry)
//  446 {
//  447   /* Check the parameters */
//  448   assert_param(IS_PWR_REGULATOR(Regulator));
//  449   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
//  450   
//  451   /* Select the regulator state in Stop mode: Set PDDS and LPDS bits according to PWR_Regulator value */
//  452   MODIFY_REG(PWR->CR, (PWR_CR_PDDS | PWR_CR_LPDS), Regulator);
HAL_PWR_EnterSTOPMode:
        LDR.N    R2,??DataTable15_2  ;; 0x40007000
        LDR      R3,[R2, #+0]
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+2
        ORRS     R0,R0,R3
        STR      R0,[R2, #+0]
//  453   
//  454   /* Set SLEEPDEEP bit of Cortex System Control Register */
//  455   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x4
        STR      R2,[R0, #+0]
//  456   
//  457   /* Select Stop mode entry --------------------------------------------------*/
//  458   if(STOPEntry == PWR_STOPENTRY_WFI)
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??HAL_PWR_EnterSTOPMode_0
//  459   {   
//  460     /* Request Wait For Interrupt */
//  461     __WFI();
        WFI      
        B.N      ??HAL_PWR_EnterSTOPMode_1
//  462   }
//  463   else
//  464   {
//  465     if(STOPEntry != PWR_STOPENTRY_WFE_NO_EVT_CLEAR)
??HAL_PWR_EnterSTOPMode_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BEQ.N    ??HAL_PWR_EnterSTOPMode_2
//  466     {
//  467       /* Clear all pending event */
//  468       __SEV();
        SEV      
//  469       __WFE();
        WFE      
//  470     }
//  471     /* Request Wait For Event */
//  472     __WFE();
??HAL_PWR_EnterSTOPMode_2:
        WFE      
//  473   }
//  474   /* Reset SLEEPDEEP bit of Cortex System Control Register */
//  475   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));  
??HAL_PWR_EnterSTOPMode_1:
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  476 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  477 
//  478 /**
//  479   * @brief Enters Standby mode.
//  480   * @note In Standby mode, all I/O pins are high impedance except for:
//  481   *          - Reset pad (still available) 
//  482   *          - RTC_AF1 pin (PC13) if configured for tamper, time-stamp, RTC 
//  483   *            Alarm out, or RTC clock calibration out.
//  484   *          - RTC_AF2 pin (PI8) if configured for tamper or time-stamp.  
//  485   *          - WKUP pin 1 (PA0) if enabled.       
//  486   * @retval None
//  487   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_PWR_EnterSTANDBYMode
          CFI NoCalls
        THUMB
//  488 void HAL_PWR_EnterSTANDBYMode(void)
//  489 {
//  490   /* Select Standby mode */
//  491   SET_BIT(PWR->CR, PWR_CR_PDDS);
HAL_PWR_EnterSTANDBYMode:
        LDR.N    R0,??DataTable15_2  ;; 0x40007000
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  492 
//  493   /* Set SLEEPDEEP bit of Cortex System Control Register */
//  494   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  495   
//  496   /* This option is used to ensure that store operations are completed */
//  497 #if defined ( __CC_ARM)
//  498   __force_stores();
//  499 #endif
//  500   /* Request Wait For Interrupt */
//  501   __WFI();
        WFI      
//  502 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  503 
//  504 /**
//  505   * @brief This function handles the PWR PVD interrupt request.
//  506   * @note This API should be called under the PVD_IRQHandler().
//  507   * @retval None
//  508   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_PWR_PVD_IRQHandler
        THUMB
//  509 void HAL_PWR_PVD_IRQHandler(void)
//  510 {
HAL_PWR_PVD_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  511   /* Check PWR Exti flag */
//  512   if(__HAL_PWR_PVD_EXTI_GET_FLAG() != RESET)
        LDR.N    R4,??DataTable15_10  ;; 0x40013c14
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??HAL_PWR_PVD_IRQHandler_0
//  513   {
//  514     /* PWR PVD interrupt user callback */
//  515     HAL_PWR_PVDCallback();
          CFI FunCall HAL_PWR_PVDCallback
        BL       HAL_PWR_PVDCallback
//  516     
//  517     /* Clear PWR Exti pending bit */
//  518     __HAL_PWR_PVD_EXTI_CLEAR_FLAG();
        MOVS     R0,#+65536
        STR      R0,[R4, #+0]
//  519   }
//  520 }
??HAL_PWR_PVD_IRQHandler_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  521 
//  522 /**
//  523   * @brief  PWR PVD interrupt callback
//  524   * @retval None
//  525   */
//  526 __weak void HAL_PWR_PVDCallback(void)
//  527 {
//  528   /* NOTE : This function Should not be modified, when the callback is needed,
//  529             the HAL_PWR_PVDCallback could be implemented in the user file
//  530    */ 
//  531 }
//  532 
//  533 /**
//  534   * @brief Indicates Sleep-On-Exit when returning from Handler mode to Thread mode. 
//  535   * @note Set SLEEPONEXIT bit of SCR register. When this bit is set, the processor 
//  536   *       re-enters SLEEP mode when an interruption handling is over.
//  537   *       Setting this bit is useful when the processor is expected to run only on
//  538   *       interruptions handling.         
//  539   * @retval None
//  540   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_PWR_EnableSleepOnExit
          CFI NoCalls
        THUMB
//  541 void HAL_PWR_EnableSleepOnExit(void)
//  542 {
//  543   /* Set SLEEPONEXIT bit of Cortex System Control Register */
//  544   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
HAL_PWR_EnableSleepOnExit:
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  545 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  546 
//  547 /**
//  548   * @brief Disables Sleep-On-Exit feature when returning from Handler mode to Thread mode. 
//  549   * @note Clears SLEEPONEXIT bit of SCR register. When this bit is set, the processor 
//  550   *       re-enters SLEEP mode when an interruption handling is over.          
//  551   * @retval None
//  552   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_PWR_DisableSleepOnExit
          CFI NoCalls
        THUMB
//  553 void HAL_PWR_DisableSleepOnExit(void)
//  554 {
//  555   /* Clear SLEEPONEXIT bit of Cortex System Control Register */
//  556   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
HAL_PWR_DisableSleepOnExit:
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  557 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  558 
//  559 /**
//  560   * @brief Enables CORTEX M4 SEVONPEND bit. 
//  561   * @note Sets SEVONPEND bit of SCR register. When this bit is set, this causes 
//  562   *       WFE to wake up when an interrupt moves from inactive to pended.
//  563   * @retval None
//  564   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_PWR_EnableSEVOnPend
          CFI NoCalls
        THUMB
//  565 void HAL_PWR_EnableSEVOnPend(void)
//  566 {
//  567   /* Set SEVONPEND bit of Cortex System Control Register */
//  568   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
HAL_PWR_EnableSEVOnPend:
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10
        STR      R1,[R0, #+0]
//  569 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_PWR_DisableSEVOnPend
          CFI NoCalls
        THUMB
HAL_PWR_DisableSEVOnPend:
        LDR.N    R0,??DataTable15_9  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x10
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DATA32
        DC32     0x40023820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DATA32
        DC32     0x420e0020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DATA32
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DATA32
        DC32     0x40013c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DATA32
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DATA32
        DC32     0x40013c08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DATA32
        DC32     0x40013c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DATA32
        DC32     0x420e0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DATA32
        DC32     0x40007004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DATA32
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DATA32
        DC32     0x40013c14

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_PWR_PVDCallback
          CFI NoCalls
        THUMB
HAL_PWR_PVDCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  570 
//  571 /**
//  572   * @brief Disables CORTEX M4 SEVONPEND bit. 
//  573   * @note Clears SEVONPEND bit of SCR register. When this bit is set, this causes 
//  574   *       WFE to wake up when an interrupt moves from inactive to pended.         
//  575   * @retval None
//  576   */
//  577 void HAL_PWR_DisableSEVOnPend(void)
//  578 {
//  579   /* Clear SEVONPEND bit of Cortex System Control Register */
//  580   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
//  581 }
//  582 
//  583 /**
//  584   * @}
//  585   */
//  586   
//  587 /**
//  588   * @}
//  589   */
//  590 
//  591 #endif /* HAL_PWR_MODULE_ENABLED */
//  592 /**
//  593   * @}
//  594   */
//  595 
//  596 /**
//  597   * @}
//  598   */
// 
// 446 bytes in section .text
// 
// 444 bytes of CODE memory (+ 2 bytes shared)
//
//Errors: none
//Warnings: none
