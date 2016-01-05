function J = costFunctionJ(X, y, theta )
%COSTFUNCTIONJ X, y, theta
% X is the "design matrix" containing our training examples
% y is the class labels

m = size(X, 1); % number of training examples in the first dimension/rows

predictions = X*theta; % predictions of hypothesis on all m examples

sqrErrors = (predictions-y).^2;  %squared errors

% since the sqrErrors is like y a column vector,
% the sum function calculates the sum correctly.
J = 1/(2*m) * sum(sqrErrors);

end

