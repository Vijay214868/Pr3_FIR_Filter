clc;
[N,Wn] = cheb1ord(1.452,0.4468,1,10,'s');

[B,A]=cheby1(N,1,Wn,'s');    %B:Numerator , A:Denominator
Has=tf(B,A);                 %Transfer Function

[Bdigital,Adigital]=bilinear(B,A,1);  %Bilinear Transfomr
Hz=tf(Bdigital,Adigital,1);
