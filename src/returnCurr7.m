function curr = returnCurr7(data, u)
% curr = returnCurr(data, u)
% "data" is the input data
% "u" is the given potential which we use to get current
% Example:
% curr = returnCurr(data_Pt, 0.5)

curr = zeros(7,1);

pt_225_v = data(:,1);
pt_225_i = data(:,2);
pt_400_v = data(:,3);
pt_400_i = data(:,4);
pt_625_v = data(:,5);
pt_625_i = data(:,6);
pt_900_v = data(:,7);
pt_900_i = data(:,8);
pt_1225_v = data(:,9);
pt_1225_i = data(:,10);
pt_1600_v = data(:,11);
pt_1600_i = data(:,12);
pt_2025_v = data(:,13);
pt_2025_i = data(:,14);


tp = find(pt_225_v>u); curr(1) = pt_225_i(tp(end));
tp = find(pt_400_v>u); curr(2) = pt_400_i(tp(end));
tp = find(pt_625_v>u); curr(3) = pt_625_i(tp(end));
tp = find(pt_900_v>u); curr(4) = pt_900_i(tp(end));
tp = find(pt_1225_v>u); curr(5) = pt_1225_i(tp(end));
tp = find(pt_1600_v>u); curr(6) = pt_1600_i(tp(end));
tp = find(pt_2025_v>u); curr(7) = pt_2025_i(tp(end));