# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
I presume this question is referring to the ripple counter, since there were no ring counters employed in the lab (https://bsuece230l.github.io/classes/counters_and_dividers/index.html)

Essentially, all the T-flipflops start with outputting Q values of 0, and all have a T input of 1. This means that each one will toggle to 1 as soon as they receive a clock signal. At the first clock cycle, the first flip flop toggles to outputting Q of 1, as it receives the clock directly. As this Q is set as the clock of the next flipflop, the next flipflop's Q then toggles to 1. The same is true for the next flipflop. This means that the positive edge of the first clock cycle immediately triggers a sequence that triggers all the flipflops to flip from their initial output state of 0 to a state of 1, with each preceding flipflop's output triggering the clock of the next to make the afore so.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
As with the last question, I assume that this must refer to the ripple counter. Here, to get an output of a given clock, you need to realize that the division of the original counter is dependent on the number of T-flipflops. Here, each T-flipflop divides the clock frequency by 2. Hence, as the desired frequency is 1kHz, and the clock frequency is 100 MHz, the following equation can be used: 1kHz = (100 MHz)/2^N. Solving for N lends N = log2(100MHz/1kHz) = 16.61. This means that, to get a frequency of about 1kHz, you would need to use 17 T-flipflops. This can be double checked: (100000000Hz)/2^17 = 762.939453125, which is approximately 1kHz.