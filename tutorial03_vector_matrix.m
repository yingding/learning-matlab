% This section demonstrate operation with vector and matrix
% Assigning rows to matrix A with help of semicolon;
A = [1 2; 3 4; 5 6]
% Alternative row assignment to matrix A
A = [1 2;
    3 4;
    5 6]

% Vector
% creating row vector starting from 1 and ending by 2
% each step increasing by 0.1, creates a 11 dimensional row vector
% which is a 1 by 11 matrix 
v = 1:0.1:2
% Creating row vector from 1 to 6 (default difference is 1)
v = 1:6

% Generating a 2x3 one matrix
w = ones(2,3)
% Generating a 1x3 zero matrix / 3 dimensional zero row vector
w = zeros(1,3)
% Generating a 1x3 random valued matrix
% All elements of the random matrix is generated
% uniformly at random between zero and one
w = rand(1,3)

% Generating matrix from gaussian normal distribution
% with mean zero and standard deviation equals one
w = randn(1, 3)
% Generating matrix with complex form
w = -6 + sqrt(10)*(randn(1,1000));
% Printing histogramm of w, which is gaussian normal distributed
% A bell shaped histogramm should be shown 
hist(w)
% Printing histogramm with more bins/buckets
% The mean of the w is arround -6 
% and standard deviation should be sqrt(10) = 3.1
hist(w, 50)
% Generating identity matrix
eye(4)
% showing help for commands
help eye
% Alternatively help function can also be shown be
% - MARK command
% - press F1 
