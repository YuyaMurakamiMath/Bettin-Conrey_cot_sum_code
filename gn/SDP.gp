absb(k)=bernreal(k)^2*(2*Pi)^k/(k!*2*k); \\|b_k| for k>=2
Summand(n,j)=binomial(n-1,j)*absb(j+2); \\ \binom{n-1}{j}\times|b_{j+2}|
Ginf(n)= \\ G_n^{(\infty)}
{
	local(jmax,Smax,Stemp);
	jmax=0;
	Smax=0;
	for(j=0,n-2,
		Stemp=Summand(n,j);
		if(Smax<Stemp,
			jmax=j;
			Smax=Stemp;
		);
	);
	return(2*Smax);
};
Gone(n)=1/(n*(n+1))+2*absb(n)+2*sum(j=0,n-2,Summand(n,j)); \\ G_n^{(1)}