% This section demonstrates some basic operations in matlab and octave

% Power operation 64
2^6 

% Boolean operations
% One equals two, outputs false
1 == 2
% One not equals two, outpus true
1 ~= 2

% Logical operations
% true and false, returns false
1 && 0 
% true or false, returns true
1 || 0
% XOR one and zero, returns one
xor(1, 0)

% changes the prompt string in command line in octave 
% It is not compatible with matlab
% PS1('>> ');

%Variables
% asign value 3 to variable names a
% semicolon supressing output
a = 3; 
a
% String assignment with single quote '
b = 'hallo world';
b
% Boolean assignemnt with 3 >= 1
c = (3>=1);
% Resulting true
c

% Printing
% Printing variable
a = pi;
% Printing with variable name
a

% Printing with display command: disp(a)
disp(a);

% Printing string with display command: disp(a)
disp(sprintf('2 decimals: %0.2f', a));
disp(sprintf('2 decimals: %0.6f', a));

% setting format to long format (default is short, 
% which is printing a short 4 decimals)
format long
a
format short
a



