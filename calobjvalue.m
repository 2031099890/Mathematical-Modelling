%% 遗传算法04
% 计算目标函数值：calobjvalue.m
% 函数的功能是实现目标函数的计算采用本demo示例，可根据具体问题具体分析

function [objvalue] = calobjvalue(pop)

temp1 = decodechrom(pop, 1, 10);  % 将pop每行转化成十进制数
x = temp1*10/1023;  % 将二值域中的数转化为变量域的数
objvalue = 10*sin(5*x)+7*cos(4*x);  % 计算目标函数值


