# API Reference

## Header files

- [EF_ADCS1008A.h](#file-ef_adcs1008ah)
- [EF_ADCS1008A_regs.h](#file-ef_adcs1008a_regsh)
- [EF_Driver_Common.h](#file-ef_driver_commonh)

## File EF_ADCS1008A.h

_C header file for the EF\_ADCS1008A IP._



## Structures and Types

| Type | Name |
| ---: | :--- |
| typedef struct [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) | [**EF\_ADCS1008A\_TYPE**](#typedef-ef_adcs1008a_type)  <br> |
| typedef struct [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) \* | [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr)  <br> |
| struct | [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) <br> |

## Functions

| Type | Name |
| ---: | :--- |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_enable**](#function-ef_adcs1008a_enable) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, bool enable) <br>_Enables or disables the ADC._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getChannelNumber**](#function-ef_adcs1008a_getchannelnumber) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*channel\_number) <br>_Gets the channel number._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getCtrlReg**](#function-ef_adcs1008a_getctrlreg) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*ctrl\_value) <br>_Gets the control register value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getDataReg**](#function-ef_adcs1008a_getdatareg) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*data) <br>_Gets the data register value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getFIFOlevel**](#function-ef_adcs1008a_getfifolevel) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*fifo\_level) <br>_Gets the FIFO level value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getIM**](#function-ef_adcs1008a_getim) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*im) <br>_Gets the interrupt mask value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getMIS**](#function-ef_adcs1008a_getmis) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*mis) <br>_Gets the masked interrupt status value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getRIS**](#function-ef_adcs1008a_getris) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*ris) <br>_Gets th raw interrupt status value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getSeqCtrlReg0**](#function-ef_adcs1008a_getseqctrlreg0) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*seq\_ctrl\_value) <br>_Gets the sequencer control register 0 value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getSeqCtrlReg1**](#function-ef_adcs1008a_getseqctrlreg1) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*seq\_ctrl\_value) <br>_Gets the sequencer control register 1 value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getStartConversion**](#function-ef_adcs1008a_getstartconversion) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*value) <br>_Gets the start conversion bit._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_getTimerCtrlReg**](#function-ef_adcs1008a_gettimerctrlreg) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t \*ctrl\_value) <br>_Gets the timer control register value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_sequencerEnable**](#function-ef_adcs1008a_sequencerenable) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, bool enable) <br>_Enables or disables the sequencer._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setChannelNumber**](#function-ef_adcs1008a_setchannelnumber) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the channel number._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setClockDivider**](#function-ef_adcs1008a_setclockdivider) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, char value) <br>_Sets the clock divider value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setCtrlReg**](#function-ef_adcs1008a_setctrlreg) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the control register value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setFIFOlevel**](#function-ef_adcs1008a_setfifolevel) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the FIFO level value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setIC**](#function-ef_adcs1008a_setic) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the interrupt clear value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setIM**](#function-ef_adcs1008a_setim) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the interrupt mask value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setSampleDivider**](#function-ef_adcs1008a_setsampledivider) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, char value) <br>_Sets the sample divider value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setSeqCtrlReg0**](#function-ef_adcs1008a_setseqctrlreg0) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the sequencer control register 0 value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setSeqCtrlReg1**](#function-ef_adcs1008a_setseqctrlreg1) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the sequencer control register 1 value._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStartConversion**](#function-ef_adcs1008a_setstartconversion) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, bool start) <br>_Sets the start conversion bit._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep0**](#function-ef_adcs1008a_setstep0) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 0 value in the sequencer control register 0._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep1**](#function-ef_adcs1008a_setstep1) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 1 value in the sequencer control register 0._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep2**](#function-ef_adcs1008a_setstep2) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 2 value in the sequencer control register 0._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep3**](#function-ef_adcs1008a_setstep3) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 3 value in the sequencer control register 0._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep4**](#function-ef_adcs1008a_setstep4) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 4 value in the sequencer control register 1._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep5**](#function-ef_adcs1008a_setstep5) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 5 value in the sequencer control register 1._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep6**](#function-ef_adcs1008a_setstep6) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 6 value in the sequencer control register 1._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setStep7**](#function-ef_adcs1008a_setstep7) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the step 7 value in the sequencer control register 1._ |
|  [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status) | [**EF\_ADCS1008A\_setTimerCtrlReg**](#function-ef_adcs1008a_settimerctrlreg) ([**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr) adc, uint32\_t value) <br>_Sets the timer control register value._ |

## Macros

| Type | Name |
| ---: | :--- |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_CHANNEL\_BIT**](#define-ef_adcs1008a_chsel_reg_channel_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_CHANNEL\_MASK**](#define-ef_adcs1008a_chsel_reg_channel_mask)  ((uint32\_t)0x7)<br> |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_chsel_reg_max_value)  ((uint32\_t)0x7)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_EN\_BIT**](#define-ef_adcs1008a_ctrl_reg_en_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_EN\_MASK**](#define-ef_adcs1008a_ctrl_reg_en_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_ctrl_reg_max_value)  ((uint32\_t)0x3)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_SEQEN\_BIT**](#define-ef_adcs1008a_ctrl_reg_seqen_bit)  ((uint32\_t)1)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_SEQEN\_MASK**](#define-ef_adcs1008a_ctrl_reg_seqen_mask)  ((uint32\_t)0x2)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_FLUSH\_BIT**](#define-ef_adcs1008a_data_fifo_flush_reg_flush_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_FLUSH\_MASK**](#define-ef_adcs1008a_data_fifo_flush_reg_flush_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_flush_reg_max_value)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_LEVEL\_BIT**](#define-ef_adcs1008a_data_fifo_level_reg_level_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_LEVEL\_MASK**](#define-ef_adcs1008a_data_fifo_level_reg_level_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_level_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_threshold_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_THRESHOLD\_BIT**](#define-ef_adcs1008a_data_fifo_threshold_reg_threshold_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_THRESHOLD\_MASK**](#define-ef_adcs1008a_data_fifo_threshold_reg_threshold_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_DATA\_BIT**](#define-ef_adcs1008a_data_reg_data_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_DATA\_MASK**](#define-ef_adcs1008a_data_reg_data_mask)  ((uint32\_t)0x3ff)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_reg_max_value)  ((uint32\_t)0x3FF)<br> |
| define  | [**EF\_ADCS1008A\_EOC\_FLAG**](#define-ef_adcs1008a_eoc_flag)  ((uint32\_t)0x4)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_fifolevel_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_VALUE\_BIT**](#define-ef_adcs1008a_fifolevel_reg_value_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_VALUE\_MASK**](#define-ef_adcs1008a_fifolevel_reg_value_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_FIFO\_FULL\_FLAG**](#define-ef_adcs1008a_fifo_full_flag)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_FIFO\_LEVEL\_FLAG**](#define-ef_adcs1008a_fifo_level_flag)  ((uint32\_t)0x2)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_seqctrl0_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ0\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq0_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ0\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq0_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ1\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq1_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ1\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq1_mask)  ((uint32\_t)0x1f00)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ2\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq2_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ2\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq2_mask)  ((uint32\_t)0x1f0000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ3\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq3_bit)  ((uint32\_t)24)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ3\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq3_mask)  ((uint32\_t)0x1f000000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_seqctrl1_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ4\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq4_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ4\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq4_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ5\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq5_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ5\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq5_mask)  ((uint32\_t)0x1f00)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ6\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq6_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ6\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq6_mask)  ((uint32\_t)0x1f0000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ7\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq7_bit)  ((uint32\_t)24)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ7\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq7_mask)  ((uint32\_t)0x1f000000)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_soc_reg_max_value)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_SOC\_BIT**](#define-ef_adcs1008a_soc_reg_soc_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_SOC\_MASK**](#define-ef_adcs1008a_soc_reg_soc_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_CLKDIV\_BIT**](#define-ef_adcs1008a_tctrl_reg_clkdiv_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_CLKDIV\_MASK**](#define-ef_adcs1008a_tctrl_reg_clkdiv_mask)  ((uint32\_t)0xff)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_tctrl_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SAMPLE\_DIV\_BIT**](#define-ef_adcs1008a_tctrl_reg_sample_div_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SAMPLE\_DIV\_MASK**](#define-ef_adcs1008a_tctrl_reg_sample_div_mask)  ((uint32\_t)0xff00)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SWIDTH\_BIT**](#define-ef_adcs1008a_tctrl_reg_swidth_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SWIDTH\_MASK**](#define-ef_adcs1008a_tctrl_reg_swidth_mask)  ((uint32\_t)0xf0000)<br> |
| define  | [**IO\_TYPES**](#define-io_types)  <br> |
| define  | [**\_\_R**](#define-__r)  volatile const uint32\_t<br> |
| define  | [**\_\_RW**](#define-__rw)  volatile       uint32\_t<br> |
| define  | [**\_\_W**](#define-__w)  volatile       uint32\_t<br> |

## Structures and Types Documentation

### typedef `EF_ADCS1008A_TYPE`

```c
typedef struct _EF_ADCS1008A_TYPE_ EF_ADCS1008A_TYPE;
```

### typedef `EF_ADCS1008A_TYPE_PTR`

```c
typedef struct _EF_ADCS1008A_TYPE_* EF_ADCS1008A_TYPE_PTR;
```

### struct `_EF_ADCS1008A_TYPE_`


Variables:

-  [**\_\_RW**](#define-__rw) CHSEL  

-  [**\_\_RW**](#define-__rw) CTRL  

-  [**\_\_RW**](#define-__rw) DATA  

-  [**\_\_W**](#define-__w) DATA_FIFO_FLUSH  

-  [**\_\_R**](#define-__r) DATA_FIFO_LEVEL  

-  [**\_\_W**](#define-__w) DATA_FIFO_THRESHOLD  

-  [**\_\_RW**](#define-__rw) FIFOLEVEL  

-  [**\_\_W**](#define-__w) IC  

-  [**\_\_RW**](#define-__rw) IM  

-  [**\_\_R**](#define-__r) MIS  

-  [**\_\_R**](#define-__r) RIS  

-  [**\_\_RW**](#define-__rw) SEQCTRL0  

-  [**\_\_RW**](#define-__rw) SEQCTRL1  

-  [**\_\_RW**](#define-__rw) SOC  

-  [**\_\_RW**](#define-__rw) TCTRL  

-  [**\_\_R**](#define-__r) reserved_0  

-  [**\_\_R**](#define-__r) reserved_1  


## Functions Documentation

### function `EF_ADCS1008A_enable`

_Enables or disables the ADC._
```c
EF_DRIVER_STATUS EF_ADCS1008A_enable (
    EF_ADCS1008A_TYPE_PTR adc,
    bool enable
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `enable` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getChannelNumber`

_Gets the channel number._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getChannelNumber (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *channel_number
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `channel_number` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getCtrlReg`

_Gets the control register value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getCtrlReg (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *ctrl_value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `ctrl_value` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getDataReg`

_Gets the data register value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getDataReg (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *data
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `data` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getFIFOlevel`

_Gets the FIFO level value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getFIFOlevel (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *fifo_level
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `fifo_level` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getIM`

_Gets the interrupt mask value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getIM (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *im
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `im` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getMIS`

_Gets the masked interrupt status value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getMIS (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *mis
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `mis` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getRIS`

_Gets th raw interrupt status value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getRIS (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *ris
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `ris` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getSeqCtrlReg0`

_Gets the sequencer control register 0 value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getSeqCtrlReg0 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *seq_ctrl_value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `seq_ctrl_value` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getSeqCtrlReg1`

_Gets the sequencer control register 1 value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getSeqCtrlReg1 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *seq_ctrl_value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `seq_ctrl_value` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getStartConversion`

_Gets the start conversion bit._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getStartConversion (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_getTimerCtrlReg`

_Gets the timer control register value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_getTimerCtrlReg (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t *ctrl_value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `ctrl_value` The value to be read 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_sequencerEnable`

_Enables or disables the sequencer._
```c
EF_DRIVER_STATUS EF_ADCS1008A_sequencerEnable (
    EF_ADCS1008A_TYPE_PTR adc,
    bool enable
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `enable` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setChannelNumber`

_Sets the channel number._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setChannelNumber (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setClockDivider`

_Sets the clock divider value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setClockDivider (
    EF_ADCS1008A_TYPE_PTR adc,
    char value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setCtrlReg`

_Sets the control register value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setCtrlReg (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setFIFOlevel`

_Sets the FIFO level value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setFIFOlevel (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setIC`

_Sets the interrupt clear value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setIC (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setIM`

_Sets the interrupt mask value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setIM (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setSampleDivider`

_Sets the sample divider value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setSampleDivider (
    EF_ADCS1008A_TYPE_PTR adc,
    char value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setSeqCtrlReg0`

_Sets the sequencer control register 0 value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setSeqCtrlReg0 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setSeqCtrlReg1`

_Sets the sequencer control register 1 value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setSeqCtrlReg1 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStartConversion`

_Sets the start conversion bit._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStartConversion (
    EF_ADCS1008A_TYPE_PTR adc,
    bool start
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `start` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep0`

_Sets the step 0 value in the sequencer control register 0._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep0 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep1`

_Sets the step 1 value in the sequencer control register 0._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep1 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep2`

_Sets the step 2 value in the sequencer control register 0._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep2 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep3`

_Sets the step 3 value in the sequencer control register 0._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep3 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep4`

_Sets the step 4 value in the sequencer control register 1._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep4 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep5`

_Sets the step 5 value in the sequencer control register 1._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep5 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep6`

_Sets the step 6 value in the sequencer control register 1._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep6 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setStep7`

_Sets the step 7 value in the sequencer control register 1._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setStep7 (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS
### function `EF_ADCS1008A_setTimerCtrlReg`

_Sets the timer control register value._
```c
EF_DRIVER_STATUS EF_ADCS1008A_setTimerCtrlReg (
    EF_ADCS1008A_TYPE_PTR adc,
    uint32_t value
) 
```


**Parameters:**


* `adc` An [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr). The pointer to the ADCS1008A registers structure
* `value` The value to be set 


**Returns:**

EF\_DRIVER\_STATUS

## Macros Documentation

### define `EF_ADCS1008A_CHSEL_REG_CHANNEL_BIT`

```c
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_CHSEL_REG_CHANNEL_MASK`

```c
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_MASK ((uint32_t)0x7)
```

### define `EF_ADCS1008A_CHSEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_CHSEL_REG_MAX_VALUE ((uint32_t)0x7)
```

### define `EF_ADCS1008A_CTRL_REG_EN_BIT`

```c
#define EF_ADCS1008A_CTRL_REG_EN_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_CTRL_REG_EN_MASK`

```c
#define EF_ADCS1008A_CTRL_REG_EN_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_CTRL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_CTRL_REG_MAX_VALUE ((uint32_t)0x3)
```

### define `EF_ADCS1008A_CTRL_REG_SEQEN_BIT`

```c
#define EF_ADCS1008A_CTRL_REG_SEQEN_BIT ((uint32_t)1)
```

### define `EF_ADCS1008A_CTRL_REG_SEQEN_MASK`

```c
#define EF_ADCS1008A_CTRL_REG_SEQEN_MASK ((uint32_t)0x2)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_MAX_VALUE ((uint32_t)0x1)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_DATA_REG_DATA_BIT`

```c
#define EF_ADCS1008A_DATA_REG_DATA_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_REG_DATA_MASK`

```c
#define EF_ADCS1008A_DATA_REG_DATA_MASK ((uint32_t)0x3ff)
```

### define `EF_ADCS1008A_DATA_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_REG_MAX_VALUE ((uint32_t)0x3FF)
```

### define `EF_ADCS1008A_EOC_FLAG`

```c
#define EF_ADCS1008A_EOC_FLAG ((uint32_t)0x4)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_VALUE_BIT`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_VALUE_MASK`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_FIFO_FULL_FLAG`

```c
#define EF_ADCS1008A_FIFO_FULL_FLAG ((uint32_t)0x1)
```

### define `EF_ADCS1008A_FIFO_LEVEL_FLAG`

```c
#define EF_ADCS1008A_FIFO_LEVEL_FLAG ((uint32_t)0x2)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ0_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ0_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ1_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ1_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_MASK ((uint32_t)0x1f00)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ2_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ2_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_MASK ((uint32_t)0x1f0000)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ3_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_BIT ((uint32_t)24)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ3_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_MASK ((uint32_t)0x1f000000)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ4_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ4_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ5_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ5_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_MASK ((uint32_t)0x1f00)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ6_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ6_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_MASK ((uint32_t)0x1f0000)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ7_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_BIT ((uint32_t)24)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ7_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_MASK ((uint32_t)0x1f000000)
```

### define `EF_ADCS1008A_SOC_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SOC_REG_MAX_VALUE ((uint32_t)0x1)
```

### define `EF_ADCS1008A_SOC_REG_SOC_BIT`

```c
#define EF_ADCS1008A_SOC_REG_SOC_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SOC_REG_SOC_MASK`

```c
#define EF_ADCS1008A_SOC_REG_SOC_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_TCTRL_REG_CLKDIV_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_TCTRL_REG_CLKDIV_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_MASK ((uint32_t)0xff)
```

### define `EF_ADCS1008A_TCTRL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_TCTRL_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_MASK ((uint32_t)0xff00)
```

### define `EF_ADCS1008A_TCTRL_REG_SWIDTH_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_TCTRL_REG_SWIDTH_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_MASK ((uint32_t)0xf0000)
```

### define `IO_TYPES`

```c
#define IO_TYPES 
```

### define `__R`

```c
#define __R volatile const uint32_t
```

### define `__RW`

```c
#define __RW volatile       uint32_t
```

### define `__W`

```c
#define __W volatile       uint32_t
```


## File EF_ADCS1008A_regs.h





## Structures and Types

| Type | Name |
| ---: | :--- |
| typedef struct [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) | [**EF\_ADCS1008A\_TYPE**](#typedef-ef_adcs1008a_type)  <br> |
| typedef struct [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) \* | [**EF\_ADCS1008A\_TYPE\_PTR**](#typedef-ef_adcs1008a_type_ptr)  <br> |
| struct | [**\_EF\_ADCS1008A\_TYPE\_**](#struct-_ef_adcs1008a_type_) <br> |


## Macros

| Type | Name |
| ---: | :--- |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_CHANNEL\_BIT**](#define-ef_adcs1008a_chsel_reg_channel_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_CHANNEL\_MASK**](#define-ef_adcs1008a_chsel_reg_channel_mask)  ((uint32\_t)0x7)<br> |
| define  | [**EF\_ADCS1008A\_CHSEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_chsel_reg_max_value)  ((uint32\_t)0x7)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_EN\_BIT**](#define-ef_adcs1008a_ctrl_reg_en_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_EN\_MASK**](#define-ef_adcs1008a_ctrl_reg_en_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_ctrl_reg_max_value)  ((uint32\_t)0x3)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_SEQEN\_BIT**](#define-ef_adcs1008a_ctrl_reg_seqen_bit)  ((uint32\_t)1)<br> |
| define  | [**EF\_ADCS1008A\_CTRL\_REG\_SEQEN\_MASK**](#define-ef_adcs1008a_ctrl_reg_seqen_mask)  ((uint32\_t)0x2)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_FLUSH\_BIT**](#define-ef_adcs1008a_data_fifo_flush_reg_flush_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_FLUSH\_MASK**](#define-ef_adcs1008a_data_fifo_flush_reg_flush_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_FLUSH\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_flush_reg_max_value)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_LEVEL\_BIT**](#define-ef_adcs1008a_data_fifo_level_reg_level_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_LEVEL\_MASK**](#define-ef_adcs1008a_data_fifo_level_reg_level_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_LEVEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_level_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_fifo_threshold_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_THRESHOLD\_BIT**](#define-ef_adcs1008a_data_fifo_threshold_reg_threshold_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_FIFO\_THRESHOLD\_REG\_THRESHOLD\_MASK**](#define-ef_adcs1008a_data_fifo_threshold_reg_threshold_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_DATA\_BIT**](#define-ef_adcs1008a_data_reg_data_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_DATA\_MASK**](#define-ef_adcs1008a_data_reg_data_mask)  ((uint32\_t)0x3ff)<br> |
| define  | [**EF\_ADCS1008A\_DATA\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_data_reg_max_value)  ((uint32\_t)0x3FF)<br> |
| define  | [**EF\_ADCS1008A\_EOC\_FLAG**](#define-ef_adcs1008a_eoc_flag)  ((uint32\_t)0x4)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_fifolevel_reg_max_value)  ((uint32\_t)0x1F)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_VALUE\_BIT**](#define-ef_adcs1008a_fifolevel_reg_value_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_FIFOLEVEL\_REG\_VALUE\_MASK**](#define-ef_adcs1008a_fifolevel_reg_value_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_FIFO\_FULL\_FLAG**](#define-ef_adcs1008a_fifo_full_flag)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_FIFO\_LEVEL\_FLAG**](#define-ef_adcs1008a_fifo_level_flag)  ((uint32\_t)0x2)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_seqctrl0_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ0\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq0_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ0\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq0_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ1\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq1_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ1\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq1_mask)  ((uint32\_t)0x1f00)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ2\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq2_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ2\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq2_mask)  ((uint32\_t)0x1f0000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ3\_BIT**](#define-ef_adcs1008a_seqctrl0_reg_seq3_bit)  ((uint32\_t)24)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL0\_REG\_SEQ3\_MASK**](#define-ef_adcs1008a_seqctrl0_reg_seq3_mask)  ((uint32\_t)0x1f000000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_seqctrl1_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ4\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq4_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ4\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq4_mask)  ((uint32\_t)0x1f)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ5\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq5_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ5\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq5_mask)  ((uint32\_t)0x1f00)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ6\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq6_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ6\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq6_mask)  ((uint32\_t)0x1f0000)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ7\_BIT**](#define-ef_adcs1008a_seqctrl1_reg_seq7_bit)  ((uint32\_t)24)<br> |
| define  | [**EF\_ADCS1008A\_SEQCTRL1\_REG\_SEQ7\_MASK**](#define-ef_adcs1008a_seqctrl1_reg_seq7_mask)  ((uint32\_t)0x1f000000)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_soc_reg_max_value)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_SOC\_BIT**](#define-ef_adcs1008a_soc_reg_soc_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_SOC\_REG\_SOC\_MASK**](#define-ef_adcs1008a_soc_reg_soc_mask)  ((uint32\_t)0x1)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_CLKDIV\_BIT**](#define-ef_adcs1008a_tctrl_reg_clkdiv_bit)  ((uint32\_t)0)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_CLKDIV\_MASK**](#define-ef_adcs1008a_tctrl_reg_clkdiv_mask)  ((uint32\_t)0xff)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_MAX\_VALUE**](#define-ef_adcs1008a_tctrl_reg_max_value)  ((uint32\_t)0xFFFFFFFF)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SAMPLE\_DIV\_BIT**](#define-ef_adcs1008a_tctrl_reg_sample_div_bit)  ((uint32\_t)8)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SAMPLE\_DIV\_MASK**](#define-ef_adcs1008a_tctrl_reg_sample_div_mask)  ((uint32\_t)0xff00)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SWIDTH\_BIT**](#define-ef_adcs1008a_tctrl_reg_swidth_bit)  ((uint32\_t)16)<br> |
| define  | [**EF\_ADCS1008A\_TCTRL\_REG\_SWIDTH\_MASK**](#define-ef_adcs1008a_tctrl_reg_swidth_mask)  ((uint32\_t)0xf0000)<br> |
| define  | [**IO\_TYPES**](#define-io_types)  <br> |
| define  | [**\_\_R**](#define-__r)  volatile const uint32\_t<br> |
| define  | [**\_\_RW**](#define-__rw)  volatile       uint32\_t<br> |
| define  | [**\_\_W**](#define-__w)  volatile       uint32\_t<br> |

## Structures and Types Documentation

### typedef `EF_ADCS1008A_TYPE`

```c
typedef struct _EF_ADCS1008A_TYPE_ EF_ADCS1008A_TYPE;
```

### typedef `EF_ADCS1008A_TYPE_PTR`

```c
typedef struct _EF_ADCS1008A_TYPE_* EF_ADCS1008A_TYPE_PTR;
```

### struct `_EF_ADCS1008A_TYPE_`


Variables:

-  [**\_\_RW**](#define-__rw) CHSEL  

-  [**\_\_RW**](#define-__rw) CTRL  

-  [**\_\_RW**](#define-__rw) DATA  

-  [**\_\_W**](#define-__w) DATA_FIFO_FLUSH  

-  [**\_\_R**](#define-__r) DATA_FIFO_LEVEL  

-  [**\_\_W**](#define-__w) DATA_FIFO_THRESHOLD  

-  [**\_\_RW**](#define-__rw) FIFOLEVEL  

-  [**\_\_W**](#define-__w) IC  

-  [**\_\_RW**](#define-__rw) IM  

-  [**\_\_R**](#define-__r) MIS  

-  [**\_\_R**](#define-__r) RIS  

-  [**\_\_RW**](#define-__rw) SEQCTRL0  

-  [**\_\_RW**](#define-__rw) SEQCTRL1  

-  [**\_\_RW**](#define-__rw) SOC  

-  [**\_\_RW**](#define-__rw) TCTRL  

-  [**\_\_R**](#define-__r) reserved_0  

-  [**\_\_R**](#define-__r) reserved_1  



## Macros Documentation

### define `EF_ADCS1008A_CHSEL_REG_CHANNEL_BIT`

```c
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_CHSEL_REG_CHANNEL_MASK`

```c
#define EF_ADCS1008A_CHSEL_REG_CHANNEL_MASK ((uint32_t)0x7)
```

### define `EF_ADCS1008A_CHSEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_CHSEL_REG_MAX_VALUE ((uint32_t)0x7)
```

### define `EF_ADCS1008A_CTRL_REG_EN_BIT`

```c
#define EF_ADCS1008A_CTRL_REG_EN_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_CTRL_REG_EN_MASK`

```c
#define EF_ADCS1008A_CTRL_REG_EN_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_CTRL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_CTRL_REG_MAX_VALUE ((uint32_t)0x3)
```

### define `EF_ADCS1008A_CTRL_REG_SEQEN_BIT`

```c
#define EF_ADCS1008A_CTRL_REG_SEQEN_BIT ((uint32_t)1)
```

### define `EF_ADCS1008A_CTRL_REG_SEQEN_MASK`

```c
#define EF_ADCS1008A_CTRL_REG_SEQEN_MASK ((uint32_t)0x2)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_FLUSH_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_DATA_FIFO_FLUSH_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_FLUSH_REG_MAX_VALUE ((uint32_t)0x1)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_LEVEL_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_DATA_FIFO_LEVEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_LEVEL_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_BIT`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_MASK`

```c
#define EF_ADCS1008A_DATA_FIFO_THRESHOLD_REG_THRESHOLD_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_DATA_REG_DATA_BIT`

```c
#define EF_ADCS1008A_DATA_REG_DATA_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_DATA_REG_DATA_MASK`

```c
#define EF_ADCS1008A_DATA_REG_DATA_MASK ((uint32_t)0x3ff)
```

### define `EF_ADCS1008A_DATA_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_DATA_REG_MAX_VALUE ((uint32_t)0x3FF)
```

### define `EF_ADCS1008A_EOC_FLAG`

```c
#define EF_ADCS1008A_EOC_FLAG ((uint32_t)0x4)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_MAX_VALUE ((uint32_t)0x1F)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_VALUE_BIT`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_FIFOLEVEL_REG_VALUE_MASK`

```c
#define EF_ADCS1008A_FIFOLEVEL_REG_VALUE_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_FIFO_FULL_FLAG`

```c
#define EF_ADCS1008A_FIFO_FULL_FLAG ((uint32_t)0x1)
```

### define `EF_ADCS1008A_FIFO_LEVEL_FLAG`

```c
#define EF_ADCS1008A_FIFO_LEVEL_FLAG ((uint32_t)0x2)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ0_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ0_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ0_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ1_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ1_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ1_MASK ((uint32_t)0x1f00)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ2_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ2_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ2_MASK ((uint32_t)0x1f0000)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ3_BIT`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_BIT ((uint32_t)24)
```

### define `EF_ADCS1008A_SEQCTRL0_REG_SEQ3_MASK`

```c
#define EF_ADCS1008A_SEQCTRL0_REG_SEQ3_MASK ((uint32_t)0x1f000000)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ4_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ4_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ4_MASK ((uint32_t)0x1f)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ5_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ5_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ5_MASK ((uint32_t)0x1f00)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ6_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ6_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ6_MASK ((uint32_t)0x1f0000)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ7_BIT`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_BIT ((uint32_t)24)
```

### define `EF_ADCS1008A_SEQCTRL1_REG_SEQ7_MASK`

```c
#define EF_ADCS1008A_SEQCTRL1_REG_SEQ7_MASK ((uint32_t)0x1f000000)
```

### define `EF_ADCS1008A_SOC_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_SOC_REG_MAX_VALUE ((uint32_t)0x1)
```

### define `EF_ADCS1008A_SOC_REG_SOC_BIT`

```c
#define EF_ADCS1008A_SOC_REG_SOC_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_SOC_REG_SOC_MASK`

```c
#define EF_ADCS1008A_SOC_REG_SOC_MASK ((uint32_t)0x1)
```

### define `EF_ADCS1008A_TCTRL_REG_CLKDIV_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_BIT ((uint32_t)0)
```

### define `EF_ADCS1008A_TCTRL_REG_CLKDIV_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_CLKDIV_MASK ((uint32_t)0xff)
```

### define `EF_ADCS1008A_TCTRL_REG_MAX_VALUE`

```c
#define EF_ADCS1008A_TCTRL_REG_MAX_VALUE ((uint32_t)0xFFFFFFFF)
```

### define `EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_BIT ((uint32_t)8)
```

### define `EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_SAMPLE_DIV_MASK ((uint32_t)0xff00)
```

### define `EF_ADCS1008A_TCTRL_REG_SWIDTH_BIT`

```c
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_BIT ((uint32_t)16)
```

### define `EF_ADCS1008A_TCTRL_REG_SWIDTH_MASK`

```c
#define EF_ADCS1008A_TCTRL_REG_SWIDTH_MASK ((uint32_t)0xf0000)
```

### define `IO_TYPES`

```c
#define IO_TYPES 
```

### define `__R`

```c
#define __R volatile const uint32_t
```

### define `__RW`

```c
#define __RW volatile       uint32_t
```

### define `__W`

```c
#define __W volatile       uint32_t
```


## File EF_Driver_Common.h

_C header file for common driver definitions and types._



## Structures and Types

| Type | Name |
| ---: | :--- |
| typedef uint32\_t | [**EF\_DRIVER\_STATUS**](#typedef-ef_driver_status)  <br>_A type that is used to return the status of the driver functions._ |


## Macros

| Type | Name |
| ---: | :--- |
| define  | [**EF\_DRIVER\_ERROR**](#define-ef_driver_error)  ((uint32\_t)1)<br>_Unspecified error._ |
| define  | [**EF\_DRIVER\_ERROR\_BUSY**](#define-ef_driver_error_busy)  ((uint32\_t)2)<br>_Driver is busy._ |
| define  | [**EF\_DRIVER\_ERROR\_PARAMETER**](#define-ef_driver_error_parameter)  ((uint32\_t)5)<br>_Parameter error._ |
| define  | [**EF\_DRIVER\_ERROR\_SPECIFIC**](#define-ef_driver_error_specific)  ((uint32\_t)6)<br>_Start of driver specific errors._ |
| define  | [**EF\_DRIVER\_ERROR\_TIMEOUT**](#define-ef_driver_error_timeout)  ((uint32\_t)3)<br>_Timeout occurred._ |
| define  | [**EF\_DRIVER\_ERROR\_UNSUPPORTED**](#define-ef_driver_error_unsupported)  ((uint32\_t)4)<br>_Operation not supported._ |
| define  | [**EF\_DRIVER\_OK**](#define-ef_driver_ok)  ((uint32\_t)0)<br>_Operation succeeded._ |

## Structures and Types Documentation

### typedef `EF_DRIVER_STATUS`

_A type that is used to return the status of the driver functions._
```c
typedef uint32_t EF_DRIVER_STATUS;
```



## Macros Documentation

### define `EF_DRIVER_ERROR`

_Unspecified error._
```c
#define EF_DRIVER_ERROR ((uint32_t)1)
```

### define `EF_DRIVER_ERROR_BUSY`

_Driver is busy._
```c
#define EF_DRIVER_ERROR_BUSY ((uint32_t)2)
```

### define `EF_DRIVER_ERROR_PARAMETER`

_Parameter error._
```c
#define EF_DRIVER_ERROR_PARAMETER ((uint32_t)5)
```

### define `EF_DRIVER_ERROR_SPECIFIC`

_Start of driver specific errors._
```c
#define EF_DRIVER_ERROR_SPECIFIC ((uint32_t)6)
```

### define `EF_DRIVER_ERROR_TIMEOUT`

_Timeout occurred._
```c
#define EF_DRIVER_ERROR_TIMEOUT ((uint32_t)3)
```

### define `EF_DRIVER_ERROR_UNSUPPORTED`

_Operation not supported._
```c
#define EF_DRIVER_ERROR_UNSUPPORTED ((uint32_t)4)
```

### define `EF_DRIVER_OK`

_Operation succeeded._
```c
#define EF_DRIVER_OK ((uint32_t)0)
```


