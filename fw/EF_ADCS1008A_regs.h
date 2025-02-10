/*
	Copyright 2024 Efabless Corp.

	Author: Mohamed Shalan (mshalan@efabless.com)

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	    www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/

#ifndef EF_ADCS1008AREGS_H
#define EF_ADCS1008AREGS_H

 
/******************************************************************************
* Includes
******************************************************************************/
#include <stdint.h>

/******************************************************************************
* Macros and Constants
******************************************************************************/

#ifndef IO_TYPES
#define IO_TYPES
#define   __R     volatile const uint32_t
#define   __W     volatile       uint32_t
#define   __RW    volatile       uint32_t
#endif

#define EF_ADCS1008A_TCTRL_REG_CLKDIV_BIT	((uint32_t)0)
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_MASK	((uint32_t)0xff)
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_BIT	((uint32_t)8)
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_MASK	((uint32_t)0xff00)
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_BIT	((uint32_t)16)
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_MASK	((uint32_t)0xf0000)
#define EF_ADCS1008A_TCTRL_REG_MAX_VALUE	((uint32_t)0xFFFFFFFF)

#define EF_ADCS1008A_CHSEL_REG_CHANNEL_BIT	((uint32_t)0)
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_MASK	((uint32_t)0x7)
#define EF_ADCS1008A_CHSEL_REG_MAX_VALUE	((uint32_t)0x7)

#define EF_ADCS1008A_CTRL_REG_EN_BIT	((uint32_t)0)
#define EF_ADCS1008A_CTRL_REG_EN_MASK	((uint32_t)0x1)
#define EF_ADCS1008A_CTRL_REG_SEQEN_BIT	((uint32_t)1)
#define EF_ADCS1008A_CTRL_REG_SEQEN_MASK	((uint32_t)0x2)
#define EF_ADCS1008A_CTRL_REG_MAX_VALUE	((uint32_t)0x3)

#define EF_ADCS1008A_SOC_REG_SOC_BIT	((uint32_t)0)
#define EF_ADCS1008A_SOC_REG_SOC_MASK	((uint32_t)0x1)
#define EF_ADCS1008A_SOC_REG_MAX_VALUE	((uint32_t)0x1)

#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_BIT	((uint32_t)0)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_MASK	((uint32_t)0x1f)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_BIT	((uint32_t)8)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_MASK	((uint32_t)0x1f00)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_BIT	((uint32_t)16)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_MASK	((uint32_t)0x1f0000)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_BIT	((uint32_t)24)
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_MASK	((uint32_t)0x1f000000)
#define EF_ADCS1008A_SEQCTRL0_REG_MAX_VALUE	((uint32_t)0xFFFFFFFF)

#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_BIT	((uint32_t)0)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_MASK	((uint32_t)0x1f)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_BIT	((uint32_t)8)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_MASK	((uint32_t)0x1f00)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_BIT	((uint32_t)16)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_MASK	((uint32_t)0x1f0000)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_BIT	((uint32_t)24)
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_MASK	((uint32_t)0x1f000000)
#define EF_ADCS1008A_SEQCTRL1_REG_MAX_VALUE	((uint32_t)0xFFFFFFFF)

#define EF_ADCS1008A_DATA_REG_DATA_BIT	((uint32_t)0)
#define EF_ADCS1008A_DATA_REG_DATA_MASK	((uint32_t)0x3ff)
#define EF_ADCS1008A_DATA_REG_MAX_VALUE	((uint32_t)0x3FF)

#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_BIT	((uint32_t)0)
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_MASK	((uint32_t)0x1f)
#define EF_ADCS1008A_FIFOLEVEL_REG_MAX_VALUE	((uint32_t)0x1F)

#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_BIT	((uint32_t)0)
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_MASK	((uint32_t)0x1f)
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_MAX_VALUE	((uint32_t)0x1F)

#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_BIT	((uint32_t)0)
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_MASK	((uint32_t)0x1f)
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_MAX_VALUE	((uint32_t)0x1F)

#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_BIT	((uint32_t)0)
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_MASK	((uint32_t)0x1)
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_MAX_VALUE	((uint32_t)0x1)


#define EF_ADCS1008A_FIFO_FULL_FLAG	((uint32_t)0x1)
#define EF_ADCS1008A_FIFO_LEVEL_FLAG	((uint32_t)0x2)
#define EF_ADCS1008A_EOC_FLAG	((uint32_t)0x4)


          
/******************************************************************************
* Typedefs and Enums
******************************************************************************/
          
typedef struct _EF_ADCS1008A_TYPE_ {
	__RW	TCTRL;
	__RW	CHSEL;
	__RW	CTRL;
	__RW	SOC;
	__RW	SEQCTRL0;
	__RW	SEQCTRL1;
	__RW	DATA;
	__RW	FIFOLEVEL;
	__R 	reserved_0[16248];
	__R 	DATA_FIFO_LEVEL;
	__W 	DATA_FIFO_THRESHOLD;
	__W 	DATA_FIFO_FLUSH;
	__R 	reserved_1[61];
	__RW	IM;
	__R 	MIS;
	__R 	RIS;
	__W 	IC;
} EF_ADCS1008A_TYPE;

typedef struct _EF_ADCS1008A_TYPE_ *EF_ADCS1008A_TYPE_PTR;     // Pointer to the register structure

  
/******************************************************************************
* Function Prototypes
******************************************************************************/



/******************************************************************************
* External Variables
******************************************************************************/




#endif

/******************************************************************************
* End of File
******************************************************************************/
          
          
