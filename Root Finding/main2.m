%2.4.8第6题的主程序如下(哈利法求解）
f=input('请输入目标函数:');
p0=input('请输入初始值:');
delta=input('请输入精度:');
epsilon=delta;
max1=input('请输入迭代次数:');
syms x
f2=f(x);
df=matlabFunction(diff(f2));
ddf=matlabFunction(diff(diff(f2)));
[p0,err,k,y]=Halley(f,df,ddf,p0,delta,epsilon,max1);
disp([p0,err,k,y]);