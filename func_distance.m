function [distance1] = func_distance (array1, A1, weight1)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
distance1 = [];
[m, n] = size(A1);
[m1, n1] = size(array1);
for i = 1:m1;
    C1 = (A1 - repmat(array1(i, :), m, 1)) .^ 2; %����㵽�������ֵ��ƽ��
    C2 = abs(C1);                                %�����ֵ�ľ���ֵ
    C3 = weight1 * (sum(C2, 2) .^ 0.5);            %�����Ȩ����֮��
    distance1 = [distance1; C3];                   %���ص㼯����������
end
end

