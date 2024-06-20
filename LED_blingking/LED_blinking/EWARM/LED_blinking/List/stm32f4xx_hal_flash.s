///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DE.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_flash.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_Erase_Sector
        EXTERN FLASH_FlushCaches
        EXTERN HAL_GetTick

        PUBLIC FLASH_WaitForLastOperation
        PUBWEAK HAL_FLASH_EndOfOperationCallback
        PUBLIC HAL_FLASH_GetError
        PUBLIC HAL_FLASH_IRQHandler
        PUBLIC HAL_FLASH_Lock
        PUBLIC HAL_FLASH_OB_Launch
        PUBLIC HAL_FLASH_OB_Lock
        PUBLIC HAL_FLASH_OB_Unlock
        PUBWEAK HAL_FLASH_OperationErrorCallback
        PUBLIC HAL_FLASH_Program
        PUBLIC HAL_FLASH_Program_IT
        PUBLIC HAL_FLASH_Unlock
        PUBLIC pFlash
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_flash.c
//    4   * @author  MCD Application Team
//    5   * @brief   FLASH HAL module driver.
//    6   *          This file provides firmware functions to manage the following 
//    7   *          functionalities of the internal FLASH memory:
//    8   *           + Program operations functions
//    9   *           + Memory Control functions 
//   10   *           + Peripheral Errors functions
//   11   *         
//   12   @verbatim
//   13   ==============================================================================
//   14                         ##### FLASH peripheral features #####
//   15   ==============================================================================
//   16            
//   17   [..] The Flash memory interface manages CPU AHB I-Code and D-Code accesses 
//   18        to the Flash memory. It implements the erase and program Flash memory operations 
//   19        and the read and write protection mechanisms.
//   20       
//   21   [..] The Flash memory interface accelerates code execution with a system of instruction
//   22        prefetch and cache lines. 
//   23 
//   24   [..] The FLASH main features are:
//   25       (+) Flash memory read operations
//   26       (+) Flash memory program/erase operations
//   27       (+) Read / write protections
//   28       (+) Prefetch on I-Code
//   29       (+) 64 cache lines of 128 bits on I-Code
//   30       (+) 8 cache lines of 128 bits on D-Code
//   31       
//   32       
//   33                      ##### How to use this driver #####
//   34   ==============================================================================
//   35     [..]                             
//   36       This driver provides functions and macros to configure and program the FLASH 
//   37       memory of all STM32F4xx devices.
//   38     
//   39       (#) FLASH Memory IO Programming functions: 
//   40            (++) Lock and Unlock the FLASH interface using HAL_FLASH_Unlock() and 
//   41                 HAL_FLASH_Lock() functions
//   42            (++) Program functions: byte, half word, word and double word
//   43            (++) There Two modes of programming :
//   44             (+++) Polling mode using HAL_FLASH_Program() function
//   45             (+++) Interrupt mode using HAL_FLASH_Program_IT() function
//   46     
//   47       (#) Interrupts and flags management functions : 
//   48            (++) Handle FLASH interrupts by calling HAL_FLASH_IRQHandler()
//   49            (++) Wait for last FLASH operation according to its status
//   50            (++) Get error flag status by calling HAL_SetErrorCode()          
//   51 
//   52     [..] 
//   53       In addition to these functions, this driver includes a set of macros allowing
//   54       to handle the following operations:
//   55        (+) Set the latency
//   56        (+) Enable/Disable the prefetch buffer
//   57        (+) Enable/Disable the Instruction cache and the Data cache
//   58        (+) Reset the Instruction cache and the Data cache
//   59        (+) Enable/Disable the FLASH interrupts
//   60        (+) Monitor the FLASH flags status
//   61           
//   62   @endverbatim
//   63   ******************************************************************************
//   64   * @attention
//   65   *
//   66   * Copyright (c) 2017 STMicroelectronics.
//   67   * All rights reserved.
//   68   *
//   69   * This software is licensed under terms that can be found in the LICENSE file in
//   70   * the root directory of this software component.
//   71   * If no LICENSE file comes with this software, it is provided AS-IS.
//   72   ******************************************************************************
//   73   */ 
//   74 
//   75 /* Includes ------------------------------------------------------------------*/
//   76 #include "stm32f4xx_hal.h"
//   77 
//   78 /** @addtogroup STM32F4xx_HAL_Driver
//   79   * @{
//   80   */
//   81 
//   82 /** @defgroup FLASH FLASH
//   83   * @brief FLASH HAL module driver
//   84   * @{
//   85   */
//   86 
//   87 #ifdef HAL_FLASH_MODULE_ENABLED
//   88 
//   89 /* Private typedef -----------------------------------------------------------*/
//   90 /* Private define ------------------------------------------------------------*/
//   91 /** @addtogroup FLASH_Private_Constants
//   92   * @{
//   93   */
//   94 #define FLASH_TIMEOUT_VALUE       50000U /* 50 s */
//   95 /**
//   96   * @}
//   97   */         
//   98 /* Private macro -------------------------------------------------------------*/
//   99 /* Private variables ---------------------------------------------------------*/
//  100 /** @addtogroup FLASH_Private_Variables
//  101   * @{
//  102   */
//  103 /* Variable used for Erase sectors under interruption */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  104 FLASH_ProcessTypeDef pFlash;
pFlash:
        DS8 32
//  105 /**
//  106   * @}
//  107   */
//  108 
//  109 /* Private function prototypes -----------------------------------------------*/
//  110 /** @addtogroup FLASH_Private_Functions
//  111   * @{
//  112   */
//  113 /* Program operations */
//  114 static void   FLASH_Program_DoubleWord(uint32_t Address, uint64_t Data);
//  115 static void   FLASH_Program_Word(uint32_t Address, uint32_t Data);
//  116 static void   FLASH_Program_HalfWord(uint32_t Address, uint16_t Data);
//  117 static void   FLASH_Program_Byte(uint32_t Address, uint8_t Data);
//  118 static void   FLASH_SetErrorCode(void);
//  119 
//  120 HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout);
//  121 /**
//  122   * @}
//  123   */
//  124 
//  125 /* Exported functions --------------------------------------------------------*/
//  126 /** @defgroup FLASH_Exported_Functions FLASH Exported Functions
//  127   * @{
//  128   */
//  129   
//  130 /** @defgroup FLASH_Exported_Functions_Group1 Programming operation functions 
//  131  *  @brief   Programming operation functions 
//  132  *
//  133 @verbatim   
//  134  ===============================================================================
//  135                   ##### Programming operation functions #####
//  136  ===============================================================================  
//  137     [..]
//  138     This subsection provides a set of functions allowing to manage the FLASH 
//  139     program operations.
//  140 
//  141 @endverbatim
//  142   * @{
//  143   */
//  144 
//  145 /**
//  146   * @brief  Program byte, halfword, word or double word at a specified address
//  147   * @param  TypeProgram  Indicate the way to program at a specified address.
//  148   *                           This parameter can be a value of @ref FLASH_Type_Program
//  149   * @param  Address  specifies the address to be programmed.
//  150   * @param  Data specifies the data to be programmed
//  151   * 
//  152   * @retval HAL_StatusTypeDef HAL Status
//  153   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_FLASH_Program
        THUMB
//  154 HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
//  155 {
HAL_FLASH_Program:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R9,R0
        MOVS     R6,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  156   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  157   
//  158   /* Process Locked */
//  159   __HAL_LOCK(&pFlash);
        LDR.W    R7,??DataTable14
        LDRB     R0,[R7, #+24]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_Program_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASH_Program_1
??HAL_FLASH_Program_0:
        MOVS     R0,#+1
        STRB     R0,[R7, #+24]
//  160   
//  161   /* Check the parameters */
//  162   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
//  163   
//  164   /* Wait for last operation to be completed */
//  165   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R8,#+50000
        MOV      R0,R8
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  166   
//  167   if(status == HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??HAL_FLASH_Program_2
        MOV      R1,R9
        MOVS     R0,R6
        MOVS     R2,R4
        MOVS     R3,R5
//  168   {
//  169     if(TypeProgram == FLASH_TYPEPROGRAM_BYTE)
        CMP      R1,#+0
        BNE.N    ??HAL_FLASH_Program_3
//  170     {
//  171       /*Program byte (8-bit) at a specified address.*/
//  172       FLASH_Program_Byte(Address, (uint8_t) Data);
        MOVS     R1,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
          CFI FunCall FLASH_Program_Byte
        BL       FLASH_Program_Byte
        B.N      ??HAL_FLASH_Program_4
//  173     }
//  174     else if(TypeProgram == FLASH_TYPEPROGRAM_HALFWORD)
??HAL_FLASH_Program_3:
        CMP      R1,#+1
        BNE.N    ??HAL_FLASH_Program_5
//  175     {
//  176       /*Program halfword (16-bit) at a specified address.*/
//  177       FLASH_Program_HalfWord(Address, (uint16_t) Data);
        MOVS     R1,R2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
          CFI FunCall FLASH_Program_HalfWord
        BL       FLASH_Program_HalfWord
        B.N      ??HAL_FLASH_Program_4
//  178     }
//  179     else if(TypeProgram == FLASH_TYPEPROGRAM_WORD)
??HAL_FLASH_Program_5:
        CMP      R1,#+2
        BNE.N    ??HAL_FLASH_Program_6
//  180     {
//  181       /*Program word (32-bit) at a specified address.*/
//  182       FLASH_Program_Word(Address, (uint32_t) Data);
        MOVS     R1,R2
          CFI FunCall FLASH_Program_Word
        BL       FLASH_Program_Word
        B.N      ??HAL_FLASH_Program_4
//  183     }
//  184     else
//  185     {
//  186       /*Program double word (64-bit) at a specified address.*/
//  187       FLASH_Program_DoubleWord(Address, Data);
??HAL_FLASH_Program_6:
          CFI FunCall FLASH_Program_DoubleWord
        BL       FLASH_Program_DoubleWord
//  188     }
//  189     
//  190     /* Wait for last operation to be completed */
//  191     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
??HAL_FLASH_Program_4:
        MOV      R0,R8
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  192     
//  193     /* If the program operation is completed, disable the PG Bit */
//  194     FLASH->CR &= (~FLASH_CR_PG);  
        LDR.N    R1,??DataTable14_1  ;; 0x40023c10
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        STR      R2,[R1, #+0]
//  195   }
//  196   
//  197   /* Process Unlocked */
//  198   __HAL_UNLOCK(&pFlash);
??HAL_FLASH_Program_2:
        MOVS     R1,#+0
        STRB     R1,[R7, #+24]
//  199   
//  200   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASH_Program_1:
        POP      {R1,R4-R9,PC}    ;; return
//  201 }
          CFI EndBlock cfiBlock0
//  202 
//  203 /**
//  204   * @brief   Program byte, halfword, word or double word at a specified address  with interrupt enabled.
//  205   * @param  TypeProgram  Indicate the way to program at a specified address.
//  206   *                           This parameter can be a value of @ref FLASH_Type_Program
//  207   * @param  Address  specifies the address to be programmed.
//  208   * @param  Data specifies the data to be programmed
//  209   * 
//  210   * @retval HAL Status
//  211   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_FLASH_Program_IT
        THUMB
//  212 HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
//  213 {
HAL_FLASH_Program_IT:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R0,R1
//  214   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  215   
//  216   /* Process Locked */
//  217   __HAL_LOCK(&pFlash);
        LDR.N    R1,??DataTable14
        LDRB     R6,[R1, #+24]
        CMP      R6,#+1
        BNE.N    ??HAL_FLASH_Program_IT_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASH_Program_IT_1
??HAL_FLASH_Program_IT_0:
        MOVS     R6,#+1
        STRB     R6,[R1, #+24]
//  218 
//  219   /* Check the parameters */
//  220   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
//  221 
//  222   /* Enable End of FLASH Operation interrupt */
//  223   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP);
        LDR.N    R6,??DataTable14_1  ;; 0x40023c10
        LDR      R7,[R6, #+0]
        ORRS     R7,R7,#0x1000000
        STR      R7,[R6, #+0]
//  224   
//  225   /* Enable Error source interrupt */
//  226   __HAL_FLASH_ENABLE_IT(FLASH_IT_ERR);
        LDR      R7,[R6, #+0]
        ORRS     R7,R7,#0x2000000
        STR      R7,[R6, #+0]
//  227 
//  228   pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAM;
        MOVS     R6,#+3
        STRB     R6,[R1, #+0]
//  229   pFlash.Address = Address;
        STR      R0,[R1, #+20]
//  230 
//  231   if(TypeProgram == FLASH_TYPEPROGRAM_BYTE)
        CMP      R4,#+0
        BNE.N    ??HAL_FLASH_Program_IT_2
//  232   {
//  233     /*Program byte (8-bit) at a specified address.*/
//  234       FLASH_Program_Byte(Address, (uint8_t) Data);
        MOVS     R1,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
          CFI FunCall FLASH_Program_Byte
        BL       FLASH_Program_Byte
        B.N      ??HAL_FLASH_Program_IT_3
//  235   }
//  236   else if(TypeProgram == FLASH_TYPEPROGRAM_HALFWORD)
??HAL_FLASH_Program_IT_2:
        CMP      R4,#+1
        BNE.N    ??HAL_FLASH_Program_IT_4
//  237   {
//  238     /*Program halfword (16-bit) at a specified address.*/
//  239     FLASH_Program_HalfWord(Address, (uint16_t) Data);
        MOVS     R1,R2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
          CFI FunCall FLASH_Program_HalfWord
        BL       FLASH_Program_HalfWord
        B.N      ??HAL_FLASH_Program_IT_3
//  240   }
//  241   else if(TypeProgram == FLASH_TYPEPROGRAM_WORD)
??HAL_FLASH_Program_IT_4:
        CMP      R4,#+2
        BNE.N    ??HAL_FLASH_Program_IT_5
//  242   {
//  243     /*Program word (32-bit) at a specified address.*/
//  244     FLASH_Program_Word(Address, (uint32_t) Data);
        MOVS     R1,R2
          CFI FunCall FLASH_Program_Word
        BL       FLASH_Program_Word
        B.N      ??HAL_FLASH_Program_IT_3
//  245   }
//  246   else
//  247   {
//  248     /*Program double word (64-bit) at a specified address.*/
//  249     FLASH_Program_DoubleWord(Address, Data);
??HAL_FLASH_Program_IT_5:
          CFI FunCall FLASH_Program_DoubleWord
        BL       FLASH_Program_DoubleWord
//  250   }
//  251 
//  252   return status;
??HAL_FLASH_Program_IT_3:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASH_Program_IT_1:
        POP      {R1,R4-R7,PC}    ;; return
//  253 }
          CFI EndBlock cfiBlock1
//  254 
//  255 /**
//  256   * @brief This function handles FLASH interrupt request.
//  257   * @retval None
//  258   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_FLASH_IRQHandler
        THUMB
//  259 void HAL_FLASH_IRQHandler(void)
//  260 {
HAL_FLASH_IRQHandler:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  261   uint32_t addresstmp = 0U;
        MOVS     R0,#+0
//  262   
//  263   /* Check FLASH operation error flags */
//  264 #if defined(FLASH_SR_RDERR) 
//  265   if(__HAL_FLASH_GET_FLAG((FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | \ 
//  266     FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR | FLASH_FLAG_RDERR)) != RESET)
//  267 #else
//  268   if(__HAL_FLASH_GET_FLAG((FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | \ 
//  269     FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR)) != RESET)
        LDR.N    R4,??DataTable14_2  ;; 0x40023c0c
        LDR      R0,[R4, #+0]
        TST      R0,#0xF2
        BEQ.N    ??HAL_FLASH_IRQHandler_0
//  270 #endif /* FLASH_SR_RDERR */
//  271   {
//  272     if(pFlash.ProcedureOnGoing == FLASH_PROC_SECTERASE)
        LDR.N    R6,??DataTable14
        LDRB     R0,[R6, #+0]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_IRQHandler_1
//  273     {
//  274       /*return the faulty sector*/
//  275       addresstmp = pFlash.Sector;
        LDR      R5,[R6, #+12]
//  276       pFlash.Sector = 0xFFFFFFFFU;
        MOVS     R0,#-1
        STR      R0,[R6, #+12]
        B.N      ??HAL_FLASH_IRQHandler_2
//  277     }
//  278     else if(pFlash.ProcedureOnGoing == FLASH_PROC_MASSERASE)
??HAL_FLASH_IRQHandler_1:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+2
        BNE.N    ??HAL_FLASH_IRQHandler_3
//  279     {
//  280       /*return the faulty bank*/
//  281       addresstmp = pFlash.Bank;
        LDR      R5,[R6, #+16]
        B.N      ??HAL_FLASH_IRQHandler_2
//  282     }
//  283     else
//  284     {
//  285       /*return the faulty address*/
//  286       addresstmp = pFlash.Address;
??HAL_FLASH_IRQHandler_3:
        LDR      R5,[R6, #+20]
//  287     }
//  288     
//  289     /*Save the Error code*/
//  290     FLASH_SetErrorCode();
??HAL_FLASH_IRQHandler_2:
          CFI FunCall FLASH_SetErrorCode
        BL       FLASH_SetErrorCode
//  291     
//  292     /* FLASH error interrupt user callback */
//  293     HAL_FLASH_OperationErrorCallback(addresstmp);
        MOVS     R0,R5
          CFI FunCall HAL_FLASH_OperationErrorCallback
        BL       HAL_FLASH_OperationErrorCallback
//  294     
//  295     /*Stop the procedure ongoing*/
//  296     pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  297   }
//  298   
//  299   /* Check FLASH End of Operation flag  */
//  300   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP) != RESET)
??HAL_FLASH_IRQHandler_0:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_FLASH_IRQHandler_4
//  301   {
//  302     /* Clear FLASH End of Operation pending bit */
//  303     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//  304     
//  305     if(pFlash.ProcedureOnGoing == FLASH_PROC_SECTERASE)
        LDR.N    R4,??DataTable14
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_IRQHandler_5
//  306     {
//  307       /*Nb of sector to erased can be decreased*/
//  308       pFlash.NbSectorsToErase--;
        LDR      R0,[R4, #+4]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+4]
//  309       
//  310       /* Check if there are still sectors to erase*/
//  311       if(pFlash.NbSectorsToErase != 0U)
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASH_IRQHandler_6
//  312       {
//  313         addresstmp = pFlash.Sector;
        LDR      R0,[R4, #+12]
//  314         /*Indicate user which sector has been erased*/
//  315         HAL_FLASH_EndOfOperationCallback(addresstmp);
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
//  316         
//  317         /*Increment sector number*/
//  318         pFlash.Sector++;
        LDR      R0,[R4, #+12]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+12]
//  319         addresstmp = pFlash.Sector;
        LDR      R0,[R4, #+12]
//  320         FLASH_Erase_Sector(addresstmp, pFlash.VoltageForErase);
        LDRB     R1,[R4, #+8]
          CFI FunCall FLASH_Erase_Sector
        BL       FLASH_Erase_Sector
        B.N      ??HAL_FLASH_IRQHandler_4
//  321       }
//  322       else
//  323       {
//  324         /*No more sectors to Erase, user callback can be called.*/
//  325         /*Reset Sector and stop Erase sectors procedure*/
//  326         pFlash.Sector = addresstmp = 0xFFFFFFFFU;
??HAL_FLASH_IRQHandler_6:
        MOVS     R5,#-1
        STR      R5,[R4, #+12]
//  327         pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  328         
//  329         /* Flush the caches to be sure of the data consistency */
//  330         FLASH_FlushCaches() ;
          CFI FunCall FLASH_FlushCaches
        BL       FLASH_FlushCaches
//  331                 
//  332         /* FLASH EOP interrupt user callback */
//  333         HAL_FLASH_EndOfOperationCallback(addresstmp);
        MOVS     R0,R5
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
        B.N      ??HAL_FLASH_IRQHandler_4
//  334       }
//  335     }
//  336     else 
//  337     {
//  338       if(pFlash.ProcedureOnGoing == FLASH_PROC_MASSERASE) 
??HAL_FLASH_IRQHandler_5:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??HAL_FLASH_IRQHandler_7
//  339       {
//  340         /* MassErase ended. Return the selected bank */
//  341         /* Flush the caches to be sure of the data consistency */
//  342         FLASH_FlushCaches() ;
          CFI FunCall FLASH_FlushCaches
        BL       FLASH_FlushCaches
//  343 
//  344         /* FLASH EOP interrupt user callback */
//  345         HAL_FLASH_EndOfOperationCallback(pFlash.Bank);
        LDR      R0,[R4, #+16]
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
        B.N      ??HAL_FLASH_IRQHandler_8
//  346       }
//  347       else
//  348       {
//  349         /*Program ended. Return the selected address*/
//  350         /* FLASH EOP interrupt user callback */
//  351         HAL_FLASH_EndOfOperationCallback(pFlash.Address);
??HAL_FLASH_IRQHandler_7:
        LDR      R0,[R4, #+20]
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
//  352       }
//  353       pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
??HAL_FLASH_IRQHandler_8:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  354     }
//  355   }
//  356   
//  357   if(pFlash.ProcedureOnGoing == FLASH_PROC_NONE)
??HAL_FLASH_IRQHandler_4:
        LDR.N    R1,??DataTable14
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??HAL_FLASH_IRQHandler_9
//  358   {
//  359     /* Operation is completed, disable the PG, SER, SNB and MER Bits */
//  360     CLEAR_BIT(FLASH->CR, (FLASH_CR_PG | FLASH_CR_SER | FLASH_CR_SNB | FLASH_MER_BIT));
        LDR.N    R0,??DataTable14_1  ;; 0x40023c10
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+8
        LSLS     R2,R2,#+8
        STR      R2,[R0, #+0]
//  361 
//  362     /* Disable End of FLASH Operation interrupt */
//  363     __HAL_FLASH_DISABLE_IT(FLASH_IT_EOP);
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x1000000
        STR      R2,[R0, #+0]
//  364     
//  365     /* Disable Error source interrupt */
//  366     __HAL_FLASH_DISABLE_IT(FLASH_IT_ERR);
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x2000000
        STR      R2,[R0, #+0]
//  367     
//  368     /* Process Unlocked */
//  369     __HAL_UNLOCK(&pFlash);
        MOVS     R0,#+0
        STRB     R0,[R1, #+24]
//  370   }
//  371 }
??HAL_FLASH_IRQHandler_9:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  372 
//  373 /**
//  374   * @brief  FLASH end of operation interrupt callback
//  375   * @param  ReturnValue The value saved in this parameter depends on the ongoing procedure
//  376   *                  Mass Erase: Bank number which has been requested to erase
//  377   *                  Sectors Erase: Sector which has been erased 
//  378   *                    (if 0xFFFFFFFFU, it means that all the selected sectors have been erased)
//  379   *                  Program: Address which was selected for data program
//  380   * @retval None
//  381   */
//  382 __weak void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue)
//  383 {
//  384   /* Prevent unused argument(s) compilation warning */
//  385   UNUSED(ReturnValue);
//  386   /* NOTE : This function Should not be modified, when the callback is needed,
//  387             the HAL_FLASH_EndOfOperationCallback could be implemented in the user file
//  388    */ 
//  389 }
//  390 
//  391 /**
//  392   * @brief  FLASH operation error interrupt callback
//  393   * @param  ReturnValue The value saved in this parameter depends on the ongoing procedure
//  394   *                 Mass Erase: Bank number which has been requested to erase
//  395   *                 Sectors Erase: Sector number which returned an error
//  396   *                 Program: Address which was selected for data program
//  397   * @retval None
//  398   */
//  399 __weak void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue)
//  400 {
//  401   /* Prevent unused argument(s) compilation warning */
//  402   UNUSED(ReturnValue);
//  403   /* NOTE : This function Should not be modified, when the callback is needed,
//  404             the HAL_FLASH_OperationErrorCallback could be implemented in the user file
//  405    */ 
//  406 }
//  407 
//  408 /**
//  409   * @}
//  410   */
//  411 
//  412 /** @defgroup FLASH_Exported_Functions_Group2 Peripheral Control functions 
//  413  *  @brief   management functions 
//  414  *
//  415 @verbatim   
//  416  ===============================================================================
//  417                       ##### Peripheral Control functions #####
//  418  ===============================================================================  
//  419     [..]
//  420     This subsection provides a set of functions allowing to control the FLASH 
//  421     memory operations.
//  422 
//  423 @endverbatim
//  424   * @{
//  425   */
//  426 
//  427 /**
//  428   * @brief  Unlock the FLASH control register access
//  429   * @retval HAL Status
//  430   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_FLASH_Unlock
          CFI NoCalls
        THUMB
//  431 HAL_StatusTypeDef HAL_FLASH_Unlock(void)
//  432 {
//  433   HAL_StatusTypeDef status = HAL_OK;
HAL_FLASH_Unlock:
        MOVS     R0,#+0
//  434 
//  435   if(READ_BIT(FLASH->CR, FLASH_CR_LOCK) != RESET)
        LDR.N    R1,??DataTable14_1  ;; 0x40023c10
        LDR      R2,[R1, #+0]
        CMP      R2,#+0
        BPL.N    ??HAL_FLASH_Unlock_0
//  436   {
//  437     /* Authorize the FLASH Registers access */
//  438     WRITE_REG(FLASH->KEYR, FLASH_KEY1);
        LDR.N    R2,??DataTable14_3  ;; 0x40023c04
        LDR.N    R3,??DataTable14_4  ;; 0x45670123
        STR      R3,[R2, #+0]
//  439     WRITE_REG(FLASH->KEYR, FLASH_KEY2);
        LDR.N    R3,??DataTable14_5  ;; 0xcdef89ab
        STR      R3,[R2, #+0]
//  440 
//  441     /* Verify Flash is unlocked */
//  442     if(READ_BIT(FLASH->CR, FLASH_CR_LOCK) != RESET)
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BPL.N    ??HAL_FLASH_Unlock_0
//  443     {
//  444       status = HAL_ERROR;
        MOVS     R0,#+1
//  445     }
//  446   }
//  447 
//  448   return status;
??HAL_FLASH_Unlock_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  449 }
          CFI EndBlock cfiBlock3
//  450 
//  451 /**
//  452   * @brief  Locks the FLASH control register access
//  453   * @retval HAL Status
//  454   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_FLASH_Lock
          CFI NoCalls
        THUMB
//  455 HAL_StatusTypeDef HAL_FLASH_Lock(void)
//  456 {
//  457   /* Set the LOCK Bit to lock the FLASH Registers access */
//  458   FLASH->CR |= FLASH_CR_LOCK;
HAL_FLASH_Lock:
        LDR.N    R0,??DataTable14_1  ;; 0x40023c10
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80000000
        STR      R1,[R0, #+0]
//  459   
//  460   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  461 }
          CFI EndBlock cfiBlock4
//  462 
//  463 /**
//  464   * @brief  Unlock the FLASH Option Control Registers access.
//  465   * @retval HAL Status
//  466   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Unlock
          CFI NoCalls
        THUMB
//  467 HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void)
//  468 {
//  469   if((FLASH->OPTCR & FLASH_OPTCR_OPTLOCK) != RESET)
HAL_FLASH_OB_Unlock:
        LDR.N    R0,??DataTable14_6  ;; 0x40023c14
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_FLASH_OB_Unlock_0
//  470   {
//  471     /* Authorizes the Option Byte register programming */
//  472     FLASH->OPTKEYR = FLASH_OPT_KEY1;
        LDR.N    R0,??DataTable14_7  ;; 0x40023c08
        LDR.N    R1,??DataTable14_8  ;; 0x8192a3b
        STR      R1,[R0, #+0]
//  473     FLASH->OPTKEYR = FLASH_OPT_KEY2;
        LDR.N    R1,??DataTable14_9  ;; 0x4c5d6e7f
        STR      R1,[R0, #+0]
//  474   }
//  475   else
//  476   {
//  477     return HAL_ERROR;
//  478   }  
//  479   
//  480   return HAL_OK;  
        MOVS     R0,#+0
        B.N      ??HAL_FLASH_OB_Unlock_1
??HAL_FLASH_OB_Unlock_0:
        MOVS     R0,#+1
??HAL_FLASH_OB_Unlock_1:
        BX       LR               ;; return
//  481 }
          CFI EndBlock cfiBlock5
//  482 
//  483 /**
//  484   * @brief  Lock the FLASH Option Control Registers access.
//  485   * @retval HAL Status 
//  486   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Lock
          CFI NoCalls
        THUMB
//  487 HAL_StatusTypeDef HAL_FLASH_OB_Lock(void)
//  488 {
//  489   /* Set the OPTLOCK Bit to lock the FLASH Option Byte Registers access */
//  490   FLASH->OPTCR |= FLASH_OPTCR_OPTLOCK;
HAL_FLASH_OB_Lock:
        LDR.N    R0,??DataTable14_6  ;; 0x40023c14
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  491   
//  492   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  493 }
          CFI EndBlock cfiBlock6
//  494 
//  495 /**
//  496   * @brief  Launch the option byte loading.
//  497   * @retval HAL Status
//  498   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Launch
        THUMB
//  499 HAL_StatusTypeDef HAL_FLASH_OB_Launch(void)
//  500 {
HAL_FLASH_OB_Launch:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  501   /* Set the OPTSTRT bit in OPTCR register */
//  502   *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS |= FLASH_OPTCR_OPTSTRT;
        LDR.N    R0,??DataTable14_6  ;; 0x40023c14
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  503 
//  504   /* Wait for last operation to be completed */
//  505   return(FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE)); 
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        POP      {R1,PC}          ;; return
//  506 }
          CFI EndBlock cfiBlock7
//  507 
//  508 /**
//  509   * @}
//  510   */
//  511 
//  512 /** @defgroup FLASH_Exported_Functions_Group3 Peripheral State and Errors functions 
//  513  *  @brief   Peripheral Errors functions 
//  514  *
//  515 @verbatim   
//  516  ===============================================================================
//  517                 ##### Peripheral Errors functions #####
//  518  ===============================================================================  
//  519     [..]
//  520     This subsection permits to get in run-time Errors of the FLASH peripheral.
//  521 
//  522 @endverbatim
//  523   * @{
//  524   */
//  525 
//  526 /**
//  527   * @brief  Get the specific FLASH error flag.
//  528   * @retval FLASH_ErrorCode: The returned value can be a combination of:
//  529   *            @arg HAL_FLASH_ERROR_RD: FLASH Read Protection error flag (PCROP)
//  530   *            @arg HAL_FLASH_ERROR_PGS: FLASH Programming Sequence error flag 
//  531   *            @arg HAL_FLASH_ERROR_PGP: FLASH Programming Parallelism error flag  
//  532   *            @arg HAL_FLASH_ERROR_PGA: FLASH Programming Alignment error flag
//  533   *            @arg HAL_FLASH_ERROR_WRP: FLASH Write protected error flag
//  534   *            @arg HAL_FLASH_ERROR_OPERATION: FLASH operation Error flag 
//  535   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_FLASH_GetError
          CFI NoCalls
        THUMB
//  536 uint32_t HAL_FLASH_GetError(void)
//  537 { 
//  538    return pFlash.ErrorCode;
HAL_FLASH_GetError:
        LDR.N    R0,??DataTable14
        LDR      R0,[R0, #+28]
        BX       LR               ;; return
//  539 }  
          CFI EndBlock cfiBlock8
//  540   
//  541 /**
//  542   * @}
//  543   */    
//  544 
//  545 /**
//  546   * @brief  Wait for a FLASH operation to complete.
//  547   * @param  Timeout maximum flash operationtimeout
//  548   * @retval HAL Status
//  549   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function FLASH_WaitForLastOperation
        THUMB
//  550 HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout)
//  551 { 
FLASH_WaitForLastOperation:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  552   uint32_t tickstart = 0U;
        MOVS     R0,#+0
//  553   
//  554   /* Clear Error Code */
//  555   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14
        STR      R0,[R1, #+28]
//  556   
//  557   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
//  558      Even if the FLASH operation fails, the BUSY flag will be reset and an error
//  559      flag will be set */
//  560   /* Get tick */
//  561   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  562 
//  563   while(__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY) != RESET) 
??FLASH_WaitForLastOperation_0:
        LDR.N    R0,??DataTable14_2  ;; 0x40023c0c
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+15
        BPL.N    ??FLASH_WaitForLastOperation_1
//  564   { 
//  565     if(Timeout != HAL_MAX_DELAY)
        CMN      R4,#+1
        BEQ.N    ??FLASH_WaitForLastOperation_0
//  566     {
//  567       if((Timeout == 0U)||((HAL_GetTick() - tickstart ) > Timeout))
        CMP      R4,#+0
        BEQ.N    ??FLASH_WaitForLastOperation_2
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R4,R0
        BCS.N    ??FLASH_WaitForLastOperation_0
//  568       {
//  569         return HAL_TIMEOUT;
??FLASH_WaitForLastOperation_2:
        MOVS     R0,#+3
        B.N      ??FLASH_WaitForLastOperation_3
//  570       }
//  571     } 
//  572   }
//  573 
//  574   /* Check FLASH End of Operation flag  */
//  575   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP) != RESET)
??FLASH_WaitForLastOperation_1:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??FLASH_WaitForLastOperation_4
//  576   {
//  577     /* Clear FLASH End of Operation pending bit */
//  578     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  579   }
//  580 #if defined(FLASH_SR_RDERR)  
//  581   if(__HAL_FLASH_GET_FLAG((FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | \ 
//  582                            FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR | FLASH_FLAG_RDERR)) != RESET)
//  583 #else
//  584   if(__HAL_FLASH_GET_FLAG((FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | \ 
//  585                            FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR)) != RESET)
??FLASH_WaitForLastOperation_4:
        LDR      R0,[R0, #+0]
        TST      R0,#0xF2
        BEQ.N    ??FLASH_WaitForLastOperation_5
//  586 #endif /* FLASH_SR_RDERR */
//  587   {
//  588     /*Save the error code*/
//  589     FLASH_SetErrorCode();
          CFI FunCall FLASH_SetErrorCode
        BL       FLASH_SetErrorCode
//  590     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??FLASH_WaitForLastOperation_3
//  591   }
//  592 
//  593   /* If there is no error flag set */
//  594   return HAL_OK;
??FLASH_WaitForLastOperation_5:
        MOVS     R0,#+0
??FLASH_WaitForLastOperation_3:
        POP      {R1,R4,R5,PC}    ;; return
//  595   
//  596 }  
          CFI EndBlock cfiBlock9
//  597 
//  598 /**
//  599   * @brief  Program a double word (64-bit) at a specified address.
//  600   * @note   This function must be used when the device voltage range is from
//  601   *         2.7V to 3.6V and Vpp in the range 7V to 9V.
//  602   *
//  603   * @note   If an erase and a program operations are requested simultaneously,    
//  604   *         the erase operation is performed before the program one.
//  605   *  
//  606   * @param  Address specifies the address to be programmed.
//  607   * @param  Data specifies the data to be programmed.
//  608   * @retval None
//  609   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function FLASH_Program_DoubleWord
          CFI NoCalls
        THUMB
//  610 static void FLASH_Program_DoubleWord(uint32_t Address, uint64_t Data)
//  611 {
FLASH_Program_DoubleWord:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  612   /* Check the parameters */
//  613   assert_param(IS_FLASH_ADDRESS(Address));
//  614   
//  615   /* If the previous operation is completed, proceed to program the new data */
//  616   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
        LDR.N    R1,??DataTable14_1  ;; 0x40023c10
        LDR      R4,[R1, #+0]
        BICS     R4,R4,#0x300
        STR      R4,[R1, #+0]
//  617   FLASH->CR |= FLASH_PSIZE_DOUBLE_WORD;
        LDR      R4,[R1, #+0]
        ORRS     R4,R4,#0x300
        STR      R4,[R1, #+0]
//  618   FLASH->CR |= FLASH_CR_PG;
        LDR      R4,[R1, #+0]
        ORRS     R4,R4,#0x1
        STR      R4,[R1, #+0]
//  619 
//  620   /* Program first word */
//  621   *(__IO uint32_t*)Address = (uint32_t)Data;
        STR      R2,[R0, #+0]
//  622 
//  623   /* Barrier to ensure programming is performed in 2 steps, in right order
//  624     (independently of compiler optimization behavior) */
//  625   __ISB();
        ISB      SY
//  626 
//  627   /* Program second word */
//  628   *(__IO uint32_t*)(Address+4) = (uint32_t)(Data >> 32);
        ADDS     R0,R0,#+4
        STR      R3,[R0, #+0]
//  629 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  630 
//  631 
//  632 /**
//  633   * @brief  Program word (32-bit) at a specified address.
//  634   * @note   This function must be used when the device voltage range is from
//  635   *         2.7V to 3.6V.
//  636   *
//  637   * @note   If an erase and a program operations are requested simultaneously,    
//  638   *         the erase operation is performed before the program one.
//  639   *  
//  640   * @param  Address specifies the address to be programmed.
//  641   * @param  Data specifies the data to be programmed.
//  642   * @retval None
//  643   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function FLASH_Program_Word
          CFI NoCalls
        THUMB
//  644 static void FLASH_Program_Word(uint32_t Address, uint32_t Data)
//  645 {
//  646   /* Check the parameters */
//  647   assert_param(IS_FLASH_ADDRESS(Address));
//  648   
//  649   /* If the previous operation is completed, proceed to program the new data */
//  650   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
FLASH_Program_Word:
        LDR.N    R2,??DataTable14_1  ;; 0x40023c10
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0x300
        STR      R3,[R2, #+0]
//  651   FLASH->CR |= FLASH_PSIZE_WORD;
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x200
        STR      R3,[R2, #+0]
//  652   FLASH->CR |= FLASH_CR_PG;
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x1
        STR      R3,[R2, #+0]
//  653 
//  654   *(__IO uint32_t*)Address = Data;
        STR      R1,[R0, #+0]
//  655 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  656 
//  657 /**
//  658   * @brief  Program a half-word (16-bit) at a specified address.
//  659   * @note   This function must be used when the device voltage range is from
//  660   *         2.1V to 3.6V.
//  661   *
//  662   * @note   If an erase and a program operations are requested simultaneously,    
//  663   *         the erase operation is performed before the program one.
//  664   *  
//  665   * @param  Address specifies the address to be programmed.
//  666   * @param  Data specifies the data to be programmed.
//  667   * @retval None
//  668   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FLASH_Program_HalfWord
          CFI NoCalls
        THUMB
//  669 static void FLASH_Program_HalfWord(uint32_t Address, uint16_t Data)
//  670 {
//  671   /* Check the parameters */
//  672   assert_param(IS_FLASH_ADDRESS(Address));
//  673   
//  674   /* If the previous operation is completed, proceed to program the new data */
//  675   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
FLASH_Program_HalfWord:
        LDR.N    R2,??DataTable14_1  ;; 0x40023c10
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0x300
        STR      R3,[R2, #+0]
//  676   FLASH->CR |= FLASH_PSIZE_HALF_WORD;
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x100
        STR      R3,[R2, #+0]
//  677   FLASH->CR |= FLASH_CR_PG;
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x1
        STR      R3,[R2, #+0]
//  678 
//  679   *(__IO uint16_t*)Address = Data;
        STRH     R1,[R0, #+0]
//  680 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  681 
//  682 /**
//  683   * @brief  Program byte (8-bit) at a specified address.
//  684   * @note   This function must be used when the device voltage range is from
//  685   *         1.8V to 3.6V.
//  686   *
//  687   * @note   If an erase and a program operations are requested simultaneously,    
//  688   *         the erase operation is performed before the program one.
//  689   *  
//  690   * @param  Address specifies the address to be programmed.
//  691   * @param  Data specifies the data to be programmed.
//  692   * @retval None
//  693   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function FLASH_Program_Byte
          CFI NoCalls
        THUMB
//  694 static void FLASH_Program_Byte(uint32_t Address, uint8_t Data)
//  695 {
//  696   /* Check the parameters */
//  697   assert_param(IS_FLASH_ADDRESS(Address));
//  698   
//  699   /* If the previous operation is completed, proceed to program the new data */
//  700   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
FLASH_Program_Byte:
        LDR.N    R2,??DataTable14_1  ;; 0x40023c10
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0x300
        STR      R3,[R2, #+0]
//  701   FLASH->CR |= FLASH_PSIZE_BYTE;
        LDR      R3,[R2, #+0]
        STR      R3,[R2, #+0]
//  702   FLASH->CR |= FLASH_CR_PG;
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x1
        STR      R3,[R2, #+0]
//  703 
//  704   *(__IO uint8_t*)Address = Data;
        STRB     R1,[R0, #+0]
//  705 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function FLASH_SetErrorCode
          CFI NoCalls
        THUMB
FLASH_SetErrorCode:
        LDR.N    R0,??DataTable14_2  ;; 0x40023c0c
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??FLASH_SetErrorCode_0
        LDR.N    R1,??DataTable14
        LDR      R2,[R1, #+28]
        ORRS     R2,R2,#0x10
        STR      R2,[R1, #+28]
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
??FLASH_SetErrorCode_0:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??FLASH_SetErrorCode_1
        LDR.N    R1,??DataTable14
        LDR      R2,[R1, #+28]
        ORRS     R2,R2,#0x8
        STR      R2,[R1, #+28]
        MOVS     R1,#+32
        STR      R1,[R0, #+0]
??FLASH_SetErrorCode_1:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+25
        BPL.N    ??FLASH_SetErrorCode_2
        LDR.N    R1,??DataTable14
        LDR      R2,[R1, #+28]
        ORRS     R2,R2,#0x4
        STR      R2,[R1, #+28]
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
??FLASH_SetErrorCode_2:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??FLASH_SetErrorCode_3
        LDR.N    R1,??DataTable14
        LDR      R2,[R1, #+28]
        ORRS     R2,R2,#0x2
        STR      R2,[R1, #+28]
        MOVS     R1,#+128
        STR      R1,[R0, #+0]
??FLASH_SetErrorCode_3:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??FLASH_SetErrorCode_4
        LDR.N    R1,??DataTable14
        LDR      R2,[R1, #+28]
        ORRS     R2,R2,#0x20
        STR      R2,[R1, #+28]
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
??FLASH_SetErrorCode_4:
        BX       LR               ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DATA32
        DC32     pFlash

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DATA32
        DC32     0x40023c10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DATA32
        DC32     0x40023c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DATA32
        DC32     0x40023c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DATA32
        DC32     0x45670123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DATA32
        DC32     0xcdef89ab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DATA32
        DC32     0x40023c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DATA32
        DC32     0x40023c08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DATA32
        DC32     0x8192a3b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DATA32
        DC32     0x4c5d6e7f

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_FLASH_EndOfOperationCallback
          CFI NoCalls
        THUMB
HAL_FLASH_EndOfOperationCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_FLASH_OperationErrorCallback
          CFI NoCalls
        THUMB
HAL_FLASH_OperationErrorCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  706 
//  707 /**
//  708   * @brief  Set the specific FLASH error flag.
//  709   * @retval None
//  710   */
//  711 static void FLASH_SetErrorCode(void)
//  712 { 
//  713   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR) != RESET)
//  714   {
//  715    pFlash.ErrorCode |= HAL_FLASH_ERROR_WRP;
//  716    
//  717    /* Clear FLASH write protection error pending bit */
//  718    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_WRPERR);
//  719   }
//  720   
//  721   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR) != RESET)
//  722   {
//  723    pFlash.ErrorCode |= HAL_FLASH_ERROR_PGA;
//  724    
//  725    /* Clear FLASH Programming alignment error pending bit */
//  726    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_PGAERR);
//  727   }
//  728   
//  729   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGPERR) != RESET)
//  730   {
//  731     pFlash.ErrorCode |= HAL_FLASH_ERROR_PGP;
//  732     
//  733     /* Clear FLASH Programming parallelism error pending bit */
//  734     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_PGPERR);
//  735   }
//  736   
//  737   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGSERR) != RESET)
//  738   {
//  739     pFlash.ErrorCode |= HAL_FLASH_ERROR_PGS;
//  740     
//  741     /* Clear FLASH Programming sequence error pending bit */
//  742     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_PGSERR);
//  743   }
//  744 #if defined(FLASH_SR_RDERR) 
//  745   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR) != RESET)
//  746   {
//  747     pFlash.ErrorCode |= HAL_FLASH_ERROR_RD;
//  748     
//  749     /* Clear FLASH Proprietary readout protection error pending bit */
//  750     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_RDERR);
//  751   }
//  752 #endif /* FLASH_SR_RDERR */  
//  753   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPERR) != RESET)
//  754   {
//  755     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPERATION;
//  756     
//  757     /* Clear FLASH Operation error pending bit */
//  758     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_OPERR);
//  759   }
//  760 }
//  761 
//  762 /**
//  763   * @}
//  764   */
//  765 
//  766 #endif /* HAL_FLASH_MODULE_ENABLED */
//  767 
//  768 /**
//  769   * @}
//  770   */
//  771 
//  772 /**
//  773   * @}
//  774   */
//  775 
// 
//  32 bytes in section .bss
// 896 bytes in section .text
// 
// 892 bytes of CODE memory (+ 4 bytes shared)
//  32 bytes of DATA memory
//
//Errors: none
//Warnings: none
