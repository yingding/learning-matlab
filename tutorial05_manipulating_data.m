% This section demonstrate how to manipulate variable and data
clear, clc;
A = [1 2; 3 4; 5 6];
% Fetching one element of matrix
% Get row 3 column 2 element of A
A(3,2)
% Fetching all elements from the 2nd row
% ":" means every elements along that row/column
A(2,:)

% Example for fetching a column as a vector from A
% Fetching the second column of matrix A as a vector
A(:,2)

% Fetching multiply columns and rows
% Using a row vector/array instead of index to
% fetch a set of rows
% A([1 3],:) gives back the 1st and 3rd row elements of A
A([1 3],:)

% Assigning partial elements of a matrix
A(:,2) = [10; 11; 12]

% Extending matrix with new column
% The following command appends another column vector to the right 
A = [A, [100; 101; 102]]

% Putting all elements of a matrix into a single vector
A(:)

%Concatenating matrixes
A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
% C is the result of appending rows of B 
% to the right of rows of A
% C is a 3 x 6 matrix
C = [A B]

% C is the result of appending the column of B 
% under the column of A
% C is a 6 x 3 matrix
C = [A; B]

% Equal convensions
% [A B] is the same as [A, B]
% They all results a 3x6 matrix
[A B] 
[A,B]



 