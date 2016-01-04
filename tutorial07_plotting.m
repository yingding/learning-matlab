% this section demonstrate the eamples of plottign data
clear, close all, clc

t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
% Plotting x, y arrays
plot(t, y1);
% Platting second function and replace the first plot
y2 = cos(2*pi*4*t);
plot(t, y2);
% Clear all open windows
close all;

plot(t, y1);
% Plotting a second function without deleting
% the previous graphic output. hold on state.
hold on;
% plot the second function in red color
plot(t, y2, 'r');
xlabel('time')
ylabel('value')
legend('sin', 'cos')
title('my plot')

% Save the plot to disk
% print -dpng 'myPlot.png';
% Alternatively syntax for saving a plot
% print('myPlot.png', '-dpng');

% use "close" to close the current figure
close


% Plotting in different figure windows
figure(1); plot(t, y1);
figure(2); plot(t, y2);

close all;
% Subplotting
% Divides plot to a 1x2 grid, access first element
% This grid has one row and 2 columns
subplot(1,2,1);
plot(t, y1);
% And access to the second element
subplot(1,2,2);
plot(t, y2, 'r');

% Setting the axis range in the plot 
% of the current plot element, which is the 2nd
% subplot. x range from 0.5 to 1 
% and y range from -1 to 1
axis([0.5 1 -1 1])
% clear all graphics in current figure window,
% and the window remains open.
clf

A = magic(5)
% Display the data as an image scaled colors
imagesc(A)
% execute 3 commands
% 1. Display image scaled colors
% 2. add colorbar
% 3. turn colormap gray
imagesc(A), colorbar, colormap gray;

% Subplotting the image scaled colors
subplot(2,1,1);
imagesc(A), colorbar;
subplot(2,1,2);
imagesc(magic(15)), colorbar, colormap default;

% Using comma chaining of function calls
a = 1, b= 2, c=3