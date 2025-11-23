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
This lab explored the basics of finite state machines. The students learned how to implement state machines from a state table via two methods: a one hot encoding implementation, and a binary encoding implementation. Then, based on these learnings, they implemented a state machines in both of these ways based off of a given state table. The one hot encoding implementation was constructed using basic combinational logic, whereas the binary encoding implementation was constructed by making k-maps for each of the 'outputs' (of next state and actual output z) based upon the current state variables and the input w. Respectively, the logic found from basic reasoning in the first case, and k-maps in the second, were assigned appropriately to the D inputs of an array of d-flipflops to be stored as the new state in the next clock cycle. Default/reset cases were given to the d-flipflops appropriately to allow for a reset to the A state.

### Compare and contrast One Hot and Binary encodings

### Which method did your team find easier, and why?

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
Notably, the one hot encoding implementation adds a new d-flipflop for every new state added to the state machines. At small scales, such as in this lab, this is quite feasible. However, at a large scale, with very many states, this becomes exceedingly wasteful of resources on the FPGA; it is better to use a binary encoding implementation, in which the number of d-flipflops required is approximatelly the base 2 logarithm of the number of states needed (log2(states)). Observably, the growth of y=log2(x) is far, far slower than that of y=x. Hence, as x (the number of states) becomes very large, it is increasingly beneficial to switch to a binary encoding in order to conserve resources on the FPGA.   

