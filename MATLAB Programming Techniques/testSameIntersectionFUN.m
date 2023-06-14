%% Create a test script to test sameIntersectionBAD
%% Test 1
x = [1 2 3 4 5];
y = [1 3 5];
z = [1 3];
assert(isequal(sameIntersectionBAD(x,y,z),true))

%% Test 2
x = [1 2 3];
y = [1 3 5];
z = [1 2 3];
assert(isequal(sameIntersectionBAD(x,y,z),false))

%% Test 3
x = [1 2 3];
y = [1 3 5];
z = [1 5 3];
assert(isequal(sameIntersectionBAD(x,y,z),false))
