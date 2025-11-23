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

### Summary
This lab involved the construction of a state machine using two methods: One Hot and Binary encoding. The state table provided was used to construct a truth table. This was used to construct a K-map and generate boolean functions to properly implement transitions between states. Both the binary and the one-hot implementations start at an initial state (A), factor in the current state and the input w to determine the next state, and include a reset to make the state machine go back to the initial state. It also included an output (z) at each state. Since the output does not depend on the value of w but only on the state, the state machine constructed is a Moore machine.

This lab explored the basics of finite state machines. The students learned how to implement state machines from a state table via two methods: a one hot encoding implementation, and a binary encoding implementation. Then, based on these learnings, they implemented a state machines in both of these ways based off of a given state table. The one hot encoding implementation was constructed using basic combinational logic, whereas the binary encoding implementation was constructed by making k-maps for each of the 'outputs' (of next state and actual output z) based upon the current state variables and the input w. Respectively, the logic found from basic reasoning in the first case, and k-maps in the second, were assigned appropriately to the D inputs of an array of d-flipflops to be stored as the new state in the next clock cycle. Default/reset cases were given to the d-flipflops appropriately to allow for a reset to the A state.

### Compare and contrast One Hot and Binary encodings
One Hot and Binary encodings differ in the way that they represent the various states in the state machine. For One Hot encoding, only one D-flipflop is high at a time (one-hot). N D-flipflops are used to encode N states. For example, in this lab, which included 5 states, A was 001, B was 010, etc. One-Hot can be easier to read; however, as the number of states increases, using a D-flipflop for each state becomes cumbersome.

On the other hand, Binary encoding uses a set of D flipflops (the number of D flipflops is determined by the formula log(base 2)[N states]) to encode a binary number that represents the current state. For example, in this lab, A was 000, B was 001, etc. A disadvantage of binary is that invalid states can occur. In this lab, 110 and 111 were invalid states (since the state machine only included 5 states).

### Which method did your team find easier, and why?
Our team found the one hot encoding method to be far easier in this lab. This is due to the fact that the binary encoding method required the construction of four k-maps to solve for the minimized functions to produce the next state (in three variables) and the output; in solving k-maps, it is easy to make minor errors, which ultimately completely ruin the output. Thusly, it was very time consuming and labor intensive to correctly implement the afore. Ultimately, it took three tries before the binary encoding implementation worked functionally; the one hot encoding method worked in the initial implementation. Thus, the one hot encoding method may rightly be considered the easier one due to the requirement of less mental energy, less time, and less complicated/fewer steps overall.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
Notably, the one hot encoding implementation adds a new d-flipflop for every new state added to the state machines. At small scales, such as in this lab, this is quite feasible. However, at a large scale, with very many states, this becomes exceedingly wasteful of resources on the FPGA; it is better to use a binary encoding implementation, in which the number of d-flipflops required is approximatelly the base 2 logarithm of the number of states needed (log2(states)). Observably, the growth of y=log2(x) is far, far slower than that of y=x. Hence, as x (the number of states) becomes very large, it is increasingly beneficial to switch to a binary encoding in order to conserve resources on the FPGA.   

