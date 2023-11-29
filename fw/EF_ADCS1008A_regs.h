
/*
	Copyright 2023 Efabless Corp.

	Author: Mohamed Shalan (mshalan@efabless.com)

	This file is auto-generated by wrapper_gen.py on 2023-11-28

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	    http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/


#ifndef IO_TYPES
#define IO_TYPES
#define   __R     volatile const unsigned int
#define   __W     volatile       unsigned int
#define   __RW    volatile       unsigned int
#endif

#define EF_ADCS1008A_TCTRL_REG_CLKDIV		0
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_LEN	8
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV		8
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_LEN	8
#define EF_ADCS1008A_TCTRL_REG_SWIDTH		16
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_LEN	4
#define EF_ADCS1008A_CHSEL_REG_CHANNEL		0
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_LEN	3
#define EF_ADCS1008A_CTRL_REG_EN		0
#define EF_ADCS1008A_CTRL_REG_EN_LEN	1
#define EF_ADCS1008A_CTRL_REG_SEQEN		1
#define EF_ADCS1008A_CTRL_REG_SEQEN_LEN	1
#define EF_ADCS1008A_SOC_REG_SOC		0
#define EF_ADCS1008A_SOC_REG_SOC_LEN	1
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0		0
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_LEN	5
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1		8
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_LEN	5
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2		16
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_LEN	5
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3		24
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_LEN	5
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4		0
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_LEN	5
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5		8
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_LEN	5
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6		16
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_LEN	5
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7		24
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_LEN	5
#define EF_ADCS1008A_DATA_REG_DATA		0
#define EF_ADCS1008A_DATA_REG_DATA_LEN	10
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE		0
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_LEN	5
#define EF_ADCS1008A_FIFO_FULL_FLAG	0x1
#define EF_ADCS1008A_FIFO_LEVEL_FLAG	0x2
#define EF_ADCS1008A_EOC_FLAG	0x4

typedef struct _EF_ADCS1008A_TYPE_ {
	__RW	TCTRL;
	__RW	CHSEL;
	__RW	CTRL;
	__RW	SOC;
	__RW	SEQCTRL0;
	__RW	SEQCTRL1;
	__RW	DATA;
	__RW	FIFOLEVEL;
	__R 	reserved[952];
	__W 	icr;
	__R 	ris;
	__RW	im;
	__R 	mis;
} EF_ADCS1008A_TYPE;
