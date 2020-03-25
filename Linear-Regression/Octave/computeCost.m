function J = computeCost(X, y, theta)

hq = X*theta;
J_f = (hq-y).^2;
J_s = sum(J_f);
J = J_s/(2*m);

end
