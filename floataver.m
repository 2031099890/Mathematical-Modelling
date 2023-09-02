%% 时间序列-移动平均法

function [floataver3, floataver5] = floataver(Y)
% Y：原时间序列
% floataver3，floataver5：三点/五点移动平均值
n = length(Y);
% 计算三点移动平均值
floataver3(1) = 0;
floataver3(2) = 0;
floataver3(3) = 0;

for i = 4:n
    floataver3(i) = (Y(i-1)+Y(i-2)+Y(i-3))/3;
end

% 计算五点移动平均值
floataver5(1) = 0;
floataver5(2) = 0;
floataver5(3) = 0;
floataver5(4) = 0;
floataver5(5) = 0;

for i = 6:n
    floataver5(i) = (Y(i-1)+Y(i-2)+Y(i-3)+Y(i-4)+Y(i-5))/5;
end
end
