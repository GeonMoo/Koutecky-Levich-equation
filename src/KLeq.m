function n = KLeq(arg, slope)
% Please type in "rad" or "rpm"
% n = KLeq(arg, slope)
% Example: 
% KLeq("rad", 2.3)
% rad mode:
% ans =  
%     3.9482

%% Constants 
B = 1./slope;
F = 96485; 
D = 1.9e-5; % for 0.1 KOH soluiton
v = 0.01;
Cb = 1.2e-3; 

%% Rotating speed unit difference (rad s-1 or rpm)
if(arg == "rad")
    n = B./0.62./F./D^(2/3)./v.^(-1/6)./Cb;
elseif(arg == "rpm")
    n = B./0.2./F./D^(2/3)./v^(-1/6)./Cb;
else
    disp("Please type in rad or rpm!");
end
