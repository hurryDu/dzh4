%version 1.0, compiled by sy.z in nov 27, 2018.
clear
%%%%%%%%%%%%%%%%%%�����趨��%%%%%%%%%%%%%%%%%%%%%%%%
times = 100000; %��������
step = 0.0001; %����
weight = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]; %Ȩ��

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
 %����������㼯
array = A; %��ʼ������Ϊ����������㼯
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
l = 0;
while l < times;
    l = l + 1;
    [distance] = func_distance(array, A, weight);
    [fitness postion] = func_fitness(distance);
    array = func_updated_array(array, postion, step, A, weight);
end
%������
[minimal_value d] = min(distance);
cordinate = array(d,:);
minimal_value,cordinate %ǰ��Ϊ��С����ֵ�� ����Ϊ����

%��ͼ����֧�ֶ�ά����άɢ��ͼ
func_drawing(A, cordinate)