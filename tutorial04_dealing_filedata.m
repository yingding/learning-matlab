% preparing script environment
clear, clc;

A = [1 2; 3 4; 5 6];
% Reading matrix dimensions
% with size(M), which returns a 1x2 matrix
size(A)
% Reading the appropriate dimension of returning size()
% size(A, 1) outputs the row number of the matrix A, 
% which is 3 rows in total.
size(A, 1)

% Reading the longest dimension with length(M)
v = [1 2 3 4];
% While v is a 1 x 4 matrix, the longest dimension is 4
length(v)
% while A is a 3 x 2 matrix, the longest dimension is 3
length(A)
% Usually the length() call should be applied to vectors
% rather than to matrixes, because it would be quite confusing.
length([1;2;3;4;5])

% Examing the current directory and path with "pwd" command
pwd
% use "cd '<absolute path>'" to change the directory and path
% For example to change to the current parent directory
% cd '..'
% pwd

% Display the directory content with "ls -options"
ls
% ls is a linux command
% ls -alF

% Loading file data into matlab and octave
% with command "load path/filename"
load data/dataSample01.txt
% Alternatively "load('path/filename')"
load('data/dataSample02.txt')

% Displaying the variables in current workspace/memory
who
% Display variable with disp() or variable name
disp(dataSample01)
dataSample01

% Displaying the variables in detailed view
% with command "whos"
whos
% double class take 8 Bytes in 64bit system
% for matrix A with 6 double entries, 
% is a memory size of 48 Bytes used.

% clear workspace variable with "clear variable_name"
clear dataSample01
whos

% Assigning a portion of variable to another variable
% assigning the first 5 elements to variable v 
v = dataSample02(1:5)

% Saving variable to disk file

% with "save output_filename variable",
% which save the variable to the given file in current path
% Note: the data content of variable v is saved
% in a compressed binary format onto the disk, saving some space. 
save binaryOutput.mat v;

% clear all old variables in the workspace memory
clear 
% with load output_filename can the variable 
% in this example v be load back to workspace memory
load('savedOutput.mat');

% Saving data to disk with a human readable non-compressed
% format, using save command with -ascii option
save readableOutput.txt v -ascii;





