%% 遗传算法10
% 主程序：genmain.m

function genmain()

tic;
clear
clf
popsize = 20;  % 群体大小
chromlength = 10;  % 个体长度
pc = 0.6;  % 交叉概率
pm = 0.001;  % 变异概率
pop = initpop(popsize, chromlength);  % 随机产生初始群体

for i = 1:20
    [objvalue] = calobjvalue(pop);  % 计算目标函数
    fitvalue = calfitvalue(objvalue);  % 计算群体中每个个体的适应度
    [newpop] = selection(pop, fitvalue);  % 复制
    [newpop] = crossover(pop, pc);  % 交叉
    [newpop] = mutation(pop, pc);  % 变异
    [bestindividual, bestfit] = best(pop, fitvalue);  % 求出群体中适应值最大的个体及其适应值
    y(i) = max(bestfit);
    n(i) = i;
    pop5 = bestindividual;
    x(i) = decodechrom(pop5, 1, chromlength)*10/1023;
    pop = newpop;
end
