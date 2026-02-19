%迭代方法求解第二类Volterra积分方程

n = 20;                      % 网格数目
x_max = 2;                    % x的最大值
x = linspace(0, x_max, n);    
h = x(2) - x(1);              % 网格间距

phi = x;

max_iter = 100;
tol = 1e-6;

% 迭代求解
for iter = 1:max_iter
    phi_new = zeros(1, n); 
    
    for i = 1:n
        % 计算复化梯形公式的数值积分
        integral_val = 0;
        for j = 1:i
            integral_val = integral_val + (1/5) * x(i) * x(j) * phi(j);
        end
        integral_val = integral_val * h / 2 + x(i); 
        
        phi_new(i) = integral_val;  
    end
    
    % 判断收敛条件
    if max(abs(phi_new - phi)) < tol
        disp(['Converged after ' num2str(iter) ' iterations']);
        break;
    end
    
    phi = phi_new;  
end

figure;
plot(x, phi, '-o', 'LineWidth', 2);
title('迭代法(复化梯形公式)');
xlabel('x');
ylabel('\phi(x)');
grid on;
