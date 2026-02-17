%基于N+1个点的选点差分求解
function [A,df]=diffnew(X,Y,m)
X=[X(m),X];
X(:,m+1)=[];
Y=[Y(m),Y];
Y(:,m+1)=[];
A=Y;
N=length(X);
for j=2:N
    for k=N:-1:j
        A(k)=(A(k)-A(k-1))/(X(k)-X(k-j+1));
    end
end
x0=X(1);
df=A(2);
prod=1;
n1=length(A)-1;
for k=2:n1
    prod=prod*(x0-X(k));
    df=df+prod*A(k+1);
end
end

