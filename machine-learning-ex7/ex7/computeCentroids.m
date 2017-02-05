function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for i = 1:K
    centroids(i, :) = mean(X(idx == i, :));
end

% =============================================================


end

%!test
%! X = reshape([1:24],8,3);
%! actual = computeCentroids(X, [1 1 3 3 4 4 2 2]', 4);
%! expected = [1.5000    9.5000   17.5000;7.5000   15.5000   23.5000;3.5000   11.5000   19.5000;5.5000   13.5000   21.5000];
%! assert(actual, expected, 0.1);