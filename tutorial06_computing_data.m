clear, close all, clc
% This section demonstrate the computing of data in matlab / Octabe
A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];

% Element-wise multiplication with .* 
A .* B
% Element-wise squaring 
A .^ 2

% Element-wise reciprocal of v
v = [1; 2; 3];
1 ./ v

% Element-wise natural logrithm
log(v)
% Element-wise logrithm base 10
log10(v)

% Element-wise natural exponential
exp(v)

% Element-wise absolut value of vector
abs(v)
abs([-1; 2; -3])

% Element-wise negation -v = -1 * v
-v
% Increasing values of v by 1
v + ones(length(v), 1)
% Alternatively element-wise increasing by 1
v + 1
% Note .' is transpose and ' is complex conjugate transpose
(A.').'

% Maximum of row vector
a = [1 15 2 0.5]
val = max(a)
% Assign the max value of each column and its row index
[val, ind] = max(a)
[val, ind] = max(A)

% Element-wise comparision
a
a < 3

% Find elements, return the index of all non-zero elements
find(a < 3) 

% Using magic(3) to generate 3 by 3 magic matrix
% With the property that die sum of all elements 
% in all rows and columns and diagnose equals the same value.
% and all elements has also distinct values.
% There is no 2 by 2 magic
A = magic(3)

[r, c] = find(A >= 7)

% Sum function
a
% Sum all the elements of row vector a
sum(a)
% Products of all the elements of row vector a
prod(a)

% Element-wise rounds down with floor
floor(a)
% Element-wise rounds up with ceil
ceil(a)

% Create a nxn matrix uniformly at random
rand(3)
% Get an element-wise maximum matrix 
% out of 2 random matrix
max(rand(3), rand(3))

% Column-wise max
A
% 1 dimension means column-wise 
max(A, [], 1)
% 2 dimension means row-wise
max(A, [], 2)
% max defaul is the 1 dimension column-wise
max(A)
% the largest elements of A 
max(max(A))
% Alternatively turns A to a vector and use the max
max(A(:))

% Sum of Matrix
A = magic(9)
% Sum in the 1-first dimension / per column sum
sum(A, 1)
% Sum in the 2-nd dimesion / per row sum/ row-wise sum
sum(A, 2)
% Sum the diagnose of magic matrix
sum(sum(A.*eye(9)))
% Sum the other diagnoes of magic matrix
sum(sum(flipud(A.*eye(9))))
% flip-up-down flip all the column vector upside down
% [1;2] will be fliped to [2;1]
flipud(eye(9))

% peseudo inverse of matrix with pinv()
A = magic(3)
invA = pinv(A)
A * invA















