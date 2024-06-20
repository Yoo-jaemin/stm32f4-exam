///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  18:39:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\system_stm32f4xx.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW8F53.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\system_stm32f4xx.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\system_stm32f4xx.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC AHBPrescTable
        PUBLIC APBPrescTable
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Core\Src\system_stm32f4xx.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    system_stm32f4xx.c
//    4   * @author  MCD Application Team
//    5   * @brief   CMSIS Cortex-M4 Device Peripheral Access Layer System Source File.
//    6   *
//    7   *   This file provides two functions and one global variable to be called from 
//    8   *   user application:
//    9   *      - SystemInit(): This function is called at startup just after reset and 
//   10   *                      before branch to main program. This call is made inside
//   11   *                      the "startup_stm32f4xx.s" file.
//   12   *
//   13   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
//   14   *                                  by the user application to setup the SysTick 
//   15   *                                  timer or configure other parameters.
//   16   *                                     
//   17   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
//   18   *                                 be called whenever the core clock is changed
//   19   *                                 during program execution.
//   20   *
//   21   *
//   22   ******************************************************************************
//   23   * @attention
//   24   *
//   25   * Copyright (c) 2017 STMicroelectronics.
//   26   * All rights reserved.
//   27   *
//   28   * This software is licensed under terms that can be found in the LICENSE file
//   29   * in the root directory of this software component.
//   30   * If no LICENSE file comes with this software, it is provided AS-IS.
//   31   *
//   32   ******************************************************************************
//   33   */
//   34 
//   35 /** @addtogroup CMSIS
//   36   * @{
//   37   */
//   38 
//   39 /** @addtogroup stm32f4xx_system
//   40   * @{
//   41   */  
//   42   
//   43 /** @addtogroup STM32F4xx_System_Private_Includes
//   44   * @{
//   45   */
//   46 
//   47 
//   48 #include "stm32f4xx.h"
//   49 
//   50 #if !defined  (HSE_VALUE) 
//   51   #define HSE_VALUE    ((uint32_t)25000000) /*!< Default value of the External oscillator in Hz */
//   52 #endif /* HSE_VALUE */
//   53 
//   54 #if !defined  (HSI_VALUE)
//   55   #define HSI_VALUE    ((uint32_t)16000000) /*!< Value of the Internal oscillator in Hz*/
//   56 #endif /* HSI_VALUE */
//   57 
//   58 /**
//   59   * @}
//   60   */
//   61 
//   62 /** @addtogroup STM32F4xx_System_Private_TypesDefinitions
//   63   * @{
//   64   */
//   65 
//   66 /**
//   67   * @}
//   68   */
//   69 
//   70 /** @addtogroup STM32F4xx_System_Private_Defines
//   71   * @{
//   72   */
//   73 
//   74 /************************* Miscellaneous Configuration ************************/
//   75 /*!< Uncomment the following line if you need to use external SRAM or SDRAM as data memory  */
//   76 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx)\ 
//   77  || defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//   78  || defined(STM32F469xx) || defined(STM32F479xx) || defined(STM32F412Zx) || defined(STM32F412Vx)
//   79 /* #define DATA_IN_ExtSRAM */
//   80 #endif /* STM32F40xxx || STM32F41xxx || STM32F42xxx || STM32F43xxx || STM32F469xx || STM32F479xx ||\ 
//   81           STM32F412Zx || STM32F412Vx */
//   82  
//   83 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//   84  || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx)
//   85 /* #define DATA_IN_ExtSDRAM */
//   86 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F446xx || STM32F469xx ||\ 
//   87           STM32F479xx */
//   88 
//   89 /* Note: Following vector table addresses must be defined in line with linker
//   90          configuration. */
//   91 /*!< Uncomment the following line if you need to relocate the vector table
//   92      anywhere in Flash or Sram, else the vector table is kept at the automatic
//   93      remap of boot address selected */
//   94    
//   95    
//   96  #define USER_VECT_TAB_ADDRESS 
//   97 
//   98    
//   99    
//  100 #if defined(USER_VECT_TAB_ADDRESS)
//  101 /*!< Uncomment the following line if you need to relocate your vector Table
//  102      in Sram else user remap will be done in Flash. */
//  103 /* #define VECT_TAB_SRAM */
//  104 #if defined(VECT_TAB_SRAM)
//  105 #define VECT_TAB_BASE_ADDRESS   SRAM_BASE       /*!< Vector Table base address field.
//  106                                                      This value must be a multiple of 0x200. */
//  107 #define VECT_TAB_OFFSET         0x00000000U     /*!< Vector Table base offset field.
//  108                                                      This value must be a multiple of 0x200. */
//  109 #else
//  110 #define VECT_TAB_BASE_ADDRESS   FLASH_BASE      /*!< Vector Table base address field.
//  111                                                      This value must be a multiple of 0x200. */
//  112 //#define VECT_TAB_OFFSET         0x00000000U     /*!< Vector Table base offset field.
//  113 //                                                     This value must be a multiple of 0x200. */
//  114 
//  115 #define VECT_TAB_OFFSET         0x20000
//  116    
//  117 #endif /* VECT_TAB_SRAM */
//  118 #endif /* USER_VECT_TAB_ADDRESS */
//  119 /******************************************************************************/
//  120 
//  121 /**
//  122   * @}
//  123   */
//  124 
//  125 /** @addtogroup STM32F4xx_System_Private_Macros
//  126   * @{
//  127   */
//  128 
//  129 /**
//  130   * @}
//  131   */
//  132 
//  133 /** @addtogroup STM32F4xx_System_Private_Variables
//  134   * @{
//  135   */
//  136   /* This variable is updated in three ways:
//  137       1) by calling CMSIS function SystemCoreClockUpdate()
//  138       2) by calling HAL API function HAL_RCC_GetHCLKFreq()
//  139       3) each time HAL_RCC_ClockConfig() is called to configure the system clock frequency 
//  140          Note: If you use this function to configure the system clock; then there
//  141                is no need to call the 2 first functions listed above, since SystemCoreClock
//  142                variable is updated automatically.
//  143   */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  144 uint32_t SystemCoreClock = 16000000;
SystemCoreClock:
        DATA32
        DC32 16000000

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  145 const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
AHBPrescTable:
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  146 const uint8_t APBPrescTable[8]  = {0, 0, 0, 0, 1, 2, 3, 4};
APBPrescTable:
        DATA8
        DC8 0, 0, 0, 0, 1, 2, 3, 4
//  147 /**
//  148   * @}
//  149   */
//  150 
//  151 /** @addtogroup STM32F4xx_System_Private_FunctionPrototypes
//  152   * @{
//  153   */
//  154 
//  155 #if defined (DATA_IN_ExtSRAM) || defined (DATA_IN_ExtSDRAM)
//  156   static void SystemInit_ExtMemCtl(void); 
//  157 #endif /* DATA_IN_ExtSRAM || DATA_IN_ExtSDRAM */
//  158 
//  159 /**
//  160   * @}
//  161   */
//  162 
//  163 /** @addtogroup STM32F4xx_System_Private_Functions
//  164   * @{
//  165   */
//  166 
//  167 /**
//  168   * @brief  Setup the microcontroller system
//  169   *         Initialize the FPU setting, vector table location and External memory 
//  170   *         configuration.
//  171   * @param  None
//  172   * @retval None
//  173   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SystemInit
          CFI NoCalls
        THUMB
//  174 void SystemInit(void)
//  175 {
//  176   /* FPU settings ------------------------------------------------------------*/
//  177   #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
//  178     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
SystemInit:
        LDR.N    R0,??DataTable1  ;; 0xe000ed88
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xF00000
        STR      R1,[R0, #+0]
//  179   #endif
//  180 
//  181       
//  182     
//  183 
//  184     
//  185     
//  186     
//  187 #if defined (DATA_IN_ExtSRAM) || defined (DATA_IN_ExtSDRAM)
//  188   SystemInit_ExtMemCtl(); 
//  189 #endif /* DATA_IN_ExtSRAM || DATA_IN_ExtSDRAM */
//  190 
//  191   /* Configure the Vector Table location -------------------------------------*/
//  192 #if defined(USER_VECT_TAB_ADDRESS)
//  193   SCB->VTOR = VECT_TAB_BASE_ADDRESS | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
        LDR.N    R0,??DataTable1_1  ;; 0x8020000
        LDR.N    R1,??DataTable1_2  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//  194 #endif /* USER_VECT_TAB_ADDRESS */
//  195 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  196 
//  197 /**
//  198    * @brief  Update SystemCoreClock variable according to Clock Register Values.
//  199   *         The SystemCoreClock variable contains the core clock (HCLK), it can
//  200   *         be used by the user application to setup the SysTick timer or configure
//  201   *         other parameters.
//  202   *           
//  203   * @note   Each time the core clock (HCLK) changes, this function must be called
//  204   *         to update SystemCoreClock variable value. Otherwise, any configuration
//  205   *         based on this variable will be incorrect.         
//  206   *     
//  207   * @note   - The system frequency computed by this function is not the real 
//  208   *           frequency in the chip. It is calculated based on the predefined 
//  209   *           constant and the selected clock source:
//  210   *             
//  211   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
//  212   *                                              
//  213   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
//  214   *                          
//  215   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**) 
//  216   *             or HSI_VALUE(*) multiplied/divided by the PLL factors.
//  217   *         
//  218   *         (*) HSI_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
//  219   *             16 MHz) but the real value may vary depending on the variations
//  220   *             in voltage and temperature.   
//  221   *    
//  222   *         (**) HSE_VALUE is a constant defined in stm32f4xx_hal_conf.h file (its value
//  223   *              depends on the application requirements), user has to ensure that HSE_VALUE
//  224   *              is same as the real frequency of the crystal used. Otherwise, this function
//  225   *              may have wrong result.
//  226   *                
//  227   *         - The result of this function could be not correct when using fractional
//  228   *           value for HSE crystal.
//  229   *     
//  230   * @param  None
//  231   * @retval None
//  232   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SystemCoreClockUpdate
          CFI NoCalls
        THUMB
//  233 void SystemCoreClockUpdate(void)
//  234 {
//  235   uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;
SystemCoreClockUpdate:
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R0,#+2
        MOVS     R0,#+0
        MOVS     R0,#+2
//  236   
//  237   /* Get SYSCLK source -------------------------------------------------------*/
//  238   tmp = RCC->CFGR & RCC_CFGR_SWS;
        LDR.N    R1,??DataTable1_3  ;; 0x40023808
        LDR      R0,[R1, #+0]
        ANDS     R0,R0,#0xC
//  239 
//  240   switch (tmp)
        CMP      R0,#+0
        BEQ.N    ??SystemCoreClockUpdate_0
        CMP      R0,#+4
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R0,#+8
        BEQ.N    ??SystemCoreClockUpdate_2
        B.N      ??SystemCoreClockUpdate_3
//  241   {
//  242     case 0x00:  /* HSI used as system clock source */
//  243       SystemCoreClock = HSI_VALUE;
??SystemCoreClockUpdate_0:
        LDR.N    R0,??DataTable1_4  ;; 0xf42400
        LDR.N    R2,??DataTable1_5
        STR      R0,[R2, #+0]
//  244       break;
        B.N      ??SystemCoreClockUpdate_4
//  245     case 0x04:  /* HSE used as system clock source */
//  246       SystemCoreClock = HSE_VALUE;
??SystemCoreClockUpdate_1:
        LDR.N    R0,??DataTable1_6  ;; 0x17d7840
        LDR.N    R2,??DataTable1_5
        STR      R0,[R2, #+0]
//  247       break;
        B.N      ??SystemCoreClockUpdate_4
//  248     case 0x08:  /* PLL used as system clock source */
//  249 
//  250       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL_M) * PLL_N
//  251          SYSCLK = PLL_VCO / PLL_P
//  252          */    
//  253       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
??SystemCoreClockUpdate_2:
        LDR.N    R3,??DataTable1_7  ;; 0x40023804
        LDR      R0,[R3, #+0]
        UBFX     R0,R0,#+22,#+1
//  254       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
        LDR      R2,[R3, #+0]
        ANDS     R2,R2,#0x3F
//  255       
//  256       if (pllsource != 0)
        CMP      R0,#+0
        BEQ.N    ??SystemCoreClockUpdate_5
//  257       {
//  258         /* HSE used as PLL clock source */
//  259         pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
        LDR.N    R0,??DataTable1_6  ;; 0x17d7840
        UDIV     R2,R0,R2
        LDR      R0,[R3, #+0]
        UBFX     R0,R0,#+6,#+9
        MULS     R2,R0,R2
        B.N      ??SystemCoreClockUpdate_6
//  260       }
//  261       else
//  262       {
//  263         /* HSI used as PLL clock source */
//  264         pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
??SystemCoreClockUpdate_5:
        LDR.N    R0,??DataTable1_4  ;; 0xf42400
        UDIV     R2,R0,R2
        LDR      R0,[R3, #+0]
        UBFX     R0,R0,#+6,#+9
        MULS     R2,R0,R2
//  265       }
//  266 
//  267       pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
??SystemCoreClockUpdate_6:
        LDR      R0,[R3, #+0]
        UBFX     R0,R0,#+16,#+2
        ADDS     R0,R0,#+1
        LSLS     R0,R0,#+1
//  268       SystemCoreClock = pllvco/pllp;
        UDIV     R0,R2,R0
        LDR.N    R2,??DataTable1_5
        STR      R0,[R2, #+0]
//  269       break;
        B.N      ??SystemCoreClockUpdate_4
//  270     default:
//  271       SystemCoreClock = HSI_VALUE;
??SystemCoreClockUpdate_3:
        LDR.N    R0,??DataTable1_4  ;; 0xf42400
        LDR.N    R2,??DataTable1_5
        STR      R0,[R2, #+0]
//  272       break;
//  273   }
//  274   /* Compute HCLK frequency --------------------------------------------------*/
//  275   /* Get HCLK prescaler */
//  276   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
??SystemCoreClockUpdate_4:
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+4,#+4
        LDRB     R0,[R0, R1]
//  277   /* HCLK frequency */
//  278   SystemCoreClock >>= tmp;
        LDR.N    R1,??DataTable1_5
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,R0
        STR      R2,[R1, #+0]
//  279 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     0xe000ed88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x8020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     0x17d7840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     AHBPrescTable

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  280 
//  281 #if defined (DATA_IN_ExtSRAM) && defined (DATA_IN_ExtSDRAM)
//  282 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//  283  || defined(STM32F469xx) || defined(STM32F479xx)
//  284 /**
//  285   * @brief  Setup the external memory controller.
//  286   *         Called in startup_stm32f4xx.s before jump to main.
//  287   *         This function configures the external memories (SRAM/SDRAM)
//  288   *         This SRAM/SDRAM will be used as program data memory (including heap and stack).
//  289   * @param  None
//  290   * @retval None
//  291   */
//  292 void SystemInit_ExtMemCtl(void)
//  293 {
//  294   __IO uint32_t tmp = 0x00;
//  295 
//  296   register uint32_t tmpreg = 0, timeout = 0xFFFF;
//  297   register __IO uint32_t index;
//  298 
//  299   /* Enable GPIOC, GPIOD, GPIOE, GPIOF, GPIOG, GPIOH and GPIOI interface clock */
//  300   RCC->AHB1ENR |= 0x000001F8;
//  301 
//  302   /* Delay after an RCC peripheral clock enabling */
//  303   tmp = READ_BIT(RCC->AHB1ENR, RCC_AHB1ENR_GPIOCEN);
//  304   
//  305   /* Connect PDx pins to FMC Alternate function */
//  306   GPIOD->AFR[0]  = 0x00CCC0CC;
//  307   GPIOD->AFR[1]  = 0xCCCCCCCC;
//  308   /* Configure PDx pins in Alternate function mode */  
//  309   GPIOD->MODER   = 0xAAAA0A8A;
//  310   /* Configure PDx pins speed to 100 MHz */  
//  311   GPIOD->OSPEEDR = 0xFFFF0FCF;
//  312   /* Configure PDx pins Output type to push-pull */  
//  313   GPIOD->OTYPER  = 0x00000000;
//  314   /* No pull-up, pull-down for PDx pins */ 
//  315   GPIOD->PUPDR   = 0x00000000;
//  316 
//  317   /* Connect PEx pins to FMC Alternate function */
//  318   GPIOE->AFR[0]  = 0xC00CC0CC;
//  319   GPIOE->AFR[1]  = 0xCCCCCCCC;
//  320   /* Configure PEx pins in Alternate function mode */ 
//  321   GPIOE->MODER   = 0xAAAA828A;
//  322   /* Configure PEx pins speed to 100 MHz */ 
//  323   GPIOE->OSPEEDR = 0xFFFFC3CF;
//  324   /* Configure PEx pins Output type to push-pull */  
//  325   GPIOE->OTYPER  = 0x00000000;
//  326   /* No pull-up, pull-down for PEx pins */ 
//  327   GPIOE->PUPDR   = 0x00000000;
//  328   
//  329   /* Connect PFx pins to FMC Alternate function */
//  330   GPIOF->AFR[0]  = 0xCCCCCCCC;
//  331   GPIOF->AFR[1]  = 0xCCCCCCCC;
//  332   /* Configure PFx pins in Alternate function mode */   
//  333   GPIOF->MODER   = 0xAA800AAA;
//  334   /* Configure PFx pins speed to 50 MHz */ 
//  335   GPIOF->OSPEEDR = 0xAA800AAA;
//  336   /* Configure PFx pins Output type to push-pull */  
//  337   GPIOF->OTYPER  = 0x00000000;
//  338   /* No pull-up, pull-down for PFx pins */ 
//  339   GPIOF->PUPDR   = 0x00000000;
//  340 
//  341   /* Connect PGx pins to FMC Alternate function */
//  342   GPIOG->AFR[0]  = 0xCCCCCCCC;
//  343   GPIOG->AFR[1]  = 0xCCCCCCCC;
//  344   /* Configure PGx pins in Alternate function mode */ 
//  345   GPIOG->MODER   = 0xAAAAAAAA;
//  346   /* Configure PGx pins speed to 50 MHz */ 
//  347   GPIOG->OSPEEDR = 0xAAAAAAAA;
//  348   /* Configure PGx pins Output type to push-pull */  
//  349   GPIOG->OTYPER  = 0x00000000;
//  350   /* No pull-up, pull-down for PGx pins */ 
//  351   GPIOG->PUPDR   = 0x00000000;
//  352   
//  353   /* Connect PHx pins to FMC Alternate function */
//  354   GPIOH->AFR[0]  = 0x00C0CC00;
//  355   GPIOH->AFR[1]  = 0xCCCCCCCC;
//  356   /* Configure PHx pins in Alternate function mode */ 
//  357   GPIOH->MODER   = 0xAAAA08A0;
//  358   /* Configure PHx pins speed to 50 MHz */ 
//  359   GPIOH->OSPEEDR = 0xAAAA08A0;
//  360   /* Configure PHx pins Output type to push-pull */  
//  361   GPIOH->OTYPER  = 0x00000000;
//  362   /* No pull-up, pull-down for PHx pins */ 
//  363   GPIOH->PUPDR   = 0x00000000;
//  364   
//  365   /* Connect PIx pins to FMC Alternate function */
//  366   GPIOI->AFR[0]  = 0xCCCCCCCC;
//  367   GPIOI->AFR[1]  = 0x00000CC0;
//  368   /* Configure PIx pins in Alternate function mode */ 
//  369   GPIOI->MODER   = 0x0028AAAA;
//  370   /* Configure PIx pins speed to 50 MHz */ 
//  371   GPIOI->OSPEEDR = 0x0028AAAA;
//  372   /* Configure PIx pins Output type to push-pull */  
//  373   GPIOI->OTYPER  = 0x00000000;
//  374   /* No pull-up, pull-down for PIx pins */ 
//  375   GPIOI->PUPDR   = 0x00000000;
//  376   
//  377 /*-- FMC Configuration -------------------------------------------------------*/
//  378   /* Enable the FMC interface clock */
//  379   RCC->AHB3ENR |= 0x00000001;
//  380   /* Delay after an RCC peripheral clock enabling */
//  381   tmp = READ_BIT(RCC->AHB3ENR, RCC_AHB3ENR_FMCEN);
//  382 
//  383   FMC_Bank5_6->SDCR[0] = 0x000019E4;
//  384   FMC_Bank5_6->SDTR[0] = 0x01115351;      
//  385   
//  386   /* SDRAM initialization sequence */
//  387   /* Clock enable command */
//  388   FMC_Bank5_6->SDCMR = 0x00000011; 
//  389   tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  390   while((tmpreg != 0) && (timeout-- > 0))
//  391   {
//  392     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  393   }
//  394 
//  395   /* Delay */
//  396   for (index = 0; index<1000; index++);
//  397   
//  398   /* PALL command */
//  399   FMC_Bank5_6->SDCMR = 0x00000012;           
//  400   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  401   timeout = 0xFFFF;
//  402   while((tmpreg != 0) && (timeout-- > 0))
//  403   {
//  404     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  405   }
//  406   
//  407   /* Auto refresh command */
//  408   FMC_Bank5_6->SDCMR = 0x00000073;
//  409   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  410   timeout = 0xFFFF;
//  411   while((tmpreg != 0) && (timeout-- > 0))
//  412   {
//  413     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  414   }
//  415  
//  416   /* MRD register program */
//  417   FMC_Bank5_6->SDCMR = 0x00046014;
//  418   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  419   timeout = 0xFFFF;
//  420   while((tmpreg != 0) && (timeout-- > 0))
//  421   {
//  422     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  423   } 
//  424   
//  425   /* Set refresh count */
//  426   tmpreg = FMC_Bank5_6->SDRTR;
//  427   FMC_Bank5_6->SDRTR = (tmpreg | (0x0000027C<<1));
//  428   
//  429   /* Disable write protection */
//  430   tmpreg = FMC_Bank5_6->SDCR[0]; 
//  431   FMC_Bank5_6->SDCR[0] = (tmpreg & 0xFFFFFDFF);
//  432 
//  433 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)
//  434   /* Configure and enable Bank1_SRAM2 */
//  435   FMC_Bank1->BTCR[2]  = 0x00001011;
//  436   FMC_Bank1->BTCR[3]  = 0x00000201;
//  437   FMC_Bank1E->BWTR[2] = 0x0fffffff;
//  438 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx */ 
//  439 #if defined(STM32F469xx) || defined(STM32F479xx)
//  440   /* Configure and enable Bank1_SRAM2 */
//  441   FMC_Bank1->BTCR[2]  = 0x00001091;
//  442   FMC_Bank1->BTCR[3]  = 0x00110212;
//  443   FMC_Bank1E->BWTR[2] = 0x0fffffff;
//  444 #endif /* STM32F469xx || STM32F479xx */
//  445 
//  446   (void)(tmp); 
//  447 }
//  448 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  449 #elif defined (DATA_IN_ExtSRAM) || defined (DATA_IN_ExtSDRAM)
//  450 /**
//  451   * @brief  Setup the external memory controller.
//  452   *         Called in startup_stm32f4xx.s before jump to main.
//  453   *         This function configures the external memories (SRAM/SDRAM)
//  454   *         This SRAM/SDRAM will be used as program data memory (including heap and stack).
//  455   * @param  None
//  456   * @retval None
//  457   */
//  458 void SystemInit_ExtMemCtl(void)
//  459 {
//  460   __IO uint32_t tmp = 0x00;
//  461 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//  462  || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  463 #if defined (DATA_IN_ExtSDRAM)
//  464   register uint32_t tmpreg = 0, timeout = 0xFFFF;
//  465   register __IO uint32_t index;
//  466 
//  467 #if defined(STM32F446xx)
//  468   /* Enable GPIOA, GPIOC, GPIOD, GPIOE, GPIOF, GPIOG interface
//  469       clock */
//  470   RCC->AHB1ENR |= 0x0000007D;
//  471 #else
//  472   /* Enable GPIOC, GPIOD, GPIOE, GPIOF, GPIOG, GPIOH and GPIOI interface 
//  473       clock */
//  474   RCC->AHB1ENR |= 0x000001F8;
//  475 #endif /* STM32F446xx */  
//  476   /* Delay after an RCC peripheral clock enabling */
//  477   tmp = READ_BIT(RCC->AHB1ENR, RCC_AHB1ENR_GPIOCEN);
//  478   
//  479 #if defined(STM32F446xx)
//  480   /* Connect PAx pins to FMC Alternate function */
//  481   GPIOA->AFR[0]  |= 0xC0000000;
//  482   GPIOA->AFR[1]  |= 0x00000000;
//  483   /* Configure PDx pins in Alternate function mode */
//  484   GPIOA->MODER   |= 0x00008000;
//  485   /* Configure PDx pins speed to 50 MHz */
//  486   GPIOA->OSPEEDR |= 0x00008000;
//  487   /* Configure PDx pins Output type to push-pull */
//  488   GPIOA->OTYPER  |= 0x00000000;
//  489   /* No pull-up, pull-down for PDx pins */
//  490   GPIOA->PUPDR   |= 0x00000000;
//  491 
//  492   /* Connect PCx pins to FMC Alternate function */
//  493   GPIOC->AFR[0]  |= 0x00CC0000;
//  494   GPIOC->AFR[1]  |= 0x00000000;
//  495   /* Configure PDx pins in Alternate function mode */
//  496   GPIOC->MODER   |= 0x00000A00;
//  497   /* Configure PDx pins speed to 50 MHz */
//  498   GPIOC->OSPEEDR |= 0x00000A00;
//  499   /* Configure PDx pins Output type to push-pull */
//  500   GPIOC->OTYPER  |= 0x00000000;
//  501   /* No pull-up, pull-down for PDx pins */
//  502   GPIOC->PUPDR   |= 0x00000000;
//  503 #endif /* STM32F446xx */
//  504 
//  505   /* Connect PDx pins to FMC Alternate function */
//  506   GPIOD->AFR[0]  = 0x000000CC;
//  507   GPIOD->AFR[1]  = 0xCC000CCC;
//  508   /* Configure PDx pins in Alternate function mode */  
//  509   GPIOD->MODER   = 0xA02A000A;
//  510   /* Configure PDx pins speed to 50 MHz */  
//  511   GPIOD->OSPEEDR = 0xA02A000A;
//  512   /* Configure PDx pins Output type to push-pull */  
//  513   GPIOD->OTYPER  = 0x00000000;
//  514   /* No pull-up, pull-down for PDx pins */ 
//  515   GPIOD->PUPDR   = 0x00000000;
//  516 
//  517   /* Connect PEx pins to FMC Alternate function */
//  518   GPIOE->AFR[0]  = 0xC00000CC;
//  519   GPIOE->AFR[1]  = 0xCCCCCCCC;
//  520   /* Configure PEx pins in Alternate function mode */ 
//  521   GPIOE->MODER   = 0xAAAA800A;
//  522   /* Configure PEx pins speed to 50 MHz */ 
//  523   GPIOE->OSPEEDR = 0xAAAA800A;
//  524   /* Configure PEx pins Output type to push-pull */  
//  525   GPIOE->OTYPER  = 0x00000000;
//  526   /* No pull-up, pull-down for PEx pins */ 
//  527   GPIOE->PUPDR   = 0x00000000;
//  528 
//  529   /* Connect PFx pins to FMC Alternate function */
//  530   GPIOF->AFR[0]  = 0xCCCCCCCC;
//  531   GPIOF->AFR[1]  = 0xCCCCCCCC;
//  532   /* Configure PFx pins in Alternate function mode */   
//  533   GPIOF->MODER   = 0xAA800AAA;
//  534   /* Configure PFx pins speed to 50 MHz */ 
//  535   GPIOF->OSPEEDR = 0xAA800AAA;
//  536   /* Configure PFx pins Output type to push-pull */  
//  537   GPIOF->OTYPER  = 0x00000000;
//  538   /* No pull-up, pull-down for PFx pins */ 
//  539   GPIOF->PUPDR   = 0x00000000;
//  540 
//  541   /* Connect PGx pins to FMC Alternate function */
//  542   GPIOG->AFR[0]  = 0xCCCCCCCC;
//  543   GPIOG->AFR[1]  = 0xCCCCCCCC;
//  544   /* Configure PGx pins in Alternate function mode */ 
//  545   GPIOG->MODER   = 0xAAAAAAAA;
//  546   /* Configure PGx pins speed to 50 MHz */ 
//  547   GPIOG->OSPEEDR = 0xAAAAAAAA;
//  548   /* Configure PGx pins Output type to push-pull */  
//  549   GPIOG->OTYPER  = 0x00000000;
//  550   /* No pull-up, pull-down for PGx pins */ 
//  551   GPIOG->PUPDR   = 0x00000000;
//  552 
//  553 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//  554  || defined(STM32F469xx) || defined(STM32F479xx)  
//  555   /* Connect PHx pins to FMC Alternate function */
//  556   GPIOH->AFR[0]  = 0x00C0CC00;
//  557   GPIOH->AFR[1]  = 0xCCCCCCCC;
//  558   /* Configure PHx pins in Alternate function mode */ 
//  559   GPIOH->MODER   = 0xAAAA08A0;
//  560   /* Configure PHx pins speed to 50 MHz */ 
//  561   GPIOH->OSPEEDR = 0xAAAA08A0;
//  562   /* Configure PHx pins Output type to push-pull */  
//  563   GPIOH->OTYPER  = 0x00000000;
//  564   /* No pull-up, pull-down for PHx pins */ 
//  565   GPIOH->PUPDR   = 0x00000000;
//  566   
//  567   /* Connect PIx pins to FMC Alternate function */
//  568   GPIOI->AFR[0]  = 0xCCCCCCCC;
//  569   GPIOI->AFR[1]  = 0x00000CC0;
//  570   /* Configure PIx pins in Alternate function mode */ 
//  571   GPIOI->MODER   = 0x0028AAAA;
//  572   /* Configure PIx pins speed to 50 MHz */ 
//  573   GPIOI->OSPEEDR = 0x0028AAAA;
//  574   /* Configure PIx pins Output type to push-pull */  
//  575   GPIOI->OTYPER  = 0x00000000;
//  576   /* No pull-up, pull-down for PIx pins */ 
//  577   GPIOI->PUPDR   = 0x00000000;
//  578 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  579   
//  580 /*-- FMC Configuration -------------------------------------------------------*/
//  581   /* Enable the FMC interface clock */
//  582   RCC->AHB3ENR |= 0x00000001;
//  583   /* Delay after an RCC peripheral clock enabling */
//  584   tmp = READ_BIT(RCC->AHB3ENR, RCC_AHB3ENR_FMCEN);
//  585 
//  586   /* Configure and enable SDRAM bank1 */
//  587 #if defined(STM32F446xx)
//  588   FMC_Bank5_6->SDCR[0] = 0x00001954;
//  589 #else  
//  590   FMC_Bank5_6->SDCR[0] = 0x000019E4;
//  591 #endif /* STM32F446xx */
//  592   FMC_Bank5_6->SDTR[0] = 0x01115351;      
//  593   
//  594   /* SDRAM initialization sequence */
//  595   /* Clock enable command */
//  596   FMC_Bank5_6->SDCMR = 0x00000011; 
//  597   tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  598   while((tmpreg != 0) && (timeout-- > 0))
//  599   {
//  600     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  601   }
//  602 
//  603   /* Delay */
//  604   for (index = 0; index<1000; index++);
//  605   
//  606   /* PALL command */
//  607   FMC_Bank5_6->SDCMR = 0x00000012;           
//  608   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  609   timeout = 0xFFFF;
//  610   while((tmpreg != 0) && (timeout-- > 0))
//  611   {
//  612     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  613   }
//  614   
//  615   /* Auto refresh command */
//  616 #if defined(STM32F446xx)
//  617   FMC_Bank5_6->SDCMR = 0x000000F3;
//  618 #else  
//  619   FMC_Bank5_6->SDCMR = 0x00000073;
//  620 #endif /* STM32F446xx */
//  621   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  622   timeout = 0xFFFF;
//  623   while((tmpreg != 0) && (timeout-- > 0))
//  624   {
//  625     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  626   }
//  627  
//  628   /* MRD register program */
//  629 #if defined(STM32F446xx)
//  630   FMC_Bank5_6->SDCMR = 0x00044014;
//  631 #else  
//  632   FMC_Bank5_6->SDCMR = 0x00046014;
//  633 #endif /* STM32F446xx */
//  634   tmpreg = FMC_Bank5_6->SDSR & 0x00000020;
//  635   timeout = 0xFFFF;
//  636   while((tmpreg != 0) && (timeout-- > 0))
//  637   {
//  638     tmpreg = FMC_Bank5_6->SDSR & 0x00000020; 
//  639   } 
//  640   
//  641   /* Set refresh count */
//  642   tmpreg = FMC_Bank5_6->SDRTR;
//  643 #if defined(STM32F446xx)
//  644   FMC_Bank5_6->SDRTR = (tmpreg | (0x0000050C<<1));
//  645 #else    
//  646   FMC_Bank5_6->SDRTR = (tmpreg | (0x0000027C<<1));
//  647 #endif /* STM32F446xx */
//  648   
//  649   /* Disable write protection */
//  650   tmpreg = FMC_Bank5_6->SDCR[0]; 
//  651   FMC_Bank5_6->SDCR[0] = (tmpreg & 0xFFFFFDFF);
//  652 #endif /* DATA_IN_ExtSDRAM */
//  653 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F446xx || STM32F469xx || STM32F479xx */
//  654 
//  655 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx)\ 
//  656  || defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\ 
//  657  || defined(STM32F469xx) || defined(STM32F479xx) || defined(STM32F412Zx) || defined(STM32F412Vx)
//  658 
//  659 #if defined(DATA_IN_ExtSRAM)
//  660 /*-- GPIOs Configuration -----------------------------------------------------*/
//  661    /* Enable GPIOD, GPIOE, GPIOF and GPIOG interface clock */
//  662   RCC->AHB1ENR   |= 0x00000078;
//  663   /* Delay after an RCC peripheral clock enabling */
//  664   tmp = READ_BIT(RCC->AHB1ENR, RCC_AHB1ENR_GPIODEN);
//  665   
//  666   /* Connect PDx pins to FMC Alternate function */
//  667   GPIOD->AFR[0]  = 0x00CCC0CC;
//  668   GPIOD->AFR[1]  = 0xCCCCCCCC;
//  669   /* Configure PDx pins in Alternate function mode */  
//  670   GPIOD->MODER   = 0xAAAA0A8A;
//  671   /* Configure PDx pins speed to 100 MHz */  
//  672   GPIOD->OSPEEDR = 0xFFFF0FCF;
//  673   /* Configure PDx pins Output type to push-pull */  
//  674   GPIOD->OTYPER  = 0x00000000;
//  675   /* No pull-up, pull-down for PDx pins */ 
//  676   GPIOD->PUPDR   = 0x00000000;
//  677 
//  678   /* Connect PEx pins to FMC Alternate function */
//  679   GPIOE->AFR[0]  = 0xC00CC0CC;
//  680   GPIOE->AFR[1]  = 0xCCCCCCCC;
//  681   /* Configure PEx pins in Alternate function mode */ 
//  682   GPIOE->MODER   = 0xAAAA828A;
//  683   /* Configure PEx pins speed to 100 MHz */ 
//  684   GPIOE->OSPEEDR = 0xFFFFC3CF;
//  685   /* Configure PEx pins Output type to push-pull */  
//  686   GPIOE->OTYPER  = 0x00000000;
//  687   /* No pull-up, pull-down for PEx pins */ 
//  688   GPIOE->PUPDR   = 0x00000000;
//  689 
//  690   /* Connect PFx pins to FMC Alternate function */
//  691   GPIOF->AFR[0]  = 0x00CCCCCC;
//  692   GPIOF->AFR[1]  = 0xCCCC0000;
//  693   /* Configure PFx pins in Alternate function mode */   
//  694   GPIOF->MODER   = 0xAA000AAA;
//  695   /* Configure PFx pins speed to 100 MHz */ 
//  696   GPIOF->OSPEEDR = 0xFF000FFF;
//  697   /* Configure PFx pins Output type to push-pull */  
//  698   GPIOF->OTYPER  = 0x00000000;
//  699   /* No pull-up, pull-down for PFx pins */ 
//  700   GPIOF->PUPDR   = 0x00000000;
//  701 
//  702   /* Connect PGx pins to FMC Alternate function */
//  703   GPIOG->AFR[0]  = 0x00CCCCCC;
//  704   GPIOG->AFR[1]  = 0x000000C0;
//  705   /* Configure PGx pins in Alternate function mode */ 
//  706   GPIOG->MODER   = 0x00085AAA;
//  707   /* Configure PGx pins speed to 100 MHz */ 
//  708   GPIOG->OSPEEDR = 0x000CAFFF;
//  709   /* Configure PGx pins Output type to push-pull */  
//  710   GPIOG->OTYPER  = 0x00000000;
//  711   /* No pull-up, pull-down for PGx pins */ 
//  712   GPIOG->PUPDR   = 0x00000000;
//  713   
//  714 /*-- FMC/FSMC Configuration --------------------------------------------------*/
//  715   /* Enable the FMC/FSMC interface clock */
//  716   RCC->AHB3ENR         |= 0x00000001;
//  717 
//  718 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)
//  719   /* Delay after an RCC peripheral clock enabling */
//  720   tmp = READ_BIT(RCC->AHB3ENR, RCC_AHB3ENR_FMCEN);
//  721   /* Configure and enable Bank1_SRAM2 */
//  722   FMC_Bank1->BTCR[2]  = 0x00001011;
//  723   FMC_Bank1->BTCR[3]  = 0x00000201;
//  724   FMC_Bank1E->BWTR[2] = 0x0fffffff;
//  725 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx */ 
//  726 #if defined(STM32F469xx) || defined(STM32F479xx)
//  727   /* Delay after an RCC peripheral clock enabling */
//  728   tmp = READ_BIT(RCC->AHB3ENR, RCC_AHB3ENR_FMCEN);
//  729   /* Configure and enable Bank1_SRAM2 */
//  730   FMC_Bank1->BTCR[2]  = 0x00001091;
//  731   FMC_Bank1->BTCR[3]  = 0x00110212;
//  732   FMC_Bank1E->BWTR[2] = 0x0fffffff;
//  733 #endif /* STM32F469xx || STM32F479xx */
//  734 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx)|| defined(STM32F417xx)\ 
//  735    || defined(STM32F412Zx) || defined(STM32F412Vx)
//  736   /* Delay after an RCC peripheral clock enabling */
//  737   tmp = READ_BIT(RCC->AHB3ENR, RCC_AHB3ENR_FSMCEN);
//  738   /* Configure and enable Bank1_SRAM2 */
//  739   FSMC_Bank1->BTCR[2]  = 0x00001011;
//  740   FSMC_Bank1->BTCR[3]  = 0x00000201;
//  741   FSMC_Bank1E->BWTR[2] = 0x0FFFFFFF;
//  742 #endif /* STM32F405xx || STM32F415xx || STM32F407xx || STM32F417xx || STM32F412Zx || STM32F412Vx */
//  743 
//  744 #endif /* DATA_IN_ExtSRAM */
//  745 #endif /* STM32F405xx || STM32F415xx || STM32F407xx || STM32F417xx || STM32F427xx || STM32F437xx ||\ 
//  746           STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx || STM32F412Zx || STM32F412Vx  */ 
//  747   (void)(tmp); 
//  748 }
//  749 #endif /* DATA_IN_ExtSRAM && DATA_IN_ExtSDRAM */
//  750 /**
//  751   * @}
//  752   */
//  753 
//  754 /**
//  755   * @}
//  756   */
//  757 
//  758 /**
//  759   * @}
//  760   */
// 
//   4 bytes in section .data
//  24 bytes in section .rodata
// 196 bytes in section .text
// 
// 196 bytes of CODE  memory
//  24 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none