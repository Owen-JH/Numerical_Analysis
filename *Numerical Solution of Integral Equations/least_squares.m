% 最小二乘法求解第二类Fredholm积分方程

lambda = 1;              
n = 50;                    
x = linspace(0, 2*pi, n); 
f = ones(1, n);            
h = x(2) - x(1);          

A = zeros(n, n);         
b = zeros(n, 1);          

for i = 1:n
    b(i) = f(i);  
    for j = 1:n
        A(i,j) = lambda * h * sum(sin(x(i) + x(j)) .* sin(j * x));
    end
end

c = A \ b; 

phi_approx = zeros(1, n);
for i = 1:n
    phi_approx = phi_approx + c(i) * sin(i * x);  
end

figure;
plot(x, phi_approx, '-o', 'LineWidth', 2);
title('最小二乘法');
xlabel('x');
ylabel('\phi(x)');
grid on;
