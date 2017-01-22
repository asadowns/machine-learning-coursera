function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 

oneToPMatrix = 1:p;
X_poly = X .^ oneToPMatrix;

% =========================================================================

end

%!test
%! p = polyFeatures([1:3]',4);
%! p_expected = [1    1    1    1; 2    4    8   16; 3    9   27   81];
%! assert(p, p_expected, 1);