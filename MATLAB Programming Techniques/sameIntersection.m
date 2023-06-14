%% Check if sets have the same intersection
% A, B, C are input arrays
% isSame is true if A and C have the same intersection as B and C
%% Example
% A = [1 2 3];
% B = [2 3 4]
% C = [2 3];

% isSame = sameIntersection(A,B,C)
function isSame = sameIntersection(A,B,C)

% Find intersection of A-C and B-C
acIntersect = intersect(A,C);
bcIntersect = intersect(B,C);

% Compare the variables acIntersect and bcIntersect.
%  If they are equal, set isSame to true.
%  If they are not equal, set isSame to false.

isSame = isequal(acIntersect,bcIntersect);

end
