%% Henon Map Function
% m - iterates
% l - iterates to suppress
% a - parameter
% b - paramter
% x_0 - initial condition of x_n
% y_0 - initial condition of y_n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [output_x, output_y] = Henon(m,l,a,b,x_0,y_0)
output_x = [];
output_y = [];
x = x_0;
y = y_0;
for i = 0:m
    x_new = y + 1 - a * x^2;
    y = b*x;
    x = x_new; % needed x_n for y_n+1 but need x_n+1 for next iteration 
    output_x = [output_x,x];
    output_y = [output_y,y];
end
output_x = output_x(l+1:m);
output_y = output_y(l+1:m);

end