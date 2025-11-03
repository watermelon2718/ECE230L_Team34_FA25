# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog typically refers to the use of basic logic gates combined into modules. This allows for easy implementation of combinatorial logic, which is logic that only depends on present signals, and not states that are dependent on past events. On the other hand, a latch is a type of sequential logic circut, as the state depends on prior signals, not just the current signals.

Theoretically, it is possible to design certain sequential circuits, like a latch, using combinatorial logic (via NAND gates, for instance), which would lead us to expect to be able to use structural Verilog to implement the same.

However, because sequential circuits like latches require combinatorial loops, which can display unexpected, undesired, or even problematic behaviour in structural Verilog, it is not correct to try to implement them using this method. According to my research, in structural Verilog, combinatorial loops display erratic behaviour with unpredictable output; this is not what a latch is supposed to do (it's supposed to store a state, a steady and consistent output).

In short, we can't use structural Verilog to implement latches because it is difficult or impossible to create a module that will exhibit the desired behaviour of a latch using this method of constructing combinatorial circuits.

In the particular context of Vivado and the Basys3, furthermore, attempting the aforementioned will actual result in an error regarding combinatorial loops and will not work.
### What is the meaning of always @(*) in a sensitivity block?
Execution of the always block is triggered by an event, or a set of events. The '@()' allows us to designate what these signals/events are.

Signals can be placed inside the parentheses with different combinations or keywords to allow different types of triggering with different signals. For example, it is possible to 'or' multiple signals, so that the always block will trigger when any of them change, or to use 'posedge' to trigger on the positive edge of the signal.

Ultimately, whenever the sensitivity list (the thing that comes after the @ operator, inside the parentheses) is triggered, the statements inside the always block will be exectued.

### What importance is memory to digital circuits?
