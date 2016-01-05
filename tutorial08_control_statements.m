% this tutorial section demonstrate the syntax
% for conducting control statements: for, while, if
% in matlab and octave
clear, close all, clc;

% Constructing a vector
v = zeros (10, 1);

% For loop syntax
for i=1:10,
    v(i) = 2^i;
end;
v

% Alternative indices for loop
indices=1:10;
for i=indices,
    disp(i);
end;

% While loop syntax
i = 1;
while i <= 5,
    v(i) = 100;
    i = i+1;
end;
v

% Infinite While loop with break statement
i = 1;
while true,
    v(i) = 999;
    i = i + 1;
    if i == 6,
        % break, breaks out of the while loop
        break;
    end;
end;
v

% if-else syntax
v(1) = 2;
if v(1)== 1,
    disp('The value is one');
elseif v(1) == 2,
    disp('The value is two');
else
    disp('The value is not one or two.');
end;

% exit matlab with exit or quit
% exit
% quit