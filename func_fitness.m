function [fitness2, postion2] = func_fitness(dis2)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
fitness2 = 1 ./ dis2;
concentration = fitness2 ./ sum(fitness2);
[m2, n2] = size(dis2);
sum_con = 0;
standard = rand();
for j = 1:m2;
    sum_con = sum_con + concentration(j, :);
    if sum_con > standard;
        postion2 = j;
        break
    end
end
end

