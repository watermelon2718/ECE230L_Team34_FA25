# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
In this lab, we learned more about Verilog implementation of more complex combinatiorial logic. Particularly, we utilized a top level file to combine multiple (2) individual circuits into one complete system. In other words, we use a block system to incorporate functional segments of combinations of logic gates into a completed whole. Here, the top level functions like the entry point which serves to wrap the individual lower level components together. We implemented Circuits A and B from K-maps constructed from the truth tables provided. To implement the first circuit, we used a maxterm for simplicity. Likewise, we utilized a minterm methodology to create Circuit B. 

Then, we learned about the utilization of constraints to map FPGA pins to our function. This is done via writing/modifying the constraints.xdc file. 

### 1 - Explain the role of the Top Level file.

The Top Level file can be thought of as fulfilling a like function to that of of a main function in various programming languages; that is to say, it functions to wrap all the other included  blocks (modules) together into one circuit. The distinction, however, from the afore, is that Verilog is non-sequqential; whereas, in another programming language, a main function dictates the entry point for beginning of execution, in Verilog, a Top Level file merely serves as an entry point for the compiler to put together the non-sequential circuit.

### 2 - Explain the function of the Constraints file.

The purpose of the constraints file is to configure the actual pins on the Basys3 board to match the inputs and outputs for our Verilog code. 

For example: 
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {sw[0]}]

The above statement sets pin V17 to be sw[0], as well as setting the voltage level of the pin. In the constraints file, we uncomment each I/O pin that is required for the lab. 

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

For A, the maxterm implementation was the correct/more efficient solution. This is thus what we would have chosen.

Similarly, Circuit B is most efficiently implemented utilizing minterms. (That is to say, employing minterm solutions from the K-map results in an already more simplified form as compared to that of the maxterm methodology.) Thus, the selection of minterm implementation for Circuit B is also correct and thus also that which we would have selected. 
