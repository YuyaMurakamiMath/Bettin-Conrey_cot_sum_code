We define $g_n$ as [AM, eq.~(1.2)] and $I_n=g_n-\frac{1}{n}$.
We also set

$$\widetilde{I}_n=2^{-9/4}\pi^{-3/4}n^{3/4}e^{2\sqrt{\pi n}}I_n.$$

We compute $\widetilde{I}_n$ with $2\leq n\leq 10001$ by running the file `main.gp` (with suitable modifications)
in the directory [coefficients](https://github.com/YuyaMurakamiMath/Bettin-Conrey_cot_sum_code/tree/main/coefficients)
In this directory there are two output files:
* `tIn`: save the output as a vector [$\widetilde{I}_2$,...,\widetilde{I}_{10001}$] of Pari/GP.
* `tIn.csv`: save the output as CSV format.