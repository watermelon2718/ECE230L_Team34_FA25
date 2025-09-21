# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we learned about how to use K-maps to obtain a minimized version of a boolean logic equation. First, we implemented a naive equation that contains all the combinations of the original function. Next, we encoded a sum-of-products equation with the minterms, then a product-of-sums equation with the maxterms. Finally, we simulated and then implemented the naive, minterm, and maxterm equations, and verified that the outputs were the same for all of these.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

Groups of 1's or 0's can cross edges in K-maps because technically, the K-map is cylindrical. Also, in crossing the edge, only one variable changes, thus making it a valid grouping. 

### Why are the names Sum of Products and Products of Sums?

The process for encoding an equation with the minterms is called "sum of products" because for each group of minterms, we AND (*) the variables together, then OR (+) all the groups together. 

Encoding an equation with maxterms is called "product of sums" because for each group of maxterms, we OR (+) the variables together, then AND the groups together.

### Open the test.v file – how are we able to check that the signals match using XOR?

The XOR gate (denoted by the ^ operator) only returns true if the input values do not match. 

It is used in test.v as follows:
    if (led[0] ^ led[1] != 0) begin
    if (led[0] ^ led[2] != 0) begin

Thus, the XOR gate is used to check if either the minterm or the maxterm outputs differ from the naive output, and if so, display an error message.

