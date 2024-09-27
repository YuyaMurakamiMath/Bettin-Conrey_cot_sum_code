In this cite we put the Pari/GP source codes used
in the paper
\begin{center}
"An asymptotic property on a reciprocity law
for the Bettin--Conrey cotangent sum" (\verb|arXiv:2402.14216|)
\end{center}
by H. Akatsuka and Y. Murakami.
The source codes are modified slightly so as not to
overload computers.

In the directory \verb|./coefficients|
there are scripts to compute the asymptotic coefficients
$\widetilde{C}_l$ in Theorem 1.1, which is given by eq. (5.2).
In the directory {\tt ./gn} we can find scripts to compute numerical
values of $g_n$ (or $\mathcal{I}_n$) via eq. (1.3),
considering significant digits of precision into account.
See Readme file in each directory for details.

We note that the stack size is sometimes
changed from the default to 128MB in the scripts.
Please use the scripts AT YOUR OWN RISK.