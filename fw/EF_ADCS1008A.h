#ifndef EF_ADCS1008A_H
#define EF_ADCS1008A_H

#include <stdint.h>
#include <EF_ADCS1008A_regs.h>

void EF_ADCS1008A_setClockDivider(uint32_t adc_base, char value);

void EF_ADCS1008A_setSampleDivider(uint32_t adc_base, char value);

void EF_ADCS1008A_setTimerCtrlReg(uint32_t adc_base, int value);

int EF_ADCS1008A_getTimerCtrlReg(uint32_t adc_base);

void EF_ADCS1008A_setChannelNumber (uint32_t adc_base, int value);

int EF_ADCS1008A_getChannelNumber (uint32_t adc_base);

void EF_ADCS1008A_enable (uint32_t adc_base, int enable);

void EF_ADCS1008A_sequencerEnable (uint32_t adc_base, int enable);

void EF_ADCS1008A_setCtrlReg(uint32_t adc_base, int value);

int EF_ADCS1008A_getCtrlReg (uint32_t adc_base);

void EF_ADCS1008A_setStartConversion (uint32_t adc_base, int start);

int EF_ADCS1008A_getStartConversion (uint32_t adc_base);

void EF_ADCS1008A_setStep0 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep1 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep2 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep3 (uint32_t adc_base, int value);

void EF_ADCS1008A_setSeqCtrlReg0 (uint32_t adc_base, int value);

int EF_ADCS1008A_getSeqCtrlReg0 (uint32_t adc_base);

void EF_ADCS1008A_setStep4 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep5 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep6 (uint32_t adc_base, int value);

void EF_ADCS1008A_setStep7 (uint32_t adc_base, int value);

void EF_ADCS1008A_setSeqCtrlReg1 (uint32_t adc_base, int value);

int EF_ADCS1008A_getSeqCtrlReg1 (uint32_t adc_base);

int EF_ADCS1008A_getDataReg (uint32_t adc_base);

void EF_ADCS1008A_setFIFOlevel (uint32_t adc_base, int value);

int EF_ADCS1008A_getFIFOlevel (uint32_t adc_base);

int EF_ADCS1008A_getRawStatusReg (uint32_t adc_base);

int EF_ADCS1008A_getMaskStatusReg (uint32_t adc_base);

void EF_ADCS1008A_setInterruptMaskReg (uint32_t adc_base, int value);

int EF_ADCS1008A_getInterruptMaskReg (uint32_t adc_base);

void EF_ADCS1008A_setInterruptClearReg (uint32_t adc_base, int value);

#endif