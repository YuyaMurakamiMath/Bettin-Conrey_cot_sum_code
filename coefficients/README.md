The file [coefficients.gp](https://github.com/YuyaMurakamiMath/Bettin-Conrey_cot_sum_code/blob/main/coefficients/coefficients.gp) calculates $\widetilde{C}\_l$ in eq. (5.2) up to $100$.

To explain the script, we simply recall the setting.
We set

$$\lambda(y)=\frac{1}{e^y-1}-\frac{1}{y}+\frac{1}{2}=\sum_{k=1}^{\infty}\frac{B_k}{(k+1)!}y^k,$$

where $B_k$ is the $k$-th Bernoulli number.
We define $P_k(T)$ by the generating function via

$$e^{-T\lambda(y)}=\sum_{k=0}^{\infty} P_k(T)y^k.$$

We note $P_0(T)=1$.
According to Corollaries 5.4 and 5.5, we know $P_k(T)\in\mathbb{Q}[T]$ with degree $k$ and $T^k P_k(T)\in T^2 \mathbb{Q}[T^2]$
for any $k\in\mathbb{Z}\_{\geq 1}$.
We also set

$$\widetilde{C}\_l(T) = \sum_{j,k\geq 0, j+k=l} (k+1,j)T^k P_k(T)2^{-2j} = \sum_{k=0}^l (k+1,l-k)T^kP_k(T) 2^{-2(l-k)},$$

where $(k+1,j)$ is the Hankel symbol.
We notice $\widetilde{C}\_0(T)=1$.
For $l\geq 1$ we write

$$\widetilde{C}\_l(T)=(1,l)2^{-2l}+\sum_{k=1}^l (k+1,l-k)T^kP_k(T) 2^{-2(l-k)}.$$

We easily see $\widetilde{C}\_l(T)\in\mathbb{Q}[T^2]$ and $\deg_{\mathbb{Q}[T]}\widetilde{C}\_l(T)=2l$.
The numbers $\widetilde{C}\_l$ are given by $\widetilde{C}\_l=\widetilde{C}\_l(2\pi i)$.

To run the script, we firstly change the directory [coefficients](https://github.com/YuyaMurakamiMath/Bettin-Conrey_cot_sum_code/tree/main/coefficients).
Then we start Pari/GP and do `\r coefficients.gp`.
Note that the script uses 128 MB.
As a result, output the following three files:
\begin{itemize}
 \item \verb|tCkTout|: save $\widetilde{C}\_l(T)\in\mathbb{Q}[T]$ for $1\leq l\leq 100$ as
a vector.
\item \verb|tCkout_pi|: save $\widetilde{C}\_l(T)$ as $\mathbb{Q}$-linear combinations
of $1,\pi^2,\ldots,\pi^{2l}$ for $1\leq l\leq 100$ as a vector.
Here \verb|p|$=\pi$.
\item \verb|tCkout_num|: save numerical values of $\widetilde{C}\_l$ for
$1\leq l\leq 100$ as a vector.
\end{itemize}
\begin{thebibliography}{99}
 \bibitem{AM}
H.~Akatsuka and Y.~Murakami,
An asymptotic property on a reciprocity law for the Bettin--Conrey
cotangent sum, {\tt arXiv:2402.14216}.
