# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###Summary
In this lab, we expanded on the idea of binary addition by building circuits that allow us perform subtraction. First, we created a half-subtractor based on the truth table provided. The sum was calculated using the XOR gate, while the borrow was calculated with the operation B & ~A. 

Next, we used the full adder from last lab to perform addition with two four-bit binary numbers in one's complement form. We performed addition between corresponding bits of the two numbers, then used the end-around carry as the carry-in for another round of addition.

Finally, we created a two's complement converter. This converter inverts all bits of the number and then adds one, rendering the number in two's complement form.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

When we finish adding two numbers in one's complement form, if the final operation has a carry, that bit must be added to the least significant bit (LSB). This is called the end-around carry. The presence of the end-around carry makes one's complement hard to use and implement because it requires that two addition operations are performed. 

### 3 - What is the edge case and problem with Two’s Complement number representation?

