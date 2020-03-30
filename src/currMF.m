function data = currMF(data, MFactor)
% when current is larger or smaller than normal 
% use this fucntion

data(:,2) = data(:,2)*MFactor;
data(:,4) = data(:,4)*MFactor;
data(:,6) = data(:,6)*MFactor;
data(:,8) = data(:,8)*MFactor;
data(:,10) = data(:,10)*MFactor;
data(:,12) = data(:,12)*MFactor;
data(:,14) = data(:,14)*MFactor;
