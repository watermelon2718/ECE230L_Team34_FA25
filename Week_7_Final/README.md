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
The Half Adder from the last lab, whilst it operates similarly to the Half Subtractor for determining the Y (sum and difference, respectively) output, operates differently with regard to the second ouput. The Half Adder has a carry output, which represents the arithmetic carry from the addition operation (A & B). On the other hand, the Half Subtractor in this lab has a borrow output, which represents the borrow for the subtraction operation involved. Here, as B is subtracted from A, a borrow is required in the case that B = 1 and A = 0, leading to the borrow output being B & ~A. So, the carry and borrow outputs from the Half Adder and the Half Subtractor differ in the negation of A; this corresponds to their respective differing functions in performing arithmetic.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

When we finish adding two numbers in one's complement form, if the final operation has a carry, that bit must be added to the least significant bit (LSB). This is called the end-around carry. The presence of the end-around carry makes one's complement hard to use and implement because it requires that two addition operations are performed. 

### 3 - What is the edge case and problem with Two’s Complement number representation?



### 3 - What is the edge case and problem with Two’s Complement number representation?
From what I gather, the edge case/problem concerning Two's complement number representation is its asymmetry. Namely, whilst, for example, for a 4 bit number, it is possible to represent a value of -8, it is only possible to represent a positive value of +7. Thus, there always exists a Two's complement value such that it is impossible to reach said value by complementing the positive number, as said number will not fit in the representation.
