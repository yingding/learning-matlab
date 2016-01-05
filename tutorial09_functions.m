% This tutorial section shows how to define and call 
% function in matlab and octave

% the function_name.m file and the function_name in the definition
% should be the same.

% change to the function path
cd 'functions';
% Call the squareThisNumber function
squareThisNumber(5)
% change back to the path folder of this tutorial
cd '..';

% Alternatively, edit a relative path 
% to matlab and octave search path
currentPath = pwd
% use [str1, str2] to concatenate a string
% or use strcat(str1, str2) 
% the addpath effects only the current session
% savepath is needed to make permanent changes.
addpath([currentPath,'/functions'])
squareThisNumber(10)
% show search path in matlab
% "path" displays the MATLAB search path,
% which is stored in pathdef.m.
% By default, pathdef.m is in matlabroot/toolbox/local.
path

% Example of a function with multiply returned values.
[a, b] = squareAndCubeThisNumber(5)

% Example of a gradient descent design matrix
X = [1 1; 1 2; 1 3];
y = [1; 2; 3];
theta = [0; 1];
% use F1 to show the help for user defined functions
j = costFunctionJ(X, y, theta) % returns cost equals zero
theta = [0; 0];
j = costFunctionJ(X, y, theta) % returns (1^2 + 2^2 + 3^2) / 2*(m=3) = 2.33

% Plotting the training sample data
h = plot(X(:,2),y, 'rx');
xlabel('x');
ylabel('y');
axis([0 4 0 4]);
set(h, 'markers',20) % Default is 6
title('Define a function to compute the cost function J(theta)');

% close figure
close