function plotLSV(data)
[row, col] = size(data);
if col == 14
    y_col = 2:2:14;
    x_col = 1:2:13;
    plot(data(:,x_col),data(:,y_col))
    legend('225','400','625','900','1225','1600','2025')
elseif col == 10
    y_col = 2:2:10;
    x_col = 1:2:9;
    plot(data(:,x_col),data(:,y_col))
    legend('400','625','900','1225','1600')
end

