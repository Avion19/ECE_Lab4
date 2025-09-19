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

## Team Name and Number
Team 25 (Avien Ramirez & Will Reisig)

## Lab Summary
In this lab, we learned how to use a KMap efficiently when interpreting a truth table. Using a KMap, we were able to efficiently group the outputs that resulted in 1's and 0's to create min and maxterm equations, to then demonstrate that they worked on a Basys3 board using Verilog.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
A KMap is essentially a donut with its edges wrapping around. So we can visualize the top touching the bottom and the right touching the left. With this visualization, it allows for more optimal grouping when creating min and maxterm equations.

### Why are the names Sum of Products and Products of Sums?
Sum of products comes from looking at the rows in the truth table that have an output of 1(true). Looking at the rows individually, we create a product for each row by multiplying(AND) the inputs to ensure they evaluate to 1. If an input variable in the row in the truth table was 1, it stays as is, else the variables complement(not) will be included in the product of the row. This is done to represent the specific input for the output to be true. After creating products for each row, we add(OR) all of them together.

The opposite is then done for products of sums. We look for the rows in the table that have an output of 0, create a sum for each of those rows, include the compliment of the inputs that were 1 in the row in the truth table, and multiply the sums of the rows. The addition of inputs in the rows ensures that all inputs are 0 so the output is 0.  


### Open the test.v file – how are we able to check that the signals match using XOR?
We use XOR to ensure that the output for the minterm LED and naive LED match. If they don't match, the xor does not evaluate to 0, and the code in test.v returns that the minterm does not match the naive file. This is due to the logic of xor, which only returns a 1 if both outputs are different, and a 0 if they are the same. This is also applied to the maxterm. 
