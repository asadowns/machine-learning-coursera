function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

UReduce = U(:,1:K);
Z = X * UReduce;

% =============================================================

end

%!test
%! X = sin(reshape([0:11],4,3));
%! actual = projectData(X, magic(3), 2);
%! expected = [1.68703   5.12021; 5.50347  -0.24408; 4.26005  -5.38397;-0.90004  -5.57386];
%! assert(actual, expected, 0.01);