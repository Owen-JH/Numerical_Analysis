%求解幂曲线拟合E2(f)的函数
function T=mean_square(X,Y,M,A)
n=length(X);
sum=0;
for k=1:n
   sum=sum+(A*X(k).^M-Y(k)) ^2;
end
T=sqrt(sum/n);
end
