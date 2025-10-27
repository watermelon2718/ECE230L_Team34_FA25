# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
In this lab, there was constructed a 4:1 multiplexer and 1:4 demultiplexer. The multiplexer takes multiple inputs and, based on the value of the selector bit(s), determines which input will be passed to the output. Also, if the enable switch is toggled off, no data will be passed through. A chained ternary operator was utilized in Verilog to determine which input is used based on the value of the selector bits.
`    assign out = enable == 1 ? (sel == 0 ? in[3:0] :
                   sel == 1 ? in[7:4] :  
                   sel == 2 ? in[11:8] : in[15:12]) : 0; `  
Likewise, the demultiplexer takes one input and, based on the value of the selector bit(s), determines which one of multiple outputs will receive the data. The demultiplexer also has an enable input. Ternary operators were also used to implement the demultiplexer logic.

Assorted critical learnings related to Verilog in this lab include the function of ternary/conditional operators, with boolean conditions, the routing of multiple bit/vector signals, and concatenation of scalars into a vector.

## Lab Questions

### In plain English describe the function and use of a multiplexer.
Essentially, a multiplexer takes several inputs, and then outputs just one of them. This can be thought of switching between routing each of the individual inputs to the output at different times. That which causes the switching between the selected input to be piped to the output are the switch signals; these signals select between the inputs. So, a multiplexer switches between routing many input signals to one output based upon combinations of switch signals.

In this lab, there was constructed a simple 4:1 multiplexer, which includes 4 inputs routed selectively to one output. The value of the two selector input bits determines which set of input data is routed to the output. The enable switch bit determines whether data is passed or not.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer takes one input and routes it to one of multiple outputs, depending on the value of the selector input. This lab involved a 1:4 demultiplexer, which means that one input is routed to one of four outputs. The value of the two selector input bits together determines which output receives the input data. As with a multiplexer, an enable switch is included to determine whether the data is passed through or not.

### What other uses might these circuits have? (Think Shannon’s)
These circuits can be used as components to construct various types of larger circuits, including larger boolean functions. Notably, Shannon's theorem allows the systematic decomposition of boolean functions into something that can be implemented by multiplexers, via factoring. Furthermore, multiplexers can be used to construct boolean circuits based off of a truth table. For a practical example, multiplexers could be utilized in a computer to pass data from memory through to the processor (bus arbitration).

Demultiplexers are also useful for a variety of applications. Research shows that demultiplexers might be utilized for such purposes as data routing for radio broadcasting and distributing bandwith for internet routers. Essentailly, demultiplexers can be used for any scenario that needs to distribute data to different outputs at different times.