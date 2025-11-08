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

### What is different between edge and level sensitive circuits?
Level-sensitive circuits will continue to sense and respond to the input as long as the clock is high. This means that they will end up storing whatever value the input had right before the clock turns off. On the other hand, edge-sensitive circuits sense within a much smaller window - the short period of time when the clock first goes high [or low] (the edge). This means that (in the case of positive edge triggers) the circuit will capture whatever the data value was when the clock first turned on. 

### Why is it important to declare initial state?

### What do edge sensitive circuits let us build?
Due to their inclusion of a clock mechanism, edge-sensitive circuits allow the implementation of fundamental structures such as counters. This in turn enables the construction of computer memory systems and other important components of a computer system.