%% 主成分分析法
% PCA步骤：
%（1）对原始数据进行标准化处理
%（2）计算样本相关系数矩阵
%（3）计算相关系数矩阵R的特征值和相应的特征向量
%（4）选择重要的主成分，写出主成分表达式
clc
clear all

A = xlread('自己的数据目录','B3:I17');
% 得到的数据矩阵的行数和列数
a = size(A, 1);
b = size(A, 2);

% 数据的标准化处理，得到标准化后的矩阵SA
for i = 1:b
    SA(:, i) = (A(:, i)-mean(A(:, i)))/std(A(:, i));  % std函数用来求向量的标准差
end

CM = corrcoef(SA);  % 计算系数矩阵CM
[V, D] = eig(CM);  % 计算CM的特征值和特征向量

% 将特征值按降序排列到DS中
for j = 1:b
    DS(j, 1) = D(b+1-j, b+1-j);
end

% 计算贡献率
for i = 1:b
    DS(i, 2) = DS(i, 1)/sum(DS(:, 1));  % 单个贡献率
    DS(i, 3) = sum(DS(1:i, 1))/sum(DS(:, 1));  % 累计贡献率
end

T = 0.9;  % 假定主成分的信息保留率

for k = 1:b
    if DS(k, 3) >= T
        com_num = k;
        break;
    end
end

% 提取主成分的特征向量
for j = 1:com_num
    PV(:, j) = V(:, b+1-j);
end

% 计算主成分得分
new_score = SA*PV;

for i = 1:a
    total_score(i,1) = sum(new_score(i, :));
    total_score(i, 2) = i;
end

result_report = [new_score, total_score];  % 将主成分得分和总分放到同一个矩阵中  

% 输出模型及结果报告
disp('特征值及其贡献率，累计贡献率：')
disp(DS)
disp('信息保留率T对应的主成分数与特征向量：')
disp(com_num)
disp(PV)
disp('主成分得分及排序')
disp(result_report)
