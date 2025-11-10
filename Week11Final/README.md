# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###Summary
This lab taught the students about flipflops and synchronous logic, memory, and state machines. This included learnings regarding level vs. edge sensitive circuits, which respectively respond to change in signal at any point in the clock cycle, or just at an edge (such as positive edge). It was discussed how it does not work to just put the clock signal in the sensitivity list for a behavioural implementation to make an actual edge sensitive circuit, but rather the posedge keyword is required.

Furthermore, there was discussed the application of edge triggered circuits for making clocked circuits, which are circuits that depend on a clock signal that toggles at a fixed frequency. The importantce of initial state was discussed as well.

The component of the lab constructed by the students included D, JK, and T Flip Flops. Here, the D Flip Flop was constructed first, and the JK Flip Flop was constructed via simple boolean logic and a D Flip Flop. The T Flip Flop was constructed from a JK Flip Flop set with J and K as 1.

### What is different between edge and level sensitive circuits?
Level-sensitive circuits will continue to sense and respond to the input as long as the clock is high. This means that they will end up storing whatever value the input had right before the clock turns off. On the other hand, edge-sensitive circuits sense within a much smaller window - the short period of time when the clock first goes high [or low] (the edge). This means that (in the case of positive edge triggers) the circuit will capture whatever the data value was when the clock first turned on. 

### Why is it important to declare initial state?
Essentially, the FPGA has no way to determine the initial state of memory by itself; in order for it to begin (and to usefully use the memory) it has to thus be given values to start with, known as the initial state. This is done with 'initial begin'. In an actual device, this would be required for consistent behaviour; for our simulation, is is also required to allow for compilation (it will cause errors otherwise). 

### What do edge sensitive circuits let us build?
Due to their inclusion of a clock mechanism, edge-sensitive circuits allow the implementation of fundamental structures such as edge triggered flip flops, and thus also counters. This in turn enables the construction of computer memory systems and other important components of a computer system.