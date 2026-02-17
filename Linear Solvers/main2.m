%3.5.8第1题求解
A=[1 3 5 7;2 -1 3 5;0 0 2 5;-2 -6 -3 1];
B=[1;2;3;4];
X=lufact(A,B);
[L,U,P]=lu(A);
M=P*B;
Y=uptrbk(L,M);
X1=backsub(U,Y);

