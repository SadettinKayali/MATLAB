%% Create a test script to test sameIntersection
%% Test 1
x = [1 2 3];
y = [1 3 5];
z = [4 3];
assert(isequal(sameIntersection(x,y,z),true))
%% Test 2
x = [1 2 3];
y = [1 3 5];
z = [4 5];
assert(isequal(sameIntersection(x,y,z),false)) 
