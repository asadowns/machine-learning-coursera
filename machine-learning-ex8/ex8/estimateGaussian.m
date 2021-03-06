function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

mu = mean(X);

sigma2 = var(X, 1);

% =============================================================


end

%!test
%! X = sin(magic(4));
%! X = X(:,1:3);
%! [mu sigma2] = estimateGaussian(X);
%! expectedMu = [-0.3978779  0.3892253  -0.0080072];
%! expectedSigma2 = [0.27795    0.65844   0.20414];
%! assert(mu, expectedMu, 0.0001);  
%! assert(sigma2, expectedSigma2, 0.0001);