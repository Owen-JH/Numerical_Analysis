% 配点法求解第二类Fredholm积分方程
N = 100;
x_vals = linspace(0, 2*pi, N); 
lambda = 1; 

% 构造积分核
K = @(x,t) sin(x + t); 

A = zeros(N, N);
b = ones(N, 1);

for i = 1:N
    for j = 1:N
        A(i,j) = K(x_vals(i), x_vals(j)) * (x_vals(2) - x_vals(1)); 
    end
    b(i) = 1; 
end

phi_vals = A\b;

figure;
plot(x_vals, phi_vals, '-o', 'LineWidth', 2);
title('配点法（Collocation Method）');
xlabel('x');
ylabel('\phi(x)');
grid on;
