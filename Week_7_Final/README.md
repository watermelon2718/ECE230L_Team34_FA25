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

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The Half Adder from the last lab, whilst it operates similarly to the Half Subtractor for determining the Y (sum and difference, respectively) output, operates differently with regard to the second ouput. The Half Adder has a carry output, which represents the arithmetic carry from the addition operation (A & B). On the other hand, the Half Subtractor in this lab has a borrow output, which represents the borrow for the subtraction operation involved. Here, as B is subtracted from A, a borrow is required in the case that B = 1 and A = 0, leading to the borrow output being B & ~A. So, the carry and borrow outputs from the Half Adder and the Half Subtractor differ in the negation of A; this corresponds to their respective differing functions in performing arithmetic.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?




### 3 - What is the edge case and problem with Two’s Complement number representation?
From what I gather, the edge case/problem concerning Two's complement number representation is its asymmetry. Namely, whilst, for example, for a 4 bit number, it is possible to represent a value of -8, it is only possible to represent a positive value of +7. Thus, there always exists a Two's complement value such that it is impossible to reach said value by complementing the positive number, as said number will not fit in the representation.
