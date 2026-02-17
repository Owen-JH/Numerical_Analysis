%ĞĞĞÇÃİÇúÏßÄâºÏ
function A=power_curve(X,Y)
n=length(X);
sum1=0;
sum2=0;
for k=1:n
    sum1=sum1+X(k).^1.5*Y(k);
end
for k=1:n
    sum2=sum2+X(k).^3;
end
A=sum1/sum2;
end