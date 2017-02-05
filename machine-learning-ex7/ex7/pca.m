function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%

Sigma = (1/m) * X' * X;

[U, S, V] = svd(Sigma);


% =========================================================================

end

%!test
%! [U, S] = pca(sin([0 1; 2 3; 4 5]));
%! UExpected = [-0.65435 -0.75619; -0.75619 0.65435;];
%! SExpected =  [0.79551  0; 0 0.22019];
%! assert(UExpected, U, 0.01);
%! assert(SExpected, S, 0.01);