# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
    In this lab, we used more advanced combinatorial logic to build adders. First, we simulated a situation with a stairway light that is controlled by an XOR gate. Essentially, we want it so that if only one of the switches is on (but not both), the light will be on. 
    
    Next, we built a basic one-bit adder that takes two inputs, A and B, and outputs a carry bit and a sum. The sum is determined by the following equation: Y = A ^ B. The carry is determined by the following equation: Carry = A & B. 

    Finally, we implemented a full adder that takes a carry in as well as A and B inputs, and outputs a carry bit and a sum. We then combined two of these adders to allow us to add two bit numbers. 

## Lab Questions

### 1 - How might you add more than two bits together?

Adding more than two bits would require combination of more adders. Each adder (except for the first, which could utilize an half adder) would need to deal with the carry from the previous computation (requiring a full adder). Implementing a more efficient solution such as a fast adder where some of the computation is done in parallel would allow for faster computation. 

### 2 - What is the importance of the XOR gate in an adder?

In an adder, the XOR gate allows for the computation of the sum bit. According to the principles of binary addition, if A and B are 0, the result is 0. If A or B (but not both, hence the XOR) is 1, the result is 1. If A and B are 1, the sum will be 0 and the carry will be 1 (hence carry is calculated with A & B). 

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

The largest number that a two bit adder can handle (that is, that which can be represented in the two sum bits) is 11 (or 3, in decimal). If you include the carry bit of the second component adder as part of the representation (which is not customary or correct), you could say that the largest number the adder can support is 111 (7 in decimal). However, properly speaking, a two bit adder can only add together two bit numbers, and can only produce a sum of two bits. Summed numbers that exceed this value will cause rollover by the amount of excess (e.g., adding 11 and 1 will give the sum of 00).

