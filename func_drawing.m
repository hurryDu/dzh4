function func_drawing(A, cordinate)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[m n] = size(A);
figure(1)
if n == 2;
    scatter(A(:,1),A(:,2));
    hold on
    scatter(cordinate(:,1), cordinate(:,2), 'filled');
    for i = 1:m;
        B = [A(i,:);cordinate];
        plot(B(:,1),B(:,2),'--k');
    end
else if n == 3;
        scatter3(A(:,1),A(:,2), A(:, 3));
        hold on
        scatter3(cordinate(:,1), cordinate(:,2), cordinate(:,3), 'filled');
        for i = 1:m;
            B = [A(i,:);cordinate];
            plot3(B(:,1),B(:,2), B(:, 3),'--k');
        end
        xlabel('SO_2');
        ylabel('NO_2');
        zlabel('PM_2_._5');
    end
end


end

