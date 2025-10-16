*Argomento di afferenza: [[Serie di Potenze]].*
***
# Teorema di D'Alembert
**Anche:** *del rapporto*.

## Enunciato
Sia $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k$ serie di potenze con $a_k \neq 0 \ \forall k \in \mathbb{N}$.
Se esiste:
$$\lim_{k \rightarrow +\infty} |\frac{a_k+1}{a_k}| = l$$
allora:
$$
\rho = 
\begin{cases}
\displaystyle \frac{1}{l}, \ 0 < l < +\infty
\\
0, \ l = +\infty
\\
+\infty, \ l = 0
\end{cases}
$$
## Dimostrazione
Consideriamo $\displaystyle \sum^{+ \infty}_{k=0} |a_k x^k|$ e applichiamo il criterio del rapporto per le serie numeriche:
$$\lim_{k \rightarrow +\infty} |\frac{a_{k+1} \cdot x^{k+1}}{a_k x^k}| = \lim_{k \rightarrow +\infty} |\frac{a_{k+1}}{a_k}| \cdot |x| = l \ |x|$$ con $x \neq 0$.
Allora:
* $l = 0 \Rightarrow \lim = 0 < 1 \Rightarrow$ [[Convergenza di Serie di Funzioni#^730c57|converge assolutamente]] per $x \neq 0 \Rightarrow$ converge per $x \neq 0$ e $\rho = + \infty$;
* $l = +\infty \Rightarrow \lim = +\infty > 1 \Rightarrow$ non  [[Convergenza di Serie di Funzioni#^730c57|converge assolutamente]] per ogni $x \neq 0 \Rightarrow$ non converge per $x \neq 0$ e $\rho = 0$;   
* $0 < l < + \infty \Rightarrow \lim = l \ |x|$
    * se $\displaystyle l \ |x| < 1 \iff |x| < \frac{1}{l}$  [[Convergenza di Serie di Funzioni#^730c57|converge assolutamente]] e quindi converge;
    * se $\displaystyle l \ |x| > 1 \iff |x| > \frac{1}{l}$ non converge.
e $\displaystyle \rho = \frac{1}{l}$.
