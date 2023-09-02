%% 时间序列-滑动平均

function [moveaver3, moveaver5] = moveaver(Y) 
% moveaver3，moveaver5：三点/五点滑动平均值
% Y：原时间序列
n = length(Y);
% 计算三点滑动平均值
moveaver3(1) = 0;
moveaver3(n) = 0;

for i = 2:(n-1)
    moveaver3(i) = (Y(i-1)+Y(i)+Y(i+1))/3
end

% 计算五点滑动平均值
moveaver5(1) = 0;
moveaver5(2) = 0;
moveaver5(n-1) = 0;
moveaver5(n) = 0;

for i = 3:(n-2)
    moveaver5(i) = (Y(i-2)+Y(i-1)+Y(i)+Y(i+1)+Y(i+2))/5;
end

end