%version 1.0, compiled by sy.z in nov 27, 2018.
clear
%%%%%%%%%%%%%%%%%%参数设定区%%%%%%%%%%%%%%%%%%%%%%%%
times = 100000; %迭代次数
step = 0.0001; %步长
weight = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]; %权重

A=[1.00	1.00	1.00
1.00	1.00	0.00
1.00	0.00	0.00
1.00	1.00	0.00
1.00	0.00	1.00
0.00	0.00	1.00
0.00	1.00	0.00
1.00	0.00	1.00
1.00	0.00	1.00
0.00	1.00	0.00
1.00	0.00	0.00
1.00	0.00	1.00
1.00	0.00	1.00
1.00	0.00	0.00];
 %给定待集结点集
array = A; %初始生长点为给定待集结点集
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
l = 0;
while l < times;
    l = l + 1;
    [distance] = func_distance(array, A, weight);
    [fitness postion] = func_fitness(distance);
    array = func_updated_array(array, postion, step, A, weight);
end
%输出结果
[minimal_value d] = min(distance);
cordinate = array(d,:);
minimal_value,cordinate %前者为最小集结值， 后者为坐标

%绘图，仅支持二维及三维散点图
func_drawing(A, cordinate)