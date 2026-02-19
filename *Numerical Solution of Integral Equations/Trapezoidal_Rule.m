% 求积公式法(梯形公式)求解第二类Fredholm积分方程

N = 80; 
x_vals = linspace(0, 2*pi, N); 
lambda = 1; 
t_vals = linspace(0, 2*pi, N); 
h = (2*pi) / (N-1); 

A = zeros(N, N);
b = ones(N, 1);

% 构造矩阵A（通过梯形公式近似积分）
for i = 1:N
    for j = 1:N
        if i == 1 || i == N
            % 对于第一个和最后一个点，使用梯形公式
            A(i,j) = (sin(x_vals(i) + t_vals(j)) * h / 2);
        else
            % 对于中间的点，使用梯形公式
            A(i,j) = sin(x_vals(i) + t_vals(j)) * h;
        end
    end
end

phi_vals = A\b;

figure;
plot(x_vals, phi_vals, '-o', 'LineWidth', 2);
title('梯形公式求解结果');
xlabel('x');
ylabel('\phi(x)');
grid on;
