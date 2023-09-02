%% 遗传算法03
% 将二进制编码转化为十进制数：decodechrom.m
% 函数的功能数将染色体（二进制编码）转换为十进制，参数spoint表示待解码的二进制串的起始位置
% 对于多个变量而言，如有两个变量，采用20位表示，每个变量10位，则从第一个变量从1开始，另一个变量从11开始
% 参数length表示所截取的长度

function pop2 = decodechrom(pop, spoint, length)

pop1 = pop(:, spoint:spoint+length-1);
pop2 = decodebinary(pop1);
