default(realprecision,2000);
default(parisize,128000000);
bev(l)=(-1)^(l-1)*bernreal(2*l)^2*(2*Pi)^(2*l)/((2*l)!*4*l); \\ b_{2l}
Iev(l)=-1/(2*l+1)+4*l*bev(l)+2*sum(j=0,l-2,binomial(2*l-1,2*j)*bev(j+1)); \\ I_{2l}
Iod(l)=-1/(2*l+2)+2*sum(j=0,l-1,binomial(2*l,2*j)*bev(j+1)); \\ I_{2l+1}
vector(1000,m,if(m%2==1,Iev((m+1)/2),Iod(m/2))); \\[I_2,I_3,...,I_{1001}]
write(In,%);