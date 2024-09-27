The scripts of this directory is to compute numerical values of $g_n$
in eq. (1.2) or $\mathcal{I}\_n=g_n-\frac{1}{n}$.
As was shown by Bettin--Conrey, it holds that

$$g_n=\frac{1}{n(n+1)}+2b_n+2\sum_{j=0}^{n-2}\binom{n-1}{j}b_{j+2} \quad \quad (\clubsuit)$$

for $n\in\mathbb{Z}\_{\geq 2}$, where

$$b_k=\frac{B_k\zeta(k)}{k},$$

$B_k$ is the $k$-th Bernoulli number and $\zeta(s)$ is the
Riemann zeta-function.
According to the first displayed formula in Section 6,
we have

$$b_{2l}=(-1)^{l-1}\frac{(2\pi)^{2l}B_{2l}^2}{4l\cdot(2l)!}$$

for $l\in\mathbb{Z}\_{\geq 1}$. Since $B_k$ vanishes for odd $k\geq 3$, we find

$$|b_k|=\frac{(2\pi)^{k}B_{k}^2}{2k\cdot k!}$$

for $k\in\mathbb{Z}_{\geq 2}$.

To investigate significant digits of precision needed for computation
of $g_n$, we set

$$G_n^{(1)}=\frac{1}{n(n+1)}+2|b_n|+2\sum_{j=0}^{n-2}\binom{n-1}{j}|b_{j+2}|,$$

$$G_n^{(\infty)}=2\max_{0\leq j\leq n-2}\binom{n-1}{j}|b_{j+2}|.$$

The script [SDP.gp](https://github.com/YuyaMurakamiMath/Bettin-Conrey_cot_sum_code/blob/main/gn/SDP.gp) is to compute $G_n^{(\infty)}$ and $G_n^{(1)}$.
After start Pari/GP, do `\r SDP.gp`. To compute $G_{1001}^{(\infty)}$
(*resp.* $G_{1001}^{(1)}$), type `Ginf(1001)` (*resp.* `Gone(1001)`).
When we calculate $g_n$ up to $1001$, we set significant digits of precision
to much larger than the number of digits of
$G_{1001}^{(1)}$ or $1001\times G_{1001}^{(\infty)}$.

By ($\clubsuit$) we find

$$\mathcal{I}\_n=-\frac{1}{n+1}+2b_n+2\sum_{j=0}^{n-2}\binom{n-1}{j}b_{j+2}$$

for $n\in\mathbb{Z}\_{\geq 2}$.
Since $b_n$ vanishes for odd $n\geq 3$, we notice

$$\mathcal{I}\_{2l}=-\frac{1}{2l+1}+4l\times b_{2l}+\sum_{j=0}^{l-2}\binom{2l-1}{2j}b_{2(j+1)},\\
\mathcal{I}\_{2l+1}=-\frac{1}{2l+2}+\sum_{j=0}^{l-1}\binom{2l}{2j}b_{2(j+1)}$$

for $l\in\mathbb{Z}\_{\geq 1}$.
The script [main.gp](https://github.com/YuyaMurakamiMath/Bettin-Conrey_cot_sum_code/blob/main/gn/main.gp) outputs numerical values of $I_n$
for $2\leq n\leq 1001$ as a vector.
Since $G_{1001}^{(1)}=7.14\ldots\times 10^{1773}$,
we compute $g_n$ with $2000$ decimal digits.
