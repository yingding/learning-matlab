% This tutorial demonstrates how to use octave / matlab
% libs to get optimized parameters theta
clear, clc, close all;

% set the options for the optimization problem
options = optimset('GradObj', 'on', 'MaxIter', 100);
% GradObj means the gradient is provided
% MaxIter means the allowed maximum number of iteration

% Providing initial input theta
initialTheta = zeros(2, 1);

% addpath ./functions to the searchpath
addpath([pwd,'/functions']);

% Find minimum of unconstraint multivariable function
% using 'fminunc'
% the function fminunc will use automatically
% advanced algorithms like: 
% - gradient descent 
% - conjugate gradient
% - BFGS
% - L-BFGS
% @costFunction denote the point to the object 'costFunction'
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)