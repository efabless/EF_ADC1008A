# EF_ADC1008A
A digital controller for [EF_ADCS1008NC](https://github.com/efabless/EF_ADCS1008NC), 8 Channel 10-bit SAR ADC.

## Features
- 10 Bit SAR
- 8 Analog Channels 
- 32 Samples FIFO
- Programmable Sequencer

## The Sequencer
Automatically collect the data from the 8 channels and push them into the FIFO. Once enabled, the sequencer repeats a set of steps (the sequence) till it is disabled. The sequence is up to 8 steps; each step is defined using 5 bits:
- ```2-0```: Channel number to be acquired
- ```3```: Reserved
- ```4```: Last step mark

The sequencer frequency is determined by the sampling rate that depends on both the clock divider and the sample divider. 

```math 
Sampling\ Rate ={System\ Clock\ Frequency\over (Clock\ Divider)*(Sample\ Divider)}
```

## Registers
| Register | Offset | Length|Mode         | Description |
| -------- | ------ | --|------------ | ----------- |
| Time Control Register | ```0x0000``` | 16| RW | ```7-0: Clock Divider```<br>```15-8: Sample Divider```|
| Channel Select Register| ```0x0004```|3|RW| ```2-0: Channel number``` |
| Control Register| ```0x0008```|2| RW|```0: ADC Enable``` <br>```1: Sequencer Enable```|
|SoC Register| ```0x000C```|1|RW|Start of conversion register; writing 1 to it triggers ADC sampling and conversion while in the manual mode|
|Sequence Register 0|```0x0010```|32|RW| Steps 0 to 3 definitions.<br>```4-0: Step 0```<br>```7-5: reserved```<br>```12-8: Step 1```<br>```15-13: reserved```<br>```20-16: Step 2```<br>```23-21: reserved```<br>```28-24 : Step 3```<br>```31-29: reserved```|
|Sequence Register 1|```0x0014```|32|RW| Steps 4 to 7 definitions.<br>```4-0: Step 4```<br>```7-5: reserved```<br>```12-8: Step 5```<br>```15-13: reserved```<br>```20-16: Step 6```<br>```23-21: reserved```<br>```28-24 : Step 7```<br>```31-29: reserved```|
|Data Register|```0x0018```|8|RO|Data Register; reading from it dequeues a sample from the FIFO.|
|FIFOLEVEL|```0x001C```|5|RW|FIFO Level Register for IRQ generation|
| RIS | ```0x0F00``` |3| RO | Raw Status Register |
| MIS | ```0x0F04``` |3| RO | Masked Status Register |
| IM | ```0x0F08``` | 3|RW | Interrupts Masking Register; enable and disables interrupts |
| ICR | ```0x0F0C``` |3| WO | Interrupts Clear Register; write 1 to clear the flag |

## Interrupt Flags
The following applies to ICR, MIS, IM and RIS registers.
|bit|flag|
|---|----|
|0 |FIFO is full|
|1 |FIFO level is above the set threshold|
|2 |End of Conversion (EoC)|

## Modes of operation
### Automatic (Sequencer is Enabled)
 - Sequence registers 0 and 1 configures the sequence
 - The sequencer controls the SoC and analog channel selection

### Manual (Sequencer is disabled)
 - Select the channel then use the SoC register to trigger the conversion


