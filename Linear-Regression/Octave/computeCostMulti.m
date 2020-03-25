function J = computeCostMulti(X, y, theta)

m = length(y);
J = 0;
J1 = (hq-y).^2;
J = sum(J1)/(2*m);

end
