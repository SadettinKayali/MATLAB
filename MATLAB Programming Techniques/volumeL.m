%% Calculate volumetric conversion factors
% txt is a character vector or string array of the form 'amt unit'.
% v is an array of volumes in liters.
% Examples
v = volumeL('1 gallon')
v = volumeL(["1 gallon" "1 pint"])
function v = volumeL(txt)

% TASK 1:
% ENTER TASK 1 CODE HERE:
txt = convertCharsToStrings(txt);



% Split into amount and unit
% Convert amount to numeric
amt = double(extractBefore(txt," "));
unit = extractAfter(txt," ");

% Create a vector of conversion factors
conv = ones(size(amt));
conv(startsWith(unit,"bush")) = 35.2391;
conv(startsWith(unit,"fluid")) = 0.0284131;
conv(startsWith(unit,"gall")) = 4.54609;
conv(startsWith(unit,"pint")) = 0.568261;

% Perform unit conversions
v = amt.*conv;
end
