%5.1.4第4题求解
for k= 1:50
    X(k)=0.1*k;
    Y(k)=X(k)+cos(sqrt(k));
end
[A,B]=lsline(X,Y);
plot(X,Y)
hold on
y=A*X-B;
plot(X,y)
