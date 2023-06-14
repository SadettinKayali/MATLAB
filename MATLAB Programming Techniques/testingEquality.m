%% Testing Equality
names={'inclination','RAAN','eccentricity','argPerigee','anomaly','motion'}
pA=[51.6164,78.1961,0.0004,72.7758,29.4412,15.5017]
pB=[51.6164,78.1961,0.0004,72.7758,29.4412,15.5017]
%% Task 1
check = isequal(pA,pB)
%% Task 2
test = pA == pB