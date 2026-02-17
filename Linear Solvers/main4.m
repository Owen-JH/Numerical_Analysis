%3.6.5第4题求解
A=ones(50);
for k=1:49
    A(k,k+1)=-2
end
for k=2:50
    A(k,k-1)=-2
end
for k=1:50
    A(k,k)=12
end
B=5*ones(50,1);
P=zeros(50,1);
delta=input('请输入精度:');
max1=input('请输入迭代次数:');
X=gseid(A,B,P,delta,max1);
