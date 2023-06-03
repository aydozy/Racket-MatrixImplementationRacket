# Matrix-Implementation-Racket

A digital image is represented as a two-dimension matrix. Machine learning algorithms take an image as an input and apply different operations on it to learn useful information. In this assignment, you are going to write a Scheme program to implement different matrix operations. 

In Scheme we can represent a matrix using a list of list. 

For example, a 3×3 matrix M can be defined as follows: 

      (define M '( (1 2 3)    
                   (3 3 4)    
                   (3 2 1) ) ) 

You will implement simple matrix operations row-max, row-avg, norm-inf.  
- The operation row-max computes the max of each row and result will a list (3 4 3). 
- Similarly, the operation row-avg computes the average of each row and result will for a list (2 3.33 3). 
-  Norm-inf computes the infinite norm of a square n×n matrix, which is the maximum absolute row sum defined as follows: 
∥𝑀∥∞=max1≤𝑖≤𝑛⁡(∑|𝑀𝑖𝑗|𝑛 𝑗=1). 
For the matrix M, norm-inf will results 10.  
