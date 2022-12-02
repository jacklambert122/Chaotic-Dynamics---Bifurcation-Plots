%% Logistic Map Function
% m - iterates
% l - points to supress
% R - growth rate
% x_0 -  initial condition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [output] = logistic(m,l,R,x_0)
output = [];
x = x_0;
for i = [0:m]
    x = R*x*(1-x);
    output = [output,x];
end
output = output(l+1:m);

end