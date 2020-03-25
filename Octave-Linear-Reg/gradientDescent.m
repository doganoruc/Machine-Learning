function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% Initialize some useful values
m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters;
    J = computeCost(X,y,theta);
    disp(J);
    hq = X*theta;
    dJ_f = (hq-y).*X;
    dJ= sum(dJ_f)'./m;
    theta = theta - alpha.*(dJ);
 
    J_history(iter) = computeCost(X, y, theta);

end

end
