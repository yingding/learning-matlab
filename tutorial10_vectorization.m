% In this tutorial section, the solution for
% unvectorized implementation and vectorized
% implementation is compared.
clear, close all, clc;

% Unvectorized implementation for multivariable
% hypothesis function h(x) = sum(theta_j * x_j),
% with 0<=j<=n
prediction = 0.0;
theta = [0 1 2];
x = [1 2 3];
n = 2; % dimension of the thetas
for j=1:n+1,
    prediction = prediction + theta(j) * x(j);
end;
disp(['Prediction by loop is: ',num2str(prediction)]);

% Vectorized implementation of the aforementioned
% multivariable hypothesis function h(x)
prediction = x * (theta.');
disp(['Prediction vectorized is: ',num2str(prediction)]);