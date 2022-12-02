%% Author: Jack Lambert
% HW 2
% Purpose: to iterate through different a values to produce bifurcation
% plots
%% House Keeping 
close all;
clear all;
%% Question 3
% Constants
b = 0.3;

a_min = 0;
a_max = 1.4;
interval = 0.01;
a_vec = [a_min:interval:a_max]; % different a values 


x0 = 0.2; % Initial Condition
y0 = 0.2;
m = 1000; % Number of iterates or time steps
l = 900;


% Plotting 
figure()
hold on
for i = 1:length(a_vec)
    [output_x{i}, output_y{i}] = Henon(m,l,a_vec(i),b,x0,y0);
    plot(a_vec(i), output_y{i}, '.k')
    hold on
    title('Bifurcation Plot')
    xlabel('a');
    ylabel('Y_n');
    
end
hold off


% % Checking that the Henon Map is correct
% m = 10000;
% a = 1.4;
% l = 0;
% figure()
% [output_x, output_y] = Henon(m,l,a,b,x0,y0);
% plot(output_x, output_y,'.')
% hold on
% title('Bifurcation Plot')
% xlabel('x');
% ylabel('y');