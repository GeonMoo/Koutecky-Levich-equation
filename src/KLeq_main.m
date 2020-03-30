function KLeq_main(file)
% Example: KLeq_main('n-carbon.mat')
% 
% Default data has 14 columes
% correspding to LSV curves obtained at
% [225, 400, 625, 900, 1225, 1600, 2025] rpm 

%% Data importing
path = '..\data\'; % the path you store your ".mat" data
filepath = strcat(path, file);
load(filepath); % the data has 14 columes

%% Presettings 
MFactor = 1; % current modified factor (optional)
chosen_v = linspace(0.35, 0.7, 8); % potential range
rpmSpeed = [225, 400, 625, 900, 1225, 1600, 2025]; % rotating speed range

%% Data pretreatment
% Initialization 
slope = zeros(length(chosen_v),1);
intercept = zeros(length(chosen_v),1);
certainty = zeros(length(chosen_v),1);
plotStorage = [];

data = currMF(data, MFactor);

%% LSV curves plot 
figure(1)
plotLSV(data)
title('Linear sweep voltammetry curves')
xlabel("E (V vs. RHE)"), ylabel("J (mA cm^{-2}")

%% K-L plots generation 
figure(2)
title('K-L plot')
xlabel('\omega^{-1/2} (rad^{-1/2})')
ylabel('J^{-1} (mA^{-1} cm^{2})')
grid on
hold on

% Main loop for K-L plots
for index = 1:length(chosen_v)
    current = returnCurr7(data, chosen_v(index)); % in total 7 LSV curves
    x = 1./sqrt((rpmSpeed)*2*pi/60);
    y = -1./current; y = y';
    [certainty,slope(index),intercept(index)] = regression(x,y);
    % Fitting plots 
    plot(x,y, '^', 'LineWidth', 2, 'DisplayName',strcat(num2str(chosen_v(index)),'V'))
    % Results storage for eletron transfer number calculation 
    plotStorage = [plotStorage x' y'];
end
hold off

legend('show')

%% Results for electron transfer number
figure(3)
plot(chosen_v, KLeq("rad", slope),'.-r','MarkerSize',15)
title('Variation of electron transfer number')
xlabel("E (V vs. RHE)"), ylabel("Electron transfer number")
startp = chosen_v(1);
endp = chosen_v(end);
grid on

disp("Done!")