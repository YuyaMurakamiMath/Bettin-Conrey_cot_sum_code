default(seriesprecision,120);  \\  change the number of significant terms
default(parisize,128000000);   \\  change the stack size
Poch(nu,k)=prod(j=0,k-1,nu+j); \\  Pochhammer symbol
Han(nu,k)=((-1)^k/k!)*Poch(1/2+nu,k)*Poch(1/2-nu,k); \\ Hankel symbol
lambda(y)=1/(exp(y)-1)-1/y+1/2;
exp(-T*lambda(y));
vector(100,k,polcoeff(%,k,y)); \\ output the vector [P_1(T),P_2(T),...,P_{100}(T)]
vector(100,l,sum(k=1,l,Han(k+1,l-k)*2^(-2*(l-k))*%[k]*T^k)+Han(1,l)*2^(-2*l)); \\ output the vector [C~_1(T),...,C~_{100}(T)] in Readme.pdf
write(tCkTout,%);
\\
\\ Let p=pi.
\\ Express C~_l as a Q-linear combination of pi^{2m} in the following three lines.
\r tCkTout;
vector(100,k,sum(j=0,k,polcoeff(%[k],2*j,T)*(-4*p^2)^j)); \\ output the vector [C~_1,...,C~_{100}]
write(tCkout_pi,%);
\\
\\ Compute numerical values of C~_l in the following four lines.
default(realprecision,120);
\r tCkTout;
vector(100,k,sum(j=0,k,polcoeff(%[k],2*j,T)*(-4*Pi^2)^j)); \\ output the vector numerically
write(tCkout_num,%);