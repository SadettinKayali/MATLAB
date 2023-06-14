% Run Your Function
% Calling with 3-column matrix
% This works correctly.
dmsMatrix = [0 30 30;30 15 0;45 0 20]
d = dms2dec(dmsMatrix)

% Calling with 1 or 2-column matrix
% This currently errors, but you will fix it.
deg = dmsMatrix(:,1)
dm = dmsMatrix(:,[1 2])

d = dms2dec(deg)
d = dms2dec(dm)

% Further Practice


