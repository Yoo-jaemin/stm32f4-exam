///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DF.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ex.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_flash_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_WaitForLastOperation
        EXTERN pFlash

        PUBLIC FLASH_Erase_Sector
        PUBLIC FLASH_FlushCaches
        PUBLIC HAL_FLASHEx_Erase
        PUBLIC HAL_FLASHEx_Erase_IT
        PUBLIC HAL_FLASHEx_OBGetConfig
        PUBLIC HAL_FLASHEx_OBProgram
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_flash_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_flash_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   Extended FLASH HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the FLASH extension peripheral:
//    8   *           + Extended programming operations functions
//    9   *
//   10   @verbatim
//   11   ==============================================================================
//   12                    ##### Flash Extension features #####
//   13   ==============================================================================
//   14 
//   15   [..] Comparing to other previous devices, the FLASH interface for STM32F427xx/437xx and
//   16        STM32F429xx/439xx devices contains the following additional features
//   17 
//   18        (+) Capacity up to 2 Mbyte with dual bank architecture supporting read-while-write
//   19            capability (RWW)
//   20        (+) Dual bank memory organization
//   21        (+) PCROP protection for all banks
//   22 
//   23                       ##### How to use this driver #####
//   24   ==============================================================================
//   25   [..] This driver provides functions to configure and program the FLASH memory
//   26        of all STM32F427xx/437xx, STM32F429xx/439xx, STM32F469xx/479xx and STM32F446xx
//   27        devices. It includes
//   28       (#) FLASH Memory Erase functions:
//   29            (++) Lock and Unlock the FLASH interface using HAL_FLASH_Unlock() and
//   30                 HAL_FLASH_Lock() functions
//   31            (++) Erase function: Erase sector, erase all sectors
//   32            (++) There are two modes of erase :
//   33              (+++) Polling Mode using HAL_FLASHEx_Erase()
//   34              (+++) Interrupt Mode using HAL_FLASHEx_Erase_IT()
//   35 
//   36       (#) Option Bytes Programming functions: Use HAL_FLASHEx_OBProgram() to :
//   37            (++) Set/Reset the write protection
//   38            (++) Set the Read protection Level
//   39            (++) Set the BOR level
//   40            (++) Program the user Option Bytes
//   41       (#) Advanced Option Bytes Programming functions: Use HAL_FLASHEx_AdvOBProgram() to :
//   42        (++) Extended space (bank 2) erase function
//   43        (++) Full FLASH space (2 Mo) erase (bank 1 and bank 2)
//   44        (++) Dual Boot activation
//   45        (++) Write protection configuration for bank 2
//   46        (++) PCROP protection configuration and control for both banks
//   47 
//   48   @endverbatim
//   49   ******************************************************************************
//   50   * @attention
//   51   *
//   52   * Copyright (c) 2017 STMicroelectronics.
//   53   * All rights reserved.
//   54   *
//   55   * This software is licensed under terms that can be found in the LICENSE file in
//   56   * the root directory of this software component.
//   57   * If no LICENSE file comes with this software, it is provided AS-IS.
//   58   ******************************************************************************
//   59   */
//   60 
//   61 /* Includes ------------------------------------------------------------------*/
//   62 #include "stm32f4xx_hal.h"
//   63 
//   64 /** @addtogroup STM32F4xx_HAL_Driver
//   65   * @{
//   66   */
//   67 
//   68 /** @defgroup FLASHEx FLASHEx
//   69   * @brief FLASH HAL Extension module driver
//   70   * @{
//   71   */
//   72 
//   73 #ifdef HAL_FLASH_MODULE_ENABLED
//   74 
//   75 /* Private typedef -----------------------------------------------------------*/
//   76 /* Private define ------------------------------------------------------------*/
//   77 /** @addtogroup FLASHEx_Private_Constants
//   78   * @{
//   79   */
//   80 #define FLASH_TIMEOUT_VALUE       50000U /* 50 s */
//   81 /**
//   82   * @}
//   83   */
//   84 
//   85 /* Private macro -------------------------------------------------------------*/
//   86 /* Private variables ---------------------------------------------------------*/
//   87 /** @addtogroup FLASHEx_Private_Variables
//   88   * @{
//   89   */
//   90 extern FLASH_ProcessTypeDef pFlash;
//   91 /**
//   92   * @}
//   93   */
//   94 
//   95 /* Private function prototypes -----------------------------------------------*/
//   96 /** @addtogroup FLASHEx_Private_Functions
//   97   * @{
//   98   */
//   99 /* Option bytes control */
//  100 static void               FLASH_MassErase(uint8_t VoltageRange, uint32_t Banks);
//  101 static HAL_StatusTypeDef  FLASH_OB_EnableWRP(uint32_t WRPSector, uint32_t Banks);
//  102 static HAL_StatusTypeDef  FLASH_OB_DisableWRP(uint32_t WRPSector, uint32_t Banks);
//  103 static HAL_StatusTypeDef  FLASH_OB_RDP_LevelConfig(uint8_t Level);
//  104 static HAL_StatusTypeDef  FLASH_OB_UserConfig(uint8_t Iwdg, uint8_t Stop, uint8_t Stdby);
//  105 static HAL_StatusTypeDef  FLASH_OB_BOR_LevelConfig(uint8_t Level);
//  106 static uint8_t            FLASH_OB_GetUser(void);
//  107 static uint16_t           FLASH_OB_GetWRP(void);
//  108 static uint8_t            FLASH_OB_GetRDP(void);
//  109 static uint8_t            FLASH_OB_GetBOR(void);
//  110 
//  111 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) || defined(STM32F411xE) ||\ 
//  112     defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) || defined(STM32F413xx) ||\ 
//  113     defined(STM32F423xx)
//  114 static HAL_StatusTypeDef  FLASH_OB_EnablePCROP(uint32_t Sector);
//  115 static HAL_StatusTypeDef  FLASH_OB_DisablePCROP(uint32_t Sector);
//  116 #endif /* STM32F401xC || STM32F401xE || STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx
//  117           STM32F413xx || STM32F423xx */
//  118 
//  119 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx)|| defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  120 static HAL_StatusTypeDef FLASH_OB_EnablePCROP(uint32_t SectorBank1, uint32_t SectorBank2, uint32_t Banks);
//  121 static HAL_StatusTypeDef FLASH_OB_DisablePCROP(uint32_t SectorBank1, uint32_t SectorBank2, uint32_t Banks);
//  122 static HAL_StatusTypeDef FLASH_OB_BootConfig(uint8_t BootConfig);
//  123 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  124 
//  125 extern HAL_StatusTypeDef         FLASH_WaitForLastOperation(uint32_t Timeout);
//  126 /**
//  127   * @}
//  128   */
//  129 
//  130 /* Exported functions --------------------------------------------------------*/
//  131 /** @defgroup FLASHEx_Exported_Functions FLASHEx Exported Functions
//  132   * @{
//  133   */
//  134 
//  135 /** @defgroup FLASHEx_Exported_Functions_Group1 Extended IO operation functions
//  136  *  @brief   Extended IO operation functions
//  137  *
//  138 @verbatim
//  139  ===============================================================================
//  140                 ##### Extended programming operation functions #####
//  141  ===============================================================================
//  142     [..]
//  143     This subsection provides a set of functions allowing to manage the Extension FLASH
//  144     programming operations.
//  145 
//  146 @endverbatim
//  147   * @{
//  148   */
//  149 /**
//  150   * @brief  Perform a mass erase or erase the specified FLASH memory sectors
//  151   * @param[in]  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
//  152   *         contains the configuration information for the erasing.
//  153   *
//  154   * @param[out]  SectorError pointer to variable  that
//  155   *         contains the configuration information on faulty sector in case of error
//  156   *         (0xFFFFFFFFU means that all the sectors have been correctly erased)
//  157   *
//  158   * @retval HAL Status
//  159   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_FLASHEx_Erase
        THUMB
//  160 HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *SectorError)
//  161 {
HAL_FLASHEx_Erase:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
//  162   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  163   uint32_t index = 0U;
        MOVS     R0,#+0
//  164 
//  165   /* Process Locked */
//  166   __HAL_LOCK(&pFlash);
        LDR.W    R6,??DataTable14
        LDRB     R0,[R6, #+24]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_Erase_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_Erase_1
??HAL_FLASHEx_Erase_0:
        MOVS     R0,#+1
        STRB     R0,[R6, #+24]
//  167 
//  168   /* Check the parameters */
//  169   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
//  170 
//  171   /* Wait for last operation to be completed */
//  172   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R8,#+50000
        MOV      R0,R8
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
//  173 
//  174   if (status == HAL_OK)
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_Erase_2
//  175   {
//  176     /*Initialization of SectorError variable*/
//  177     *SectorError = 0xFFFFFFFFU;
        MOVS     R0,#-1
        STR      R0,[R5, #+0]
//  178 
//  179     if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_Erase_3
//  180     {
//  181       /*Mass erase to be done*/
//  182       FLASH_MassErase((uint8_t) pEraseInit->VoltageRange, pEraseInit->Banks);
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall FLASH_MassErase
        BL       FLASH_MassErase
//  183 
//  184       /* Wait for last operation to be completed */
//  185       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOV      R0,R8
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
//  186 
//  187       /* if the erase operation is completed, disable the MER Bit */
//  188       FLASH->CR &= (~FLASH_MER_BIT);
        LDR.N    R0,??DataTable14_1  ;; 0x40023c10
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+0]
        B.N      ??HAL_FLASHEx_Erase_4
//  189     }
//  190     else
//  191     {
//  192       /* Check the parameters */
//  193       assert_param(IS_FLASH_NBSECTORS(pEraseInit->NbSectors + pEraseInit->Sector));
//  194 
//  195       /* Erase by sector by sector to be done*/
//  196       for (index = pEraseInit->Sector; index < (pEraseInit->NbSectors + pEraseInit->Sector); index++)
??HAL_FLASHEx_Erase_3:
        LDR      R9,[R4, #+8]
        B.N      ??HAL_FLASHEx_Erase_5
??HAL_FLASHEx_Erase_6:
        ADDS     R9,R9,#+1
??HAL_FLASHEx_Erase_5:
        LDR      R1,[R4, #+12]
        LDR      R0,[R4, #+8]
        ADDS     R1,R0,R1
        CMP      R9,R1
        BCS.N    ??HAL_FLASHEx_Erase_4
//  197       {
//  198         FLASH_Erase_Sector(index, (uint8_t) pEraseInit->VoltageRange);
        LDR      R1,[R4, #+16]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
          CFI FunCall FLASH_Erase_Sector
        BL       FLASH_Erase_Sector
//  199 
//  200         /* Wait for last operation to be completed */
//  201         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOV      R0,R8
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
//  202 
//  203         /* If the erase operation is completed, disable the SER and SNB Bits */
//  204         CLEAR_BIT(FLASH->CR, (FLASH_CR_SER | FLASH_CR_SNB));
        LDR.N    R0,??DataTable14_1  ;; 0x40023c10
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xFA
        STR      R1,[R0, #+0]
//  205 
//  206         if (status != HAL_OK)
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_Erase_6
//  207         {
//  208           /* In case of error, stop erase procedure and return the faulty sector*/
//  209           *SectorError = index;
        STR      R9,[R5, #+0]
//  210           break;
//  211         }
//  212       }
//  213     }
//  214     /* Flush the caches to be sure of the data consistency */
//  215     FLASH_FlushCaches();
??HAL_FLASHEx_Erase_4:
          CFI FunCall FLASH_FlushCaches
        BL       FLASH_FlushCaches
//  216   }
//  217 
//  218   /* Process Unlocked */
//  219   __HAL_UNLOCK(&pFlash);
??HAL_FLASHEx_Erase_2:
        MOVS     R0,#+0
        STRB     R0,[R6, #+24]
//  220 
//  221   return status;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_Erase_1:
        POP      {R1,R4-R9,PC}    ;; return
//  222 }
          CFI EndBlock cfiBlock0
//  223 
//  224 /**
//  225   * @brief  Perform a mass erase or erase the specified FLASH memory sectors  with interrupt enabled
//  226   * @param  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
//  227   *         contains the configuration information for the erasing.
//  228   *
//  229   * @retval HAL Status
//  230   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_FLASHEx_Erase_IT
        THUMB
//  231 HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit)
//  232 {
HAL_FLASHEx_Erase_IT:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  233   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R4,#+0
//  234 
//  235   /* Process Locked */
//  236   __HAL_LOCK(&pFlash);
        LDR.N    R1,??DataTable14
        LDRB     R2,[R1, #+24]
        CMP      R2,#+1
        BNE.N    ??HAL_FLASHEx_Erase_IT_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_Erase_IT_1
??HAL_FLASHEx_Erase_IT_0:
        MOVS     R2,#+1
        STRB     R2,[R1, #+24]
//  237 
//  238   /* Check the parameters */
//  239   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
//  240 
//  241   /* Enable End of FLASH Operation interrupt */
//  242   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP);
        LDR.N    R2,??DataTable14_1  ;; 0x40023c10
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x1000000
        STR      R3,[R2, #+0]
//  243 
//  244   /* Enable Error source interrupt */
//  245   __HAL_FLASH_ENABLE_IT(FLASH_IT_ERR);
        LDR      R3,[R2, #+0]
        ORRS     R3,R3,#0x2000000
        STR      R3,[R2, #+0]
//  246 
//  247   /* Clear pending flags (if any) */
//  248   __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP    | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | \ 
//  249                          FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR);
        MOVS     R2,#+243
        LDR.N    R3,??DataTable14_2  ;; 0x40023c0c
        STR      R2,[R3, #+0]
//  250 
//  251   if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
        LDR      R2,[R0, #+0]
        CMP      R2,#+1
        BNE.N    ??HAL_FLASHEx_Erase_IT_2
//  252   {
//  253     /*Mass erase to be done*/
//  254     pFlash.ProcedureOnGoing = FLASH_PROC_MASSERASE;
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//  255     pFlash.Bank = pEraseInit->Banks;
        LDR      R2,[R0, #+4]
        STR      R2,[R1, #+16]
//  256     FLASH_MassErase((uint8_t) pEraseInit->VoltageRange, pEraseInit->Banks);
        LDR      R1,[R0, #+4]
        LDR      R0,[R0, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall FLASH_MassErase
        BL       FLASH_MassErase
        B.N      ??HAL_FLASHEx_Erase_IT_3
//  257   }
//  258   else
//  259   {
//  260     /* Erase by sector to be done*/
//  261 
//  262     /* Check the parameters */
//  263     assert_param(IS_FLASH_NBSECTORS(pEraseInit->NbSectors + pEraseInit->Sector));
//  264 
//  265     pFlash.ProcedureOnGoing = FLASH_PROC_SECTERASE;
??HAL_FLASHEx_Erase_IT_2:
        MOVS     R2,#+1
        STRB     R2,[R1, #+0]
//  266     pFlash.NbSectorsToErase = pEraseInit->NbSectors;
        LDR      R2,[R0, #+12]
        STR      R2,[R1, #+4]
//  267     pFlash.Sector = pEraseInit->Sector;
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+12]
//  268     pFlash.VoltageForErase = (uint8_t)pEraseInit->VoltageRange;
        LDR      R2,[R0, #+16]
        STRB     R2,[R1, #+8]
//  269 
//  270     /*Erase 1st sector and wait for IT*/
//  271     FLASH_Erase_Sector(pEraseInit->Sector, pEraseInit->VoltageRange);
        LDR      R1,[R0, #+16]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+8]
          CFI FunCall FLASH_Erase_Sector
        BL       FLASH_Erase_Sector
//  272   }
//  273 
//  274   return status;
??HAL_FLASHEx_Erase_IT_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_Erase_IT_1:
        POP      {R4,PC}          ;; return
//  275 }
          CFI EndBlock cfiBlock1
//  276 
//  277 /**
//  278   * @brief   Program option bytes
//  279   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
//  280   *         contains the configuration information for the programming.
//  281   *
//  282   * @retval HAL Status
//  283   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_FLASHEx_OBProgram
        THUMB
//  284 HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit)
//  285 {
HAL_FLASHEx_OBProgram:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
//  286   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  287 
//  288   /* Process Locked */
//  289   __HAL_LOCK(&pFlash);
        LDR.N    R4,??DataTable14
        LDRB     R1,[R4, #+24]
        CMP      R1,#+1
        BNE.N    ??HAL_FLASHEx_OBProgram_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_OBProgram_1
??HAL_FLASHEx_OBProgram_0:
        MOVS     R1,#+1
        STRB     R1,[R4, #+24]
//  290 
//  291   /* Check the parameters */
//  292   assert_param(IS_OPTIONBYTE(pOBInit->OptionType));
//  293 
//  294   /*Write protection configuration*/
//  295   if ((pOBInit->OptionType & OPTIONBYTE_WRP) == OPTIONBYTE_WRP)
        LDRB     R1,[R5, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??HAL_FLASHEx_OBProgram_2
//  296   {
//  297     assert_param(IS_WRPSTATE(pOBInit->WRPState));
//  298     if (pOBInit->WRPState == OB_WRPSTATE_ENABLE)
        LDR      R0,[R5, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_OBProgram_3
//  299     {
//  300       /*Enable of Write protection on the selected Sector*/
//  301       status = FLASH_OB_EnableWRP(pOBInit->WRPSector, pOBInit->Banks);
        LDR      R1,[R5, #+12]
        LDR      R0,[R5, #+8]
          CFI FunCall FLASH_OB_EnableWRP
        BL       FLASH_OB_EnableWRP
        B.N      ??HAL_FLASHEx_OBProgram_2
//  302     }
//  303     else
//  304     {
//  305       /*Disable of Write protection on the selected Sector*/
//  306       status = FLASH_OB_DisableWRP(pOBInit->WRPSector, pOBInit->Banks);
??HAL_FLASHEx_OBProgram_3:
        LDR      R1,[R5, #+12]
        LDR      R0,[R5, #+8]
          CFI FunCall FLASH_OB_DisableWRP
        BL       FLASH_OB_DisableWRP
//  307     }
//  308   }
//  309 
//  310   /*Read protection configuration*/
//  311   if ((pOBInit->OptionType & OPTIONBYTE_RDP) == OPTIONBYTE_RDP)
??HAL_FLASHEx_OBProgram_2:
        LDRB     R1,[R5, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??HAL_FLASHEx_OBProgram_4
//  312   {
//  313     status = FLASH_OB_RDP_LevelConfig(pOBInit->RDPLevel);
        LDR      R0,[R5, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall FLASH_OB_RDP_LevelConfig
        BL       FLASH_OB_RDP_LevelConfig
//  314   }
//  315 
//  316   /*USER  configuration*/
//  317   if ((pOBInit->OptionType & OPTIONBYTE_USER) == OPTIONBYTE_USER)
??HAL_FLASHEx_OBProgram_4:
        LDRB     R1,[R5, #+0]
        LSLS     R1,R1,#+29
        BPL.N    ??HAL_FLASHEx_OBProgram_5
//  318   {
//  319     status = FLASH_OB_UserConfig(pOBInit->USERConfig & OB_IWDG_SW,
//  320                                  pOBInit->USERConfig & OB_STOP_NO_RST,
//  321                                  pOBInit->USERConfig & OB_STDBY_NO_RST);
        LDRB     R2,[R5, #+24]
        ANDS     R2,R2,#0x80
        LDRB     R1,[R5, #+24]
        ANDS     R1,R1,#0x40
        LDRB     R0,[R5, #+24]
        ANDS     R0,R0,#0x20
          CFI FunCall FLASH_OB_UserConfig
        BL       FLASH_OB_UserConfig
//  322   }
//  323 
//  324   /*BOR Level  configuration*/
//  325   if ((pOBInit->OptionType & OPTIONBYTE_BOR) == OPTIONBYTE_BOR)
??HAL_FLASHEx_OBProgram_5:
        LDRB     R1,[R5, #+0]
        LSLS     R1,R1,#+28
        BPL.N    ??HAL_FLASHEx_OBProgram_6
//  326   {
//  327     status = FLASH_OB_BOR_LevelConfig(pOBInit->BORLevel);
        LDR      R0,[R5, #+20]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall FLASH_OB_BOR_LevelConfig
        BL       FLASH_OB_BOR_LevelConfig
//  328   }
//  329 
//  330   /* Process Unlocked */
//  331   __HAL_UNLOCK(&pFlash);
??HAL_FLASHEx_OBProgram_6:
        MOVS     R1,#+0
        STRB     R1,[R4, #+24]
//  332 
//  333   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_OBProgram_1:
        POP      {R1,R4,R5,PC}    ;; return
//  334 }
          CFI EndBlock cfiBlock2
//  335 
//  336 /**
//  337   * @brief   Get the Option byte configuration
//  338   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
//  339   *         contains the configuration information for the programming.
//  340   *
//  341   * @retval None
//  342   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_FLASHEx_OBGetConfig
        THUMB
//  343 void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit)
//  344 {
HAL_FLASHEx_OBGetConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  345   pOBInit->OptionType = OPTIONBYTE_WRP | OPTIONBYTE_RDP | OPTIONBYTE_USER | OPTIONBYTE_BOR;
        MOVS     R0,#+15
        STR      R0,[R4, #+0]
//  346 
//  347   /*Get WRP*/
//  348   pOBInit->WRPSector = (uint32_t)FLASH_OB_GetWRP();
          CFI FunCall FLASH_OB_GetWRP
        BL       FLASH_OB_GetWRP
        STR      R0,[R4, #+8]
//  349 
//  350   /*Get RDP Level*/
//  351   pOBInit->RDPLevel = (uint32_t)FLASH_OB_GetRDP();
          CFI FunCall FLASH_OB_GetRDP
        BL       FLASH_OB_GetRDP
        STR      R0,[R4, #+16]
//  352 
//  353   /*Get USER*/
//  354   pOBInit->USERConfig = (uint8_t)FLASH_OB_GetUser();
          CFI FunCall FLASH_OB_GetUser
        BL       FLASH_OB_GetUser
        STRB     R0,[R4, #+24]
//  355 
//  356   /*Get BOR Level*/
//  357   pOBInit->BORLevel = (uint32_t)FLASH_OB_GetBOR();
          CFI FunCall FLASH_OB_GetBOR
        BL       FLASH_OB_GetBOR
        STR      R0,[R4, #+20]
//  358 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  359 
//  360 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) ||\ 
//  361     defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) ||\ 
//  362     defined(STM32F410Rx) || defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F469xx) ||\ 
//  363     defined(STM32F479xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) ||\ 
//  364     defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
//  365 /**
//  366   * @brief   Program option bytes
//  367   * @param  pAdvOBInit pointer to an FLASH_AdvOBProgramInitTypeDef structure that
//  368   *         contains the configuration information for the programming.
//  369   *
//  370   * @retval HAL Status
//  371   */
//  372 HAL_StatusTypeDef HAL_FLASHEx_AdvOBProgram(FLASH_AdvOBProgramInitTypeDef *pAdvOBInit)
//  373 {
//  374   HAL_StatusTypeDef status = HAL_ERROR;
//  375 
//  376   /* Check the parameters */
//  377   assert_param(IS_OBEX(pAdvOBInit->OptionType));
//  378 
//  379   /*Program PCROP option byte*/
//  380   if (((pAdvOBInit->OptionType) & OPTIONBYTE_PCROP) == OPTIONBYTE_PCROP)
//  381   {
//  382     /* Check the parameters */
//  383     assert_param(IS_PCROPSTATE(pAdvOBInit->PCROPState));
//  384     if ((pAdvOBInit->PCROPState) == OB_PCROP_STATE_ENABLE)
//  385     {
//  386       /*Enable of Write protection on the selected Sector*/
//  387 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) ||\ 
//  388     defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) ||\ 
//  389     defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
//  390       status = FLASH_OB_EnablePCROP(pAdvOBInit->Sectors);
//  391 #else  /* STM32F427xx || STM32F437xx || STM32F429xx|| STM32F439xx || STM32F469xx || STM32F479xx */
//  392       status = FLASH_OB_EnablePCROP(pAdvOBInit->SectorsBank1, pAdvOBInit->SectorsBank2, pAdvOBInit->Banks);
//  393 #endif /* STM32F401xC || STM32F401xE || STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx ||
//  394           STM32F413xx || STM32F423xx */
//  395     }
//  396     else
//  397     {
//  398       /*Disable of Write protection on the selected Sector*/
//  399 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) ||\ 
//  400     defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) ||\ 
//  401     defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
//  402       status = FLASH_OB_DisablePCROP(pAdvOBInit->Sectors);
//  403 #else /* STM32F427xx || STM32F437xx || STM32F429xx|| STM32F439xx || STM32F469xx || STM32F479xx */
//  404       status = FLASH_OB_DisablePCROP(pAdvOBInit->SectorsBank1, pAdvOBInit->SectorsBank2, pAdvOBInit->Banks);
//  405 #endif /* STM32F401xC || STM32F401xE || STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx ||
//  406           STM32F413xx || STM32F423xx */
//  407     }
//  408   }
//  409 
//  410 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  411   /*Program BOOT config option byte*/
//  412   if (((pAdvOBInit->OptionType) & OPTIONBYTE_BOOTCONFIG) == OPTIONBYTE_BOOTCONFIG)
//  413   {
//  414     status = FLASH_OB_BootConfig(pAdvOBInit->BootConfig);
//  415   }
//  416 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  417 
//  418   return status;
//  419 }
//  420 
//  421 /**
//  422   * @brief   Get the OBEX byte configuration
//  423   * @param  pAdvOBInit pointer to an FLASH_AdvOBProgramInitTypeDef structure that
//  424   *         contains the configuration information for the programming.
//  425   *
//  426   * @retval None
//  427   */
//  428 void HAL_FLASHEx_AdvOBGetConfig(FLASH_AdvOBProgramInitTypeDef *pAdvOBInit)
//  429 {
//  430 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) ||\ 
//  431     defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) ||\ 
//  432     defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
//  433   /*Get Sector*/
//  434   pAdvOBInit->Sectors = (*(__IO uint16_t *)(OPTCR_BYTE2_ADDRESS));
//  435 #else  /* STM32F427xx || STM32F437xx || STM32F429xx|| STM32F439xx || STM32F469xx || STM32F479xx */
//  436   /*Get Sector for Bank1*/
//  437   pAdvOBInit->SectorsBank1 = (*(__IO uint16_t *)(OPTCR_BYTE2_ADDRESS));
//  438 
//  439   /*Get Sector for Bank2*/
//  440   pAdvOBInit->SectorsBank2 = (*(__IO uint16_t *)(OPTCR1_BYTE2_ADDRESS));
//  441 
//  442   /*Get Boot config OB*/
//  443   pAdvOBInit->BootConfig = *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS;
//  444 #endif /* STM32F401xC || STM32F401xE || STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx ||
//  445           STM32F413xx || STM32F423xx */
//  446 }
//  447 
//  448 /**
//  449   * @brief  Select the Protection Mode
//  450   *
//  451   * @note   After PCROP activated Option Byte modification NOT POSSIBLE! excepted
//  452   *         Global Read Out Protection modification (from level1 to level0)
//  453   * @note   Once SPRMOD bit is active unprotection of a protected sector is not possible
//  454   * @note   Read a protected sector will set RDERR Flag and write a protected sector will set WRPERR Flag
//  455   * @note   This function can be used only for STM32F42xxx/STM32F43xxx/STM32F401xx/STM32F411xx/STM32F446xx/
//  456   *         STM32F469xx/STM32F479xx/STM32F412xx/STM32F413xx devices.
//  457   *
//  458   * @retval HAL Status
//  459   */
//  460 HAL_StatusTypeDef HAL_FLASHEx_OB_SelectPCROP(void)
//  461 {
//  462   uint8_t optiontmp = 0xFF;
//  463 
//  464   /* Mask SPRMOD bit */
//  465   optiontmp = (uint8_t)((*(__IO uint8_t *)OPTCR_BYTE3_ADDRESS) & (uint8_t)0x7F);
//  466 
//  467   /* Update Option Byte */
//  468   *(__IO uint8_t *)OPTCR_BYTE3_ADDRESS = (uint8_t)(OB_PCROP_SELECTED | optiontmp);
//  469 
//  470   return HAL_OK;
//  471 }
//  472 
//  473 /**
//  474   * @brief  Deselect the Protection Mode
//  475   *
//  476   * @note   After PCROP activated Option Byte modification NOT POSSIBLE! excepted
//  477   *         Global Read Out Protection modification (from level1 to level0)
//  478   * @note   Once SPRMOD bit is active unprotection of a protected sector is not possible
//  479   * @note   Read a protected sector will set RDERR Flag and write a protected sector will set WRPERR Flag
//  480   * @note   This function can be used only for STM32F42xxx/STM32F43xxx/STM32F401xx/STM32F411xx/STM32F446xx/
//  481   *         STM32F469xx/STM32F479xx/STM32F412xx/STM32F413xx devices.
//  482   *
//  483   * @retval HAL Status
//  484   */
//  485 HAL_StatusTypeDef HAL_FLASHEx_OB_DeSelectPCROP(void)
//  486 {
//  487   uint8_t optiontmp = 0xFF;
//  488 
//  489   /* Mask SPRMOD bit */
//  490   optiontmp = (uint8_t)((*(__IO uint8_t *)OPTCR_BYTE3_ADDRESS) & (uint8_t)0x7F);
//  491 
//  492   /* Update Option Byte */
//  493   *(__IO uint8_t *)OPTCR_BYTE3_ADDRESS = (uint8_t)(OB_PCROP_DESELECTED | optiontmp);
//  494 
//  495   return HAL_OK;
//  496 }
//  497 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F401xC || STM32F401xE || STM32F410xx ||\ 
//  498           STM32F411xE || STM32F469xx || STM32F479xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx ||
//  499           STM32F413xx || STM32F423xx */
//  500 
//  501 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx)|| defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  502 /**
//  503   * @brief  Returns the FLASH Write Protection Option Bytes value for Bank 2
//  504   * @note   This function can be used only for STM32F42xxx/STM32F43xxx/STM32F469xx/STM32F479xx devices.
//  505   * @retval The FLASH Write Protection  Option Bytes value
//  506   */
//  507 uint16_t HAL_FLASHEx_OB_GetBank2WRP(void)
//  508 {
//  509   /* Return the FLASH write protection Register value */
//  510   return (*(__IO uint16_t *)(OPTCR1_BYTE2_ADDRESS));
//  511 }
//  512 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  513 
//  514 /**
//  515   * @}
//  516   */
//  517 
//  518 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
//  519 /**
//  520   * @brief  Full erase of FLASH memory sectors
//  521   * @param  VoltageRange The device voltage range which defines the erase parallelism.
//  522   *          This parameter can be one of the following values:
//  523   *            @arg FLASH_VOLTAGE_RANGE_1: when the device voltage range is 1.8V to 2.1V,
//  524   *                                  the operation will be done by byte (8-bit)
//  525   *            @arg FLASH_VOLTAGE_RANGE_2: when the device voltage range is 2.1V to 2.7V,
//  526   *                                  the operation will be done by half word (16-bit)
//  527   *            @arg FLASH_VOLTAGE_RANGE_3: when the device voltage range is 2.7V to 3.6V,
//  528   *                                  the operation will be done by word (32-bit)
//  529   *            @arg FLASH_VOLTAGE_RANGE_4: when the device voltage range is 2.7V to 3.6V + External Vpp,
//  530   *                                  the operation will be done by double word (64-bit)
//  531   *
//  532   * @param  Banks Banks to be erased
//  533   *          This parameter can be one of the following values:
//  534   *            @arg FLASH_BANK_1: Bank1 to be erased
//  535   *            @arg FLASH_BANK_2: Bank2 to be erased
//  536   *            @arg FLASH_BANK_BOTH: Bank1 and Bank2 to be erased
//  537   *
//  538   * @retval HAL Status
//  539   */
//  540 static void FLASH_MassErase(uint8_t VoltageRange, uint32_t Banks)
//  541 {
//  542   /* Check the parameters */
//  543   assert_param(IS_VOLTAGERANGE(VoltageRange));
//  544   assert_param(IS_FLASH_BANK(Banks));
//  545 
//  546   /* if the previous operation is completed, proceed to erase all sectors */
//  547   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
//  548 
//  549   if (Banks == FLASH_BANK_BOTH)
//  550   {
//  551     /* bank1 & bank2 will be erased*/
//  552     FLASH->CR |= FLASH_MER_BIT;
//  553   }
//  554   else if (Banks == FLASH_BANK_1)
//  555   {
//  556     /*Only bank1 will be erased*/
//  557     FLASH->CR |= FLASH_CR_MER1;
//  558   }
//  559   else
//  560   {
//  561     /*Only bank2 will be erased*/
//  562     FLASH->CR |= FLASH_CR_MER2;
//  563   }
//  564   FLASH->CR |= FLASH_CR_STRT | ((uint32_t)VoltageRange << 8U);
//  565 }
//  566 
//  567 /**
//  568   * @brief  Erase the specified FLASH memory sector
//  569   * @param  Sector FLASH sector to erase
//  570   *         The value of this parameter depend on device used within the same series
//  571   * @param  VoltageRange The device voltage range which defines the erase parallelism.
//  572   *          This parameter can be one of the following values:
//  573   *            @arg FLASH_VOLTAGE_RANGE_1: when the device voltage range is 1.8V to 2.1V,
//  574   *                                  the operation will be done by byte (8-bit)
//  575   *            @arg FLASH_VOLTAGE_RANGE_2: when the device voltage range is 2.1V to 2.7V,
//  576   *                                  the operation will be done by half word (16-bit)
//  577   *            @arg FLASH_VOLTAGE_RANGE_3: when the device voltage range is 2.7V to 3.6V,
//  578   *                                  the operation will be done by word (32-bit)
//  579   *            @arg FLASH_VOLTAGE_RANGE_4: when the device voltage range is 2.7V to 3.6V + External Vpp,
//  580   *                                  the operation will be done by double word (64-bit)
//  581   *
//  582   * @retval None
//  583   */
//  584 void FLASH_Erase_Sector(uint32_t Sector, uint8_t VoltageRange)
//  585 {
//  586   uint32_t tmp_psize = 0U;
//  587 
//  588   /* Check the parameters */
//  589   assert_param(IS_FLASH_SECTOR(Sector));
//  590   assert_param(IS_VOLTAGERANGE(VoltageRange));
//  591 
//  592   if (VoltageRange == FLASH_VOLTAGE_RANGE_1)
//  593   {
//  594     tmp_psize = FLASH_PSIZE_BYTE;
//  595   }
//  596   else if (VoltageRange == FLASH_VOLTAGE_RANGE_2)
//  597   {
//  598     tmp_psize = FLASH_PSIZE_HALF_WORD;
//  599   }
//  600   else if (VoltageRange == FLASH_VOLTAGE_RANGE_3)
//  601   {
//  602     tmp_psize = FLASH_PSIZE_WORD;
//  603   }
//  604   else
//  605   {
//  606     tmp_psize = FLASH_PSIZE_DOUBLE_WORD;
//  607   }
//  608 
//  609   /* Need to add offset of 4 when sector higher than FLASH_SECTOR_11 */
//  610   if (Sector > FLASH_SECTOR_11)
//  611   {
//  612     Sector += 4U;
//  613   }
//  614   /* If the previous operation is completed, proceed to erase the sector */
//  615   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
//  616   FLASH->CR |= tmp_psize;
//  617   CLEAR_BIT(FLASH->CR, FLASH_CR_SNB);
//  618   FLASH->CR |= FLASH_CR_SER | (Sector << FLASH_CR_SNB_Pos);
//  619   FLASH->CR |= FLASH_CR_STRT;
//  620 }
//  621 
//  622 /**
//  623   * @brief  Enable the write protection of the desired bank1 or bank 2 sectors
//  624   *
//  625   * @note   When the memory read protection level is selected (RDP level = 1),
//  626   *         it is not possible to program or erase the flash sector i if CortexM4
//  627   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1
//  628   * @note   Active value of nWRPi bits is inverted when PCROP mode is active (SPRMOD =1).
//  629   *
//  630   * @param  WRPSector specifies the sector(s) to be write protected.
//  631   *          This parameter can be one of the following values:
//  632   *            @arg WRPSector: A value between OB_WRP_SECTOR_0 and OB_WRP_SECTOR_23
//  633   *            @arg OB_WRP_SECTOR_All
//  634   * @note   BANK2 starts from OB_WRP_SECTOR_12
//  635   *
//  636   * @param  Banks Enable write protection on all the sectors for the specific bank
//  637   *          This parameter can be one of the following values:
//  638   *            @arg FLASH_BANK_1: WRP on all sectors of bank1
//  639   *            @arg FLASH_BANK_2: WRP on all sectors of bank2
//  640   *            @arg FLASH_BANK_BOTH: WRP on all sectors of bank1 & bank2
//  641   *
//  642   * @retval HAL FLASH State
//  643   */
//  644 static HAL_StatusTypeDef FLASH_OB_EnableWRP(uint32_t WRPSector, uint32_t Banks)
//  645 {
//  646   HAL_StatusTypeDef status = HAL_OK;
//  647 
//  648   /* Check the parameters */
//  649   assert_param(IS_OB_WRP_SECTOR(WRPSector));
//  650   assert_param(IS_FLASH_BANK(Banks));
//  651 
//  652   /* Wait for last operation to be completed */
//  653   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  654 
//  655   if (status == HAL_OK)
//  656   {
//  657     if (((WRPSector == OB_WRP_SECTOR_All) && ((Banks == FLASH_BANK_1) || (Banks == FLASH_BANK_BOTH))) ||
//  658         (WRPSector < OB_WRP_SECTOR_12))
//  659     {
//  660       if (WRPSector == OB_WRP_SECTOR_All)
//  661       {
//  662         /*Write protection on all sector of BANK1*/
//  663         *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS &= (~(WRPSector >> 12));
//  664       }
//  665       else
//  666       {
//  667         /*Write protection done on sectors of BANK1*/
//  668         *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS &= (~WRPSector);
//  669       }
//  670     }
//  671     else
//  672     {
//  673       /*Write protection done on sectors of BANK2*/
//  674       *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS &= (~(WRPSector >> 12));
//  675     }
//  676 
//  677     /*Write protection on all sector of BANK2*/
//  678     if ((WRPSector == OB_WRP_SECTOR_All) && (Banks == FLASH_BANK_BOTH))
//  679     {
//  680       /* Wait for last operation to be completed */
//  681       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  682 
//  683       if (status == HAL_OK)
//  684       {
//  685         *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS &= (~(WRPSector >> 12));
//  686       }
//  687     }
//  688 
//  689   }
//  690   return status;
//  691 }
//  692 
//  693 /**
//  694   * @brief  Disable the write protection of the desired bank1 or bank 2 sectors
//  695   *
//  696   * @note   When the memory read protection level is selected (RDP level = 1),
//  697   *         it is not possible to program or erase the flash sector i if CortexM4
//  698   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1
//  699   * @note   Active value of nWRPi bits is inverted when PCROP mode is active (SPRMOD =1).
//  700   *
//  701   * @param  WRPSector specifies the sector(s) to be write protected.
//  702   *          This parameter can be one of the following values:
//  703   *            @arg WRPSector: A value between OB_WRP_SECTOR_0 and OB_WRP_SECTOR_23
//  704   *            @arg OB_WRP_Sector_All
//  705   * @note   BANK2 starts from OB_WRP_SECTOR_12
//  706   *
//  707   * @param  Banks Disable write protection on all the sectors for the specific bank
//  708   *          This parameter can be one of the following values:
//  709   *            @arg FLASH_BANK_1: Bank1 to be erased
//  710   *            @arg FLASH_BANK_2: Bank2 to be erased
//  711   *            @arg FLASH_BANK_BOTH: Bank1 and Bank2 to be erased
//  712   *
//  713   * @retval HAL Status
//  714   */
//  715 static HAL_StatusTypeDef FLASH_OB_DisableWRP(uint32_t WRPSector, uint32_t Banks)
//  716 {
//  717   HAL_StatusTypeDef status = HAL_OK;
//  718 
//  719   /* Check the parameters */
//  720   assert_param(IS_OB_WRP_SECTOR(WRPSector));
//  721   assert_param(IS_FLASH_BANK(Banks));
//  722 
//  723   /* Wait for last operation to be completed */
//  724   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  725 
//  726   if (status == HAL_OK)
//  727   {
//  728     if (((WRPSector == OB_WRP_SECTOR_All) && ((Banks == FLASH_BANK_1) || (Banks == FLASH_BANK_BOTH))) ||
//  729         (WRPSector < OB_WRP_SECTOR_12))
//  730     {
//  731       if (WRPSector == OB_WRP_SECTOR_All)
//  732       {
//  733         /*Write protection on all sector of BANK1*/
//  734         *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS |= (uint16_t)(WRPSector >> 12);
//  735       }
//  736       else
//  737       {
//  738         /*Write protection done on sectors of BANK1*/
//  739         *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS |= (uint16_t)WRPSector;
//  740       }
//  741     }
//  742     else
//  743     {
//  744       /*Write protection done on sectors of BANK2*/
//  745       *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS |= (uint16_t)(WRPSector >> 12);
//  746     }
//  747 
//  748     /*Write protection on all sector  of BANK2*/
//  749     if ((WRPSector == OB_WRP_SECTOR_All) && (Banks == FLASH_BANK_BOTH))
//  750     {
//  751       /* Wait for last operation to be completed */
//  752       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  753 
//  754       if (status == HAL_OK)
//  755       {
//  756         *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS |= (uint16_t)(WRPSector >> 12);
//  757       }
//  758     }
//  759 
//  760   }
//  761 
//  762   return status;
//  763 }
//  764 
//  765 /**
//  766   * @brief  Configure the Dual Bank Boot.
//  767   *
//  768   * @note   This function can be used only for STM32F42xxx/43xxx devices.
//  769   *
//  770   * @param  BootConfig specifies the Dual Bank Boot Option byte.
//  771   *          This parameter can be one of the following values:
//  772   *            @arg OB_Dual_BootEnabled: Dual Bank Boot Enable
//  773   *            @arg OB_Dual_BootDisabled: Dual Bank Boot Disabled
//  774   * @retval None
//  775   */
//  776 static HAL_StatusTypeDef FLASH_OB_BootConfig(uint8_t BootConfig)
//  777 {
//  778   HAL_StatusTypeDef status = HAL_OK;
//  779 
//  780   /* Check the parameters */
//  781   assert_param(IS_OB_BOOT(BootConfig));
//  782 
//  783   /* Wait for last operation to be completed */
//  784   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  785 
//  786   if (status == HAL_OK)
//  787   {
//  788     /* Set Dual Bank Boot */
//  789     *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS &= (~FLASH_OPTCR_BFB2);
//  790     *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS |= BootConfig;
//  791   }
//  792 
//  793   return status;
//  794 }
//  795 
//  796 /**
//  797   * @brief  Enable the read/write protection (PCROP) of the desired
//  798   *         sectors of Bank 1 and/or Bank 2.
//  799   * @note   This function can be used only for STM32F42xxx/43xxx devices.
//  800   * @param  SectorBank1 Specifies the sector(s) to be read/write protected or unprotected for bank1.
//  801   *          This parameter can be one of the following values:
//  802   *            @arg OB_PCROP: A value between OB_PCROP_SECTOR_0 and OB_PCROP_SECTOR_11
//  803   *            @arg OB_PCROP_SECTOR__All
//  804   * @param  SectorBank2 Specifies the sector(s) to be read/write protected or unprotected for bank2.
//  805   *          This parameter can be one of the following values:
//  806   *            @arg OB_PCROP: A value between OB_PCROP_SECTOR_12 and OB_PCROP_SECTOR_23
//  807   *            @arg OB_PCROP_SECTOR__All
//  808   * @param  Banks Enable PCROP protection on all the sectors for the specific bank
//  809   *          This parameter can be one of the following values:
//  810   *            @arg FLASH_BANK_1: WRP on all sectors of bank1
//  811   *            @arg FLASH_BANK_2: WRP on all sectors of bank2
//  812   *            @arg FLASH_BANK_BOTH: WRP on all sectors of bank1 & bank2
//  813   *
//  814   * @retval HAL Status
//  815   */
//  816 static HAL_StatusTypeDef FLASH_OB_EnablePCROP(uint32_t SectorBank1, uint32_t SectorBank2, uint32_t Banks)
//  817 {
//  818   HAL_StatusTypeDef status = HAL_OK;
//  819 
//  820   assert_param(IS_FLASH_BANK(Banks));
//  821 
//  822   /* Wait for last operation to be completed */
//  823   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  824 
//  825   if (status == HAL_OK)
//  826   {
//  827     if ((Banks == FLASH_BANK_1) || (Banks == FLASH_BANK_BOTH))
//  828     {
//  829       assert_param(IS_OB_PCROP(SectorBank1));
//  830       /*Write protection done on sectors of BANK1*/
//  831       *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS |= (uint16_t)SectorBank1;
//  832     }
//  833     else
//  834     {
//  835       assert_param(IS_OB_PCROP(SectorBank2));
//  836       /*Write protection done on sectors of BANK2*/
//  837       *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS |= (uint16_t)SectorBank2;
//  838     }
//  839 
//  840     /*Write protection on all sector  of BANK2*/
//  841     if (Banks == FLASH_BANK_BOTH)
//  842     {
//  843       assert_param(IS_OB_PCROP(SectorBank2));
//  844       /* Wait for last operation to be completed */
//  845       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  846 
//  847       if (status == HAL_OK)
//  848       {
//  849         /*Write protection done on sectors of BANK2*/
//  850         *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS |= (uint16_t)SectorBank2;
//  851       }
//  852     }
//  853 
//  854   }
//  855 
//  856   return status;
//  857 }
//  858 
//  859 
//  860 /**
//  861   * @brief  Disable the read/write protection (PCROP) of the desired
//  862   *         sectors  of Bank 1 and/or Bank 2.
//  863   * @note   This function can be used only for STM32F42xxx/43xxx devices.
//  864   * @param  SectorBank1 specifies the sector(s) to be read/write protected or unprotected for bank1.
//  865   *          This parameter can be one of the following values:
//  866   *            @arg OB_PCROP: A value between OB_PCROP_SECTOR_0 and OB_PCROP_SECTOR_11
//  867   *            @arg OB_PCROP_SECTOR__All
//  868   * @param  SectorBank2 Specifies the sector(s) to be read/write protected or unprotected for bank2.
//  869   *          This parameter can be one of the following values:
//  870   *            @arg OB_PCROP: A value between OB_PCROP_SECTOR_12 and OB_PCROP_SECTOR_23
//  871   *            @arg OB_PCROP_SECTOR__All
//  872   * @param  Banks Disable PCROP protection on all the sectors for the specific bank
//  873   *          This parameter can be one of the following values:
//  874   *            @arg FLASH_BANK_1: WRP on all sectors of bank1
//  875   *            @arg FLASH_BANK_2: WRP on all sectors of bank2
//  876   *            @arg FLASH_BANK_BOTH: WRP on all sectors of bank1 & bank2
//  877   *
//  878   * @retval HAL Status
//  879   */
//  880 static HAL_StatusTypeDef FLASH_OB_DisablePCROP(uint32_t SectorBank1, uint32_t SectorBank2, uint32_t Banks)
//  881 {
//  882   HAL_StatusTypeDef status = HAL_OK;
//  883 
//  884   /* Check the parameters */
//  885   assert_param(IS_FLASH_BANK(Banks));
//  886 
//  887   /* Wait for last operation to be completed */
//  888   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  889 
//  890   if (status == HAL_OK)
//  891   {
//  892     if ((Banks == FLASH_BANK_1) || (Banks == FLASH_BANK_BOTH))
//  893     {
//  894       assert_param(IS_OB_PCROP(SectorBank1));
//  895       /*Write protection done on sectors of BANK1*/
//  896       *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS &= (~SectorBank1);
//  897     }
//  898     else
//  899     {
//  900       /*Write protection done on sectors of BANK2*/
//  901       assert_param(IS_OB_PCROP(SectorBank2));
//  902       *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS &= (~SectorBank2);
//  903     }
//  904 
//  905     /*Write protection on all sector  of BANK2*/
//  906     if (Banks == FLASH_BANK_BOTH)
//  907     {
//  908       assert_param(IS_OB_PCROP(SectorBank2));
//  909       /* Wait for last operation to be completed */
//  910       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
//  911 
//  912       if (status == HAL_OK)
//  913       {
//  914         /*Write protection done on sectors of BANK2*/
//  915         *(__IO uint16_t *)OPTCR1_BYTE2_ADDRESS &= (~SectorBank2);
//  916       }
//  917     }
//  918 
//  919   }
//  920 
//  921   return status;
//  922 
//  923 }
//  924 
//  925 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  926 
//  927 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx) ||\ 
//  928     defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) ||\ 
//  929     defined(STM32F410Rx) || defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) ||\ 
//  930     defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) || defined(STM32F413xx) ||\ 
//  931     defined(STM32F423xx)
//  932 /**
//  933   * @brief  Mass erase of FLASH memory
//  934   * @param  VoltageRange The device voltage range which defines the erase parallelism.
//  935   *          This parameter can be one of the following values:
//  936   *            @arg FLASH_VOLTAGE_RANGE_1: when the device voltage range is 1.8V to 2.1V,
//  937   *                                  the operation will be done by byte (8-bit)
//  938   *            @arg FLASH_VOLTAGE_RANGE_2: when the device voltage range is 2.1V to 2.7V,
//  939   *                                  the operation will be done by half word (16-bit)
//  940   *            @arg FLASH_VOLTAGE_RANGE_3: when the device voltage range is 2.7V to 3.6V,
//  941   *                                  the operation will be done by word (32-bit)
//  942   *            @arg FLASH_VOLTAGE_RANGE_4: when the device voltage range is 2.7V to 3.6V + External Vpp,
//  943   *                                  the operation will be done by double word (64-bit)
//  944   *
//  945   * @param  Banks Banks to be erased
//  946   *          This parameter can be one of the following values:
//  947   *            @arg FLASH_BANK_1: Bank1 to be erased
//  948   *
//  949   * @retval None
//  950   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function FLASH_MassErase
          CFI NoCalls
        THUMB
//  951 static void FLASH_MassErase(uint8_t VoltageRange, uint32_t Banks)
//  952 {
//  953   /* Check the parameters */
//  954   assert_param(IS_VOLTAGERANGE(VoltageRange));
//  955   assert_param(IS_FLASH_BANK(Banks));
//  956 
//  957   /* If the previous operation is completed, proceed to erase all sectors */
//  958   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
FLASH_MassErase:
        LDR.N    R1,??DataTable14_1  ;; 0x40023c10
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0x300
        STR      R2,[R1, #+0]
//  959   FLASH->CR |= FLASH_CR_MER;
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x4
        STR      R2,[R1, #+0]
//  960   FLASH->CR |= FLASH_CR_STRT | ((uint32_t)VoltageRange << 8U);
        LDR      R2,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+8
        ORRS     R0,R0,#0x10000
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
//  961 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  962 
//  963 /**
//  964   * @brief  Erase the specified FLASH memory sector
//  965   * @param  Sector FLASH sector to erase
//  966   *         The value of this parameter depend on device used within the same series
//  967   * @param  VoltageRange The device voltage range which defines the erase parallelism.
//  968   *          This parameter can be one of the following values:
//  969   *            @arg FLASH_VOLTAGE_RANGE_1: when the device voltage range is 1.8V to 2.1V,
//  970   *                                  the operation will be done by byte (8-bit)
//  971   *            @arg FLASH_VOLTAGE_RANGE_2: when the device voltage range is 2.1V to 2.7V,
//  972   *                                  the operation will be done by half word (16-bit)
//  973   *            @arg FLASH_VOLTAGE_RANGE_3: when the device voltage range is 2.7V to 3.6V,
//  974   *                                  the operation will be done by word (32-bit)
//  975   *            @arg FLASH_VOLTAGE_RANGE_4: when the device voltage range is 2.7V to 3.6V + External Vpp,
//  976   *                                  the operation will be done by double word (64-bit)
//  977   *
//  978   * @retval None
//  979   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function FLASH_Erase_Sector
          CFI NoCalls
        THUMB
//  980 void FLASH_Erase_Sector(uint32_t Sector, uint8_t VoltageRange)
//  981 {
//  982   uint32_t tmp_psize = 0U;
FLASH_Erase_Sector:
        MOVS     R2,#+0
//  983 
//  984   /* Check the parameters */
//  985   assert_param(IS_FLASH_SECTOR(Sector));
//  986   assert_param(IS_VOLTAGERANGE(VoltageRange));
//  987 
//  988   if (VoltageRange == FLASH_VOLTAGE_RANGE_1)
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??FLASH_Erase_Sector_0
//  989   {
//  990     tmp_psize = FLASH_PSIZE_BYTE;
        MOVS     R1,#+0
        B.N      ??FLASH_Erase_Sector_1
//  991   }
//  992   else if (VoltageRange == FLASH_VOLTAGE_RANGE_2)
??FLASH_Erase_Sector_0:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??FLASH_Erase_Sector_2
//  993   {
//  994     tmp_psize = FLASH_PSIZE_HALF_WORD;
        MOV      R1,#+256
        B.N      ??FLASH_Erase_Sector_1
//  995   }
//  996   else if (VoltageRange == FLASH_VOLTAGE_RANGE_3)
??FLASH_Erase_Sector_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??FLASH_Erase_Sector_3
//  997   {
//  998     tmp_psize = FLASH_PSIZE_WORD;
        MOV      R1,#+512
        B.N      ??FLASH_Erase_Sector_1
//  999   }
// 1000   else
// 1001   {
// 1002     tmp_psize = FLASH_PSIZE_DOUBLE_WORD;
??FLASH_Erase_Sector_3:
        MOV      R1,#+768
// 1003   }
// 1004 
// 1005   /* If the previous operation is completed, proceed to erase the sector */
// 1006   CLEAR_BIT(FLASH->CR, FLASH_CR_PSIZE);
??FLASH_Erase_Sector_1:
        LDR.N    R2,??DataTable14_1  ;; 0x40023c10
        LDR      R3,[R2, #+0]
        BICS     R3,R3,#0x300
        STR      R3,[R2, #+0]
// 1007   FLASH->CR |= tmp_psize;
        LDR      R3,[R2, #+0]
        ORRS     R1,R1,R3
        STR      R1,[R2, #+0]
// 1008   CLEAR_BIT(FLASH->CR, FLASH_CR_SNB);
        LDR      R1,[R2, #+0]
        BICS     R1,R1,#0xF8
        STR      R1,[R2, #+0]
// 1009   FLASH->CR |= FLASH_CR_SER | (Sector << FLASH_CR_SNB_Pos);
        LDR      R1,[R2, #+0]
        LSLS     R0,R0,#+3
        ORRS     R0,R0,#0x2
        ORRS     R0,R0,R1
        STR      R0,[R2, #+0]
// 1010   FLASH->CR |= FLASH_CR_STRT;
        LDR      R0,[R2, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R2, #+0]
// 1011 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
// 1012 
// 1013 /**
// 1014   * @brief  Enable the write protection of the desired bank 1 sectors
// 1015   *
// 1016   * @note   When the memory read protection level is selected (RDP level = 1),
// 1017   *         it is not possible to program or erase the flash sector i if CortexM4
// 1018   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1
// 1019   * @note   Active value of nWRPi bits is inverted when PCROP mode is active (SPRMOD =1).
// 1020   *
// 1021   * @param  WRPSector specifies the sector(s) to be write protected.
// 1022   *         The value of this parameter depend on device used within the same series
// 1023   *
// 1024   * @param  Banks Enable write protection on all the sectors for the specific bank
// 1025   *          This parameter can be one of the following values:
// 1026   *            @arg FLASH_BANK_1: WRP on all sectors of bank1
// 1027   *
// 1028   * @retval HAL Status
// 1029   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function FLASH_OB_EnableWRP
        THUMB
// 1030 static HAL_StatusTypeDef FLASH_OB_EnableWRP(uint32_t WRPSector, uint32_t Banks)
// 1031 {
FLASH_OB_EnableWRP:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1032   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1033 
// 1034   /* Check the parameters */
// 1035   assert_param(IS_OB_WRP_SECTOR(WRPSector));
// 1036   assert_param(IS_FLASH_BANK(Banks));
// 1037 
// 1038   /* Wait for last operation to be completed */
// 1039   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1040 
// 1041   if (status == HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FLASH_OB_EnableWRP_0
// 1042   {
// 1043     *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS &= (~WRPSector);
        LDR.N    R1,??DataTable14_3  ;; 0x40023c16
        LDRH     R2,[R1, #+0]
        BICS     R4,R2,R4
        STRH     R4,[R1, #+0]
// 1044   }
// 1045 
// 1046   return status;
??FLASH_OB_EnableWRP_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1047 }
          CFI EndBlock cfiBlock6
// 1048 
// 1049 /**
// 1050   * @brief  Disable the write protection of the desired bank 1 sectors
// 1051   *
// 1052   * @note   When the memory read protection level is selected (RDP level = 1),
// 1053   *         it is not possible to program or erase the flash sector i if CortexM4
// 1054   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1
// 1055   * @note   Active value of nWRPi bits is inverted when PCROP mode is active (SPRMOD =1).
// 1056   *
// 1057   * @param  WRPSector specifies the sector(s) to be write protected.
// 1058   *         The value of this parameter depend on device used within the same series
// 1059   *
// 1060   * @param  Banks Enable write protection on all the sectors for the specific bank
// 1061   *          This parameter can be one of the following values:
// 1062   *            @arg FLASH_BANK_1: WRP on all sectors of bank1
// 1063   *
// 1064   * @retval HAL Status
// 1065   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function FLASH_OB_DisableWRP
        THUMB
// 1066 static HAL_StatusTypeDef FLASH_OB_DisableWRP(uint32_t WRPSector, uint32_t Banks)
// 1067 {
FLASH_OB_DisableWRP:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1068   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1069 
// 1070   /* Check the parameters */
// 1071   assert_param(IS_OB_WRP_SECTOR(WRPSector));
// 1072   assert_param(IS_FLASH_BANK(Banks));
// 1073 
// 1074   /* Wait for last operation to be completed */
// 1075   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1076 
// 1077   if (status == HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FLASH_OB_DisableWRP_0
// 1078   {
// 1079     *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS |= (uint16_t)WRPSector;
        LDR.N    R1,??DataTable14_3  ;; 0x40023c16
        LDRH     R2,[R1, #+0]
        ORRS     R4,R4,R2
        STRH     R4,[R1, #+0]
// 1080   }
// 1081 
// 1082   return status;
??FLASH_OB_DisableWRP_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1083 }
          CFI EndBlock cfiBlock7
// 1084 #endif /* STM32F40xxx || STM32F41xxx || STM32F401xx || STM32F410xx || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx
// 1085           STM32F413xx || STM32F423xx */
// 1086 
// 1087 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) ||\ 
// 1088     defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) ||\ 
// 1089     defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
// 1090 /**
// 1091   * @brief  Enable the read/write protection (PCROP) of the desired sectors.
// 1092   * @note   This function can be used only for STM32F401xx devices.
// 1093   * @param  Sector specifies the sector(s) to be read/write protected or unprotected.
// 1094   *          This parameter can be one of the following values:
// 1095   *            @arg OB_PCROP: A value between OB_PCROP_Sector0 and OB_PCROP_Sector5
// 1096   *            @arg OB_PCROP_Sector_All
// 1097   * @retval HAL Status
// 1098   */
// 1099 static HAL_StatusTypeDef FLASH_OB_EnablePCROP(uint32_t Sector)
// 1100 {
// 1101   HAL_StatusTypeDef status = HAL_OK;
// 1102 
// 1103   /* Check the parameters */
// 1104   assert_param(IS_OB_PCROP(Sector));
// 1105 
// 1106   /* Wait for last operation to be completed */
// 1107   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
// 1108 
// 1109   if (status == HAL_OK)
// 1110   {
// 1111     *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS |= (uint16_t)Sector;
// 1112   }
// 1113 
// 1114   return status;
// 1115 }
// 1116 
// 1117 
// 1118 /**
// 1119   * @brief  Disable the read/write protection (PCROP) of the desired sectors.
// 1120   * @note   This function can be used only for STM32F401xx devices.
// 1121   * @param  Sector specifies the sector(s) to be read/write protected or unprotected.
// 1122   *          This parameter can be one of the following values:
// 1123   *            @arg OB_PCROP: A value between OB_PCROP_Sector0 and OB_PCROP_Sector5
// 1124   *            @arg OB_PCROP_Sector_All
// 1125   * @retval HAL Status
// 1126   */
// 1127 static HAL_StatusTypeDef FLASH_OB_DisablePCROP(uint32_t Sector)
// 1128 {
// 1129   HAL_StatusTypeDef status = HAL_OK;
// 1130 
// 1131   /* Check the parameters */
// 1132   assert_param(IS_OB_PCROP(Sector));
// 1133 
// 1134   /* Wait for last operation to be completed */
// 1135   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
// 1136 
// 1137   if (status == HAL_OK)
// 1138   {
// 1139     *(__IO uint16_t *)OPTCR_BYTE2_ADDRESS &= (~Sector);
// 1140   }
// 1141 
// 1142   return status;
// 1143 
// 1144 }
// 1145 #endif /* STM32F401xC || STM32F401xE || STM32F411xE || STM32F446xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx
// 1146           STM32F413xx || STM32F423xx */
// 1147 
// 1148 /**
// 1149   * @brief  Set the read protection level.
// 1150   * @param  Level specifies the read protection level.
// 1151   *          This parameter can be one of the following values:
// 1152   *            @arg OB_RDP_LEVEL_0: No protection
// 1153   *            @arg OB_RDP_LEVEL_1: Read protection of the memory
// 1154   *            @arg OB_RDP_LEVEL_2: Full chip protection
// 1155   *
// 1156   * @note WARNING: When enabling OB_RDP level 2 it's no more possible to go back to level 1 or 0
// 1157   *
// 1158   * @retval HAL Status
// 1159   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function FLASH_OB_RDP_LevelConfig
        THUMB
// 1160 static HAL_StatusTypeDef FLASH_OB_RDP_LevelConfig(uint8_t Level)
// 1161 {
FLASH_OB_RDP_LevelConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1162   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1163 
// 1164   /* Check the parameters */
// 1165   assert_param(IS_OB_RDP_LEVEL(Level));
// 1166 
// 1167   /* Wait for last operation to be completed */
// 1168   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1169 
// 1170   if (status == HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FLASH_OB_RDP_LevelConfig_0
// 1171   {
// 1172     *(__IO uint8_t *)OPTCR_BYTE1_ADDRESS = Level;
        LDR.N    R1,??DataTable14_4  ;; 0x40023c15
        STRB     R4,[R1, #+0]
// 1173   }
// 1174 
// 1175   return status;
??FLASH_OB_RDP_LevelConfig_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1176 }
          CFI EndBlock cfiBlock8
// 1177 
// 1178 /**
// 1179   * @brief  Program the FLASH User Option Byte: IWDG_SW / RST_STOP / RST_STDBY.
// 1180   * @param  Iwdg Selects the IWDG mode
// 1181   *          This parameter can be one of the following values:
// 1182   *            @arg OB_IWDG_SW: Software IWDG selected
// 1183   *            @arg OB_IWDG_HW: Hardware IWDG selected
// 1184   * @param  Stop Reset event when entering STOP mode.
// 1185   *          This parameter  can be one of the following values:
// 1186   *            @arg OB_STOP_NO_RST: No reset generated when entering in STOP
// 1187   *            @arg OB_STOP_RST: Reset generated when entering in STOP
// 1188   * @param  Stdby Reset event when entering Standby mode.
// 1189   *          This parameter  can be one of the following values:
// 1190   *            @arg OB_STDBY_NO_RST: No reset generated when entering in STANDBY
// 1191   *            @arg OB_STDBY_RST: Reset generated when entering in STANDBY
// 1192   * @retval HAL Status
// 1193   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function FLASH_OB_UserConfig
        THUMB
// 1194 static HAL_StatusTypeDef FLASH_OB_UserConfig(uint8_t Iwdg, uint8_t Stop, uint8_t Stdby)
// 1195 {
FLASH_OB_UserConfig:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1196   uint8_t optiontmp = 0xFF;
        MOVS     R0,#+255
// 1197   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1198 
// 1199   /* Check the parameters */
// 1200   assert_param(IS_OB_IWDG_SOURCE(Iwdg));
// 1201   assert_param(IS_OB_STOP_SOURCE(Stop));
// 1202   assert_param(IS_OB_STDBY_SOURCE(Stdby));
// 1203 
// 1204   /* Wait for last operation to be completed */
// 1205   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1206 
// 1207   if (status == HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FLASH_OB_UserConfig_0
// 1208   {
// 1209     /* Mask OPTLOCK, OPTSTRT, BOR_LEV and BFB2 bits */
// 1210     optiontmp = (uint8_t)((*(__IO uint8_t *)OPTCR_BYTE0_ADDRESS) & (uint8_t)0x1F);
        LDR.N    R2,??DataTable14_5  ;; 0x40023c14
        LDRB     R1,[R2, #+0]
        ANDS     R1,R1,#0x1F
// 1211 
// 1212     /* Update User Option Byte */
// 1213     *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS = Iwdg | (uint8_t)(Stdby | (uint8_t)(Stop | ((uint8_t)optiontmp)));
        ORRS     R5,R1,R5
        ORRS     R5,R5,R6
        ORRS     R4,R5,R4
        STRB     R4,[R2, #+0]
// 1214   }
// 1215 
// 1216   return status;
??FLASH_OB_UserConfig_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
// 1217 }
          CFI EndBlock cfiBlock9
// 1218 
// 1219 /**
// 1220   * @brief  Set the BOR Level.
// 1221   * @param  Level specifies the Option Bytes BOR Reset Level.
// 1222   *          This parameter can be one of the following values:
// 1223   *            @arg OB_BOR_LEVEL3: Supply voltage ranges from 2.7 to 3.6 V
// 1224   *            @arg OB_BOR_LEVEL2: Supply voltage ranges from 2.4 to 2.7 V
// 1225   *            @arg OB_BOR_LEVEL1: Supply voltage ranges from 2.1 to 2.4 V
// 1226   *            @arg OB_BOR_OFF: Supply voltage ranges from 1.62 to 2.1 V
// 1227   * @retval HAL Status
// 1228   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function FLASH_OB_BOR_LevelConfig
          CFI NoCalls
        THUMB
// 1229 static HAL_StatusTypeDef FLASH_OB_BOR_LevelConfig(uint8_t Level)
// 1230 {
// 1231   /* Check the parameters */
// 1232   assert_param(IS_OB_BOR_LEVEL(Level));
// 1233 
// 1234   /* Set the BOR Level */
// 1235   *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS &= (~FLASH_OPTCR_BOR_LEV);
FLASH_OB_BOR_LevelConfig:
        LDR.N    R1,??DataTable14_5  ;; 0x40023c14
        LDRB     R2,[R1, #+0]
        ANDS     R2,R2,#0xF3
        STRB     R2,[R1, #+0]
// 1236   *(__IO uint8_t *)OPTCR_BYTE0_ADDRESS |= Level;
        LDRB     R2,[R1, #+0]
        ORRS     R0,R0,R2
        STRB     R0,[R1, #+0]
// 1237 
// 1238   return HAL_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
// 1239 
// 1240 }
          CFI EndBlock cfiBlock10
// 1241 
// 1242 /**
// 1243   * @brief  Return the FLASH User Option Byte value.
// 1244   * @retval uint8_t FLASH User Option Bytes values: IWDG_SW(Bit0), RST_STOP(Bit1)
// 1245   *         and RST_STDBY(Bit2).
// 1246   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function FLASH_OB_GetUser
          CFI NoCalls
        THUMB
// 1247 static uint8_t FLASH_OB_GetUser(void)
// 1248 {
// 1249   /* Return the User Option Byte */
// 1250   return ((uint8_t)(FLASH->OPTCR & 0xE0));
FLASH_OB_GetUser:
        LDR.N    R0,??DataTable14_5  ;; 0x40023c14
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xE0
        BX       LR               ;; return
// 1251 }
          CFI EndBlock cfiBlock11
// 1252 
// 1253 /**
// 1254   * @brief  Return the FLASH Write Protection Option Bytes value.
// 1255   * @retval uint16_t FLASH Write Protection Option Bytes value
// 1256   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FLASH_OB_GetWRP
          CFI NoCalls
        THUMB
// 1257 static uint16_t FLASH_OB_GetWRP(void)
// 1258 {
// 1259   /* Return the FLASH write protection Register value */
// 1260   return (*(__IO uint16_t *)(OPTCR_BYTE2_ADDRESS));
FLASH_OB_GetWRP:
        LDR.N    R0,??DataTable14_3  ;; 0x40023c16
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
// 1261 }
          CFI EndBlock cfiBlock12
// 1262 
// 1263 /**
// 1264   * @brief  Returns the FLASH Read Protection level.
// 1265   * @retval FLASH ReadOut Protection Status:
// 1266   *         This parameter can be one of the following values:
// 1267   *            @arg OB_RDP_LEVEL_0: No protection
// 1268   *            @arg OB_RDP_LEVEL_1: Read protection of the memory
// 1269   *            @arg OB_RDP_LEVEL_2: Full chip protection
// 1270   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function FLASH_OB_GetRDP
          CFI NoCalls
        THUMB
// 1271 static uint8_t FLASH_OB_GetRDP(void)
// 1272 {
// 1273   uint8_t readstatus = OB_RDP_LEVEL_0;
FLASH_OB_GetRDP:
        MOVS     R0,#+170
// 1274 
// 1275   if (*(__IO uint8_t *)(OPTCR_BYTE1_ADDRESS) == (uint8_t)OB_RDP_LEVEL_2)
        LDR.N    R0,??DataTable14_4  ;; 0x40023c15
        LDRB     R1,[R0, #+0]
        CMP      R1,#+204
        BNE.N    ??FLASH_OB_GetRDP_0
// 1276   {
// 1277     readstatus = OB_RDP_LEVEL_2;
        MOVS     R0,#+204
        B.N      ??FLASH_OB_GetRDP_1
// 1278   }
// 1279   else if (*(__IO uint8_t *)(OPTCR_BYTE1_ADDRESS) == (uint8_t)OB_RDP_LEVEL_0)
??FLASH_OB_GetRDP_0:
        LDRB     R0,[R0, #+0]
        CMP      R0,#+170
        BNE.N    ??FLASH_OB_GetRDP_2
// 1280   {
// 1281     readstatus = OB_RDP_LEVEL_0;
        MOVS     R0,#+170
        B.N      ??FLASH_OB_GetRDP_1
// 1282   }
// 1283   else
// 1284   {
// 1285     readstatus = OB_RDP_LEVEL_1;
??FLASH_OB_GetRDP_2:
        MOVS     R0,#+85
// 1286   }
// 1287 
// 1288   return readstatus;
??FLASH_OB_GetRDP_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
// 1289 }
          CFI EndBlock cfiBlock13
// 1290 
// 1291 /**
// 1292   * @brief  Returns the FLASH BOR level.
// 1293   * @retval uint8_t The FLASH BOR level:
// 1294   *           - OB_BOR_LEVEL3: Supply voltage ranges from 2.7 to 3.6 V
// 1295   *           - OB_BOR_LEVEL2: Supply voltage ranges from 2.4 to 2.7 V
// 1296   *           - OB_BOR_LEVEL1: Supply voltage ranges from 2.1 to 2.4 V
// 1297   *           - OB_BOR_OFF   : Supply voltage ranges from 1.62 to 2.1 V
// 1298   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function FLASH_OB_GetBOR
          CFI NoCalls
        THUMB
// 1299 static uint8_t FLASH_OB_GetBOR(void)
// 1300 {
// 1301   /* Return the FLASH BOR level */
// 1302   return (uint8_t)(*(__IO uint8_t *)(OPTCR_BYTE0_ADDRESS) & (uint8_t)0x0C);
FLASH_OB_GetBOR:
        LDR.N    R0,??DataTable14_5  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return
// 1303 }
          CFI EndBlock cfiBlock14
// 1304 
// 1305 /**
// 1306   * @brief  Flush the instruction and data caches
// 1307   * @retval None
// 1308   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function FLASH_FlushCaches
          CFI NoCalls
        THUMB
// 1309 void FLASH_FlushCaches(void)
// 1310 {
// 1311   /* Flush instruction cache  */
// 1312   if (READ_BIT(FLASH->ACR, FLASH_ACR_ICEN) != RESET)
FLASH_FlushCaches:
        LDR.N    R0,??DataTable14_6  ;; 0x40023c00
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+22
        BPL.N    ??FLASH_FlushCaches_0
// 1313   {
// 1314     /* Disable instruction cache  */
// 1315     __HAL_FLASH_INSTRUCTION_CACHE_DISABLE();
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x200
        STR      R1,[R0, #+0]
// 1316     /* Reset instruction cache */
// 1317     __HAL_FLASH_INSTRUCTION_CACHE_RESET();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x800
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x800
        STR      R1,[R0, #+0]
// 1318     /* Enable instruction cache */
// 1319     __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x200
        STR      R1,[R0, #+0]
// 1320   }
// 1321 
// 1322   /* Flush data cache */
// 1323   if (READ_BIT(FLASH->ACR, FLASH_ACR_DCEN) != RESET)
??FLASH_FlushCaches_0:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+21
        BPL.N    ??FLASH_FlushCaches_1
// 1324   {
// 1325     /* Disable data cache  */
// 1326     __HAL_FLASH_DATA_CACHE_DISABLE();
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x400
        STR      R1,[R0, #+0]
// 1327     /* Reset data cache */
// 1328     __HAL_FLASH_DATA_CACHE_RESET();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1000
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x1000
        STR      R1,[R0, #+0]
// 1329     /* Enable data cache */
// 1330     __HAL_FLASH_DATA_CACHE_ENABLE();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x400
        STR      R1,[R0, #+0]
// 1331   }
// 1332 }
??FLASH_FlushCaches_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

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
        DC32     0x40023c16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DATA32
        DC32     0x40023c15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DATA32
        DC32     0x40023c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DATA32
        DC32     0x40023c00

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1333 
// 1334 /**
// 1335   * @}
// 1336   */
// 1337 
// 1338 #endif /* HAL_FLASH_MODULE_ENABLED */
// 1339 
// 1340 /**
// 1341   * @}
// 1342   */
// 1343 
// 1344 /**
// 1345   * @}
// 1346   */
// 1347 
// 
// 878 bytes in section .text
// 
// 878 bytes of CODE memory
//
//Errors: none
//Warnings: none
