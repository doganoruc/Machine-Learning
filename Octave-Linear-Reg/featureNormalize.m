function [X_norm, mu, sigma] = featureNormalize(X)
  
endfunction
% Declare variables
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
% Calculates mean and std dev for each feature
for i=1:size(X,2);
  mu(1,i) = mean(X_norm(:,i));
  sigma(1,i) = std(X_norm(:,i));
  X_norm(:,i) = (X_norm(:,i)-mu(1,i))/sigma(1,i);
endfor