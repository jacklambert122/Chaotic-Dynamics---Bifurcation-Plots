%% Author: Jack Lambert
% HW 2
% Purpose: to iterate through different R values for three different plots
% to see the state space trends 
%% House Keeping 
close all;
clear all;
%% Question 1
% Constants
R_min = 2.8;
R_max = 4;
interval = 0.01;
rvec = [R_min:interval:R_max]; % different R values 
x0 = 0.2; % Initial Condition
m = 1000; % Number of iterates or time steps
l = 500;


% Plotting 
figure()
hold on
for i = 1:length(rvec)
    [xn{i}] = logistic(m,l,rvec(i),x0); % Logistics Map (0,1) -> (0,1)
    plot(rvec(i),xn{i},'.k');
    hold on
    title('Bifurcation Plot')
    xlabel('R');
    ylabel('X_n');
    
end
axis([2.8 4 0 1]);
hold off
