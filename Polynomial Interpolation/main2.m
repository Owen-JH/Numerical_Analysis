X=[1 2 3 4 5 6];
Y=[66 66 65 64 63 63];
[C,D]=newpoly(X,Y);
plot(X,Y)
hold on
x=1:6;
y=0.0167*x.^5-0.2917*x.^4+2*x.^3-6.7083*x.^2+9.9833*x+61;
plot(x,y);
n=length(X);
for k=1:n
    B(k)=Y(k);
end
A=B.';
for j=2:n
    for k=n:-1:j
        A(k,j)=(A(k,j-1)-A(k-1,j-1))/(X(k)-X(k-j+1));
    end
end

