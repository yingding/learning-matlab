% this tutorial demonstrates examples relating
% to Normal Equation and Noninvertibility
clear, clc, close all;

% Normal equation X * theta = y
% theta = pinv(X.'*X)* X.' * y
% what if (X.' * X) is non-invertible? (singular/degenerate)
% Note: the pseudo inverse function compute the
% right value for theta in normal equation even if
% the (X.' * X) is non-invertible.

% If (X.' * X) is signular, this may happen when
% - Redundant features (linear dependent)
%   e.g. x1 = size in feet^2,
%        x2 = size in m^2.
%   thus, delete one of the redundant feature.
% - Too many features (e.g. m <= n)
%   the dimension of features is greater then
%   the number of training examples
%   thus, delete some features, or use regularization (technique)
% In layman's terms, an equation system can not
% be solved, if there are more unknown variables 
% than the number of non linear dependent equations.


