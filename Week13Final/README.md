# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###Summary
This lab involved the construction of a state machine using two methods: One Hot and Binary encoding. The state table provided was used to construct a truth table. This was used to construct a K-map and generate boolean functions to properly implement transitions between states. Both the binary and the one-hot implementations start at an initial state (A), factor in the current state and the input w to determine the next state, and include a reset to make the state machine go back to the initial state. It also included an output (z) at each state. Since the output does not depend on the value of w but only on the state, the state machine constructed is a Moore machine.

### Compare and contrast One Hot and Binary encodings
One Hot and Binary encodings differ in the way that they represent the various states in the state machine. For One Hot encoding, only one D-flipflop is high at a time (one-hot). N D-flipflops are used to encode N states. For example, in this lab, which included 5 states, A was 001, B was 010, etc. One-Hot can be easier to read; however, as the number of states increases, using a D-flipflop for each state becomes cumbersome.

On the other hand, Binary encoding uses a set of D flipflops (the number of D flipflops is determined by the formula log(base 2)[N states]) to encode a binary number that represents the current state. For example, in this lab, A was 000, B was 001, etc. A disadvantage of binary is that invalid states can occur. In this lab, 110 and 111 were invalid states (since the state machine only included 5 states).

### Which method did your team find easier, and why?

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

