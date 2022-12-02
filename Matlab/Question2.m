%% House Keeping 
close all;
clear all;
%% Bifurcation point 1
% Constants
R_min = 3.84; % [2.99, 3.449,
R_max = 3.8571; % [3.01, 3.450, 
interval = 0.0001;
rvec = [R_min:interval:R_max]; % different R values 
x0 = 0.5; % Initial Condition
m = 10000; % Number of iterates or time steps
l = 9900;


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
axis([3.84 3.8571 0.4 0.6 ])
hold off
