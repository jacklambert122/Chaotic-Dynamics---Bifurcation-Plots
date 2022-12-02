%% Author: Jack Lambert
% HW 1
% Purpose: to iterate through different R values for three different plots
% to see the state space trends 
%% House Keeping 
close all;
clear all;
%% Question 3
interval = 0.1;
rvec = [2.8:interval:4];
x0 = 0.2; % Initial Condition
n = 200; % Number of iterates or time steps


% Part a.)     X_n vs. n
 m = 0;
figure()
hold on
for i = 1:length(rvec)
    [xn{i}] = logistic(n,m,rvec(i),x0); % Logistics Map (0,1) -> (0,1)
    plot([0:1:n],xn{i},'*');
    hold on
    title(' X_n vs. n')
    xlabel('n');
    ylabel('X_n');
end
hold off
legend('R = 2','R = 2.5', 'R = 3','R = 3.5','R = 4')


% Part b.)     X_(n+1) vs. X_n
m = 1;
figure
hold on
for i = 1:length(rvec)
    [x_n1{i}] = logistic(n,m,rvec(i),x0);
    plot(xn{i},x_n1{i},'*');
    hold on
    title('X_{n+1} vs. X_n') 
    xlabel('X_n');
    ylabel('X_{n+1}');
end
hold off
legend('R = 2','R = 2.5', 'R = 3','R = 3.5','R = 4')

% Part c.)     X_(n+2) vs. n
m = 2;
figure()
hold on
for i = 1:length(rvec)
    [x_n2{i}] = logistic(n,m,rvec(i),x0); 
    plot(xn{i},x_n2{i},'*');
    title('X_{n+2} vs. X_n') 
    xlabel('X_n');
    ylabel('X_{n+2}');
end
hold off
legend('R = 2','R = 2.5', 'R = 3','R = 3.5','R = 4')

