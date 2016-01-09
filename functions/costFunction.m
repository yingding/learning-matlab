function [ jVal, gradient ] = costFunction( theta )
%DEFINITIONCOSTFUNCTION returns jVal, gradient, input theta.
% jVal is the definition of cost function
% gradient is the definition for partial derivative term for jVal  

jVal = (theta(1)-5)^2 + (theta(2)-5)^2;

gradient = zeros(2, 1);
gradient(1) = 2*(theta(1)-5);
gradient(2) = 2*(theta(2)-5);
end

