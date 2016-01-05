% This command clear the variables in the workspace
% it is something like a clear the cache objects of RAM
clear
% this command clear the output in the command window
clc

% M1 is a 2 by 3 (2x3) matrix
M1 = [8 6 9; 10 1 10]
% M2 is a 2x3 matrix with row 3 10 2 and row 6 1 -1
M2 = [3 10 2; 6 1 -1]

% M1 + M2 is a matrix additon, which conduct sum element-wise
M1 + M2

% M3 is a square and non-singular matrix, wich has a inverse matrix.
M3 = [1 2; 3 4]

% matrix multiplication, the column number of the first matrix
% and the row number of the second matrix should be the some
% In this case, M3 is square matrix and the expression suffices
% the condiction for matrix multiplication
M4 = M3*M3 

% This command conducts element-wise matrix multiplication
% As the result, all the value of elements of M3 is squared
M5 = M3.*M3

% This section pseudo inverse of a matrix is conducted.
% Pseudo inverse exists only if the observed matrix 
% is a non-singular and square matrix
nonSingularSqureM = [7 -0.5; -0.5 0.5]
% This command pinv(M) conduct the pseudo inverse of a matrix
inverseM = pinv(nonSingularSqureM)
% To valid the result, the matrix multiplicaton 
% of the obeserved matrix and its inverse
% should return the identity matrix
Identity = inverseM * nonSingularSqureM

% Transpose of Matrix
% U is a vector also a 3x1 matrix
% Use ; to suppress the intermediat result in command window
% so the vector U as intermediat result is not shown in command window
U = [3; -5; 4];
% Use transpose(M) command to conduct the transpose matrix of input
transposeU = transpose(U)
% Alternatively .' can also be used to conduct transpose of input matrix.
V = [1 2; 3 4; 5 6];
% Matrix multiplication for observed matrix and it's transpose,
% which conduct a invertable non-singular square matrix
InvertableM = V.' * V
ValidIndentityM = pinv(InvertableM) * InvertableM