%% 遗传算法01
% 初始化：initpop.m

function pop = initpop(popsize, chromlength)

% round对矩阵的每个单元进行圆整
pop = round(rand(popsize, chromlength))  % rand随机产生每个单元为{0,1}行数为popsize，列数为chromlength的矩阵
