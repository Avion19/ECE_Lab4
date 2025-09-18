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

In this lab we learned how to properly create a K table, properly group 1's and 0's, and create optimized min and maxterm equations.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
A KMap is essentially a donut with its edges wrapping around. So we can visualize the top touching the bottom and the right touching the left. All that is left is appropriate grouping and overlapping to 
create optimized min and maxterm equations.

### Why are the names Sum of Products and Products of Sums?
We look to group either 1's or 0's in the K-table, depending on whether we want to create a SOP or POS. For the sums of products specifically, we group terms with and operatives (A.B.~C for example) and connect them together by using an or operative between each grouping. The or operative (+) is where the sum comes from. For products of sums, it's flipped. We group 0's together in the K-table. These terms form sums, which are multiplied. 

### Open the test.v file – how are we able to check that the signals match using XOR?
We use XOR to ensure that the output for the minterm LED and naive LED match. If they don't match, and do not return a 0, the code in test.v returns that the minterm does not match the naive file. This is due to the logic of xor, which only returns a 1 if both outputs are different, and a 0 if they are the same. This is also applied to the maxterm. 
