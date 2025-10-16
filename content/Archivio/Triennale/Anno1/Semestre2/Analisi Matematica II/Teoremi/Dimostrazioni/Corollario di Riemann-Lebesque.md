*Argomento di afferenza: [[Serie di Fourier]].*
***
# Corollario di Riemann-Lebesque
Sia $f \ 2\pi$ periodica e integrabile. Allora:
$$\lim_{k \rightarrow \infty} a_k = \lim_{k \rightarrow \infty} b_k = 0$$
## Dimostrazione
A partire dalla [[Disuguaglianza di Bessel]]:
$$\frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} ({a_k}^2+{b_k}^2) \leq \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx \Rightarrow$$
$$\Rightarrow \sum^{+ \infty}_{k=1} ({a_k}^2+{b_k}^2) \leq \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx \ - \frac{{a_0}^2}{2} < + \infty \Rightarrow$$
$\displaystyle \sum^{+ \infty}_{k=1} ({a_k}^2+{b_k}^2)$ converge, quindi $\displaystyle \lim_{k \rightarrow \infty} ({a_k}^2+{b_k}^2) = 0$.
>[!Tip] Condizione necessaria di convergenza.
>Il limite uguale a zero viene dato dalla *condizione necessaria per la convergenza*. Qualora il limite non esistesse, oppure sia infinito, chiaramente la serie non può convergere.

$$\lim_{k \rightarrow \infty} {a_k}^2 = - \lim_{k \rightarrow \infty} {b_k}^2 \ \Rightarrow \ \lim_{k \rightarrow \infty} a_k = \lim_{k \rightarrow \infty} b_k = 0$$
