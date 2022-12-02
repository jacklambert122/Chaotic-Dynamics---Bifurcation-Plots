%% House Keeping 
close all;
clear all;
%% Question 3
% Constants
b = 0.3;

a_min = 1.051;  % [0.366,0.912,1.025,1.051]
a_max = 1.052;  % [0.367,0.913,1.026,1.052]
interval = 0.0001;
a_vec = [a_min:interval:a_max]; % different a values 


x0 = 0.2; % Initial Condition
y0 = 0.2;
m = 20000; % Number of iterates or time steps
l = 19900;


% Plotting 
figure()
hold on
for i = 1:length(a_vec)
    [output_x{i}, output_y{i}] = Henon(m,l,a_vec(i),b,x0,y0);
    plot(a_vec(i), output_x{i}, '.k')
    hold on
    title('Bifurcation Plot')
    xlabel('a');
    ylabel('X_n');
    
end
hold off