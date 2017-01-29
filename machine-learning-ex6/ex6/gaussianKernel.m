function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%
%fi=similarity(x,l(i))=exp(−∑nj=1(xj−l(i)j)22σ2)

sim = exp(
    -(sum((x1 - x2).^2))
    /
    (2 * (sigma^2)));

% =============================================================
    
end

%!test
%! expected1 = 0.45943;
%! expected2 = 1;
%! expected3 = 0;
%! actual1 = gaussianKernel([1 2 3], [2 4 6], 3);
%! actual2 = gaussianKernel([1 1], [1 1], 1);
%! actual3 = gaussianKernel([1 1], [100 100], 1);
%! assert(actual1, expected1, .0001);
%! assert(actual2, expected2, .0001);
%! assert(actual3, expected3, .0001);
