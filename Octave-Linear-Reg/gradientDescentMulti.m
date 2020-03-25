function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    hq = X*theta;
    dJ1 = (hq-y).*X;
    dJ2 = sum(dJ1)'./m;
    theta = theta - alpha.*dJ2;
    
    J_history(iter) = computeCostMulti(X, y, theta);
    
end
end
