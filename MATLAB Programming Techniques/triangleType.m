%% Determine triangle type
% side1, side2, side3 are the lengths of the sides of a triangle
% result is the type of triangle these sides form
function result = triangleType(side1,side2,side3)

%TODO - Replace false with a call to the local functions to perform the checks
isEquilateral = checkEquilateral(side1,side2,side3);
isIsosceles = checkIsosceles(side1,side2,side3);

if isEquilateral
    result = "Equilateral";
elseif isIsosceles
    result = "Isosceles";
else
    result = "Scalene";
end



function result = checkEquilateral(side1,side2,side3)
% Determines if sides form equilateral triangle (all 
% sides are equal)
result = (side1 == side2) & (side2 == side3);



function result = checkIsosceles(side1,side2,side3)
% Determines if sides could form isosceles triangle 
% (at least two sides are equal)
result = (side1 == side2) | (side2 == side3) | (side1 == side3);



