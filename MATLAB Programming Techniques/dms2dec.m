% Convert degrees/minutes/seconds matrix to decimal degrees
% dms is a matrix where each row contains an angle.
% ddec is a vector of decimal degrees.
% Example
% dms = [0 30 30;30 15 0;45 0 20]
% 
% ddec = dms2dec(dms)
% ddec = dms2dec(dms(:,1))
% ddec = dms2dec(dms(:,[1 2]))
function ddec = dms2dec(dms)

% TASK 1:
% ENTER TASK 1 CODE HERE:
if size(dms,2) < 3
    dms(:,3) = 0;
end


% Convert degrees/minutes/seconds to decimal degrees
ddec = dms(:,1) + dms(:,2)/60 + dms(:,3)/3600;
end
