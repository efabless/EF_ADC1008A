#ifndef EF_ADCS1008A_C
#define EF_ADCS1008A_C

#include <EF_ADCS1008A.h>

void EF_ADCS1008A_setClockDivider(uint32_t adc_base, char value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;

    unsigned int mask = ((1 << EF_ADCS1008A_TCTRL_REG_CLKDIV_LEN) - 1) << EF_ADCS1008A_TCTRL_REG_CLKDIV;

    // Clear the bits at the specified offset in the original number
    adc->TCTRL &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->TCTRL |= (value << EF_ADCS1008A_TCTRL_REG_CLKDIV);

}

void EF_ADCS1008A_setSampleDivider(uint32_t adc_base, char value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_LEN) - 1) << EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV;

    // Clear the bits at the specified offset in the original number
    adc->TCTRL &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->TCTRL |= (value << EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV);


}

void EF_ADCS1008A_setTimerCtrlReg(uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->TCTRL = value;

}

int EF_ADCS1008A_getTimerCtrlReg(uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->TCTRL);

}

void EF_ADCS1008A_setChannelNumber (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->CHSEL = value;

}

int EF_ADCS1008A_getChannelNumber (uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->CHSEL);

}

void EF_ADCS1008A_enable (uint32_t adc_base, int enable){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    if(enable){
        adc->CTRL |= 0x1; 
    }
    else {

        adc->CTRL &= 0xFFFFFFFE; 
    }

}

void EF_ADCS1008A_sequencerEnable (uint32_t adc_base, int enable){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    if(enable){
        adc->CTRL |= 0x2; 
    }
    else {

        adc->CTRL &= 0xFFFFFFFD; 
    }

}

void EF_ADCS1008A_setCtrlReg(uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->CTRL = value;
}

int EF_ADCS1008A_getCtrlReg (uint32_t adc_base) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->CTRL);

}

void EF_ADCS1008A_setStartConversion (uint32_t adc_base, int start){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    if(start){

        adc->SOC = 1;
    }
    else{

        adc->SOC = 0;
    }
}

int EF_ADCS1008A_getStartConversion (uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->SOC);

}

void EF_ADCS1008A_setStep0 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL0_REG_SEQ0_LEN) - 1) << EF_ADCS1008A_SEQCTRL0_REG_SEQ0;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL0 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL0 |= (value << EF_ADCS1008A_SEQCTRL0_REG_SEQ0);

}
void EF_ADCS1008A_setStep1 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL0_REG_SEQ1_LEN) - 1) << EF_ADCS1008A_SEQCTRL0_REG_SEQ1;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL0 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL0 |= (value << EF_ADCS1008A_SEQCTRL0_REG_SEQ1);

}

void EF_ADCS1008A_setStep2 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL0_REG_SEQ2_LEN) - 1) << EF_ADCS1008A_SEQCTRL0_REG_SEQ2;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL0 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL0 |= (value << EF_ADCS1008A_SEQCTRL0_REG_SEQ2);

}

void EF_ADCS1008A_setStep3 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL0_REG_SEQ3_LEN) - 1) << EF_ADCS1008A_SEQCTRL0_REG_SEQ3;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL0 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL0 |= (value << EF_ADCS1008A_SEQCTRL0_REG_SEQ3);

}

void EF_ADCS1008A_setSeqCtrlReg0 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->SEQCTRL0 = value;
}

int EF_ADCS1008A_getSeqCtrlReg0 (uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->SEQCTRL0);
}

void EF_ADCS1008A_setStep4 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL1_REG_SEQ4_LEN) - 1) << EF_ADCS1008A_SEQCTRL1_REG_SEQ4;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL1 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL1 |= (value << EF_ADCS1008A_SEQCTRL1_REG_SEQ4);

}

void EF_ADCS1008A_setStep5 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL1_REG_SEQ5_LEN) - 1) << EF_ADCS1008A_SEQCTRL1_REG_SEQ5;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL1 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL1 |= (value << EF_ADCS1008A_SEQCTRL1_REG_SEQ5);

}

void EF_ADCS1008A_setStep6 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL1_REG_SEQ6_LEN) - 1) << EF_ADCS1008A_SEQCTRL1_REG_SEQ6;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL1 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL1 |= (value << EF_ADCS1008A_SEQCTRL1_REG_SEQ6);

}

void EF_ADCS1008A_setStep7 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    unsigned int mask = ((1 << EF_ADCS1008A_SEQCTRL1_REG_SEQ7_LEN) - 1) << EF_ADCS1008A_SEQCTRL1_REG_SEQ7;

    // Clear the bits at the specified offset in the original number
    adc->SEQCTRL1 &= ~mask;

    // Set the bits with the given value at the specified offset
    adc->SEQCTRL1 |= (value << EF_ADCS1008A_SEQCTRL1_REG_SEQ7);

}

void EF_ADCS1008A_setSeqCtrlReg1 (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->SEQCTRL1 = value;
}


int EF_ADCS1008A_getSeqCtrlReg1 (uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->SEQCTRL1);
}

int EF_ADCS1008A_getDataReg (uint32_t adc_base) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->DATA);
}

void EF_ADCS1008A_setFIFOlevel (uint32_t adc_base, int value){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->FIFOLEVEL = value;
}

int EF_ADCS1008A_getFIFOlevel (uint32_t adc_base){

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->FIFOLEVEL);
}


int EF_ADCS1008A_getRawStatusReg (uint32_t adc_base) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->ris);
}

int EF_ADCS1008A_getMaskStatusReg (uint32_t adc_base) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->mis);
}

void EF_ADCS1008A_setInterruptMaskReg (uint32_t adc_base, int value) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->im = value;
}

int EF_ADCS1008A_getInterruptMaskReg (uint32_t adc_base) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    return (adc->im);
}

void EF_ADCS1008A_setInterruptClearReg (uint32_t adc_base, int value) {

    EF_ADCS1008A_TYPE* adc = (EF_ADCS1008A_TYPE*)adc_base;
    
    adc->icr = value;
}


#endif