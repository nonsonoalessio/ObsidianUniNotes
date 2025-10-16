*Questo argomento è stato trattato in #analisiMatematicaII.*
***
# Teorema di passaggio al limite sotto il segno di integrale
## Ipotesi
Data $\{f_k(x)\}_{k \in \mathbb{N}}$:
* $f_k: [a, b] \rightarrow \mathbb{R}$;
* $f_k$ continua $\forall k$;
* $f_k \rightrightarrows f$ in $[a,b]$

## Tesi
$$\lim_{k \rightarrow +\infty} \int^b_a f_k (x) dx = \int^b_a (\lim_{k \rightarrow + \infty} f_k (x)) dx = \int^b_a f(x) dx$$
>[!tldr] Riassunto
>Il limite dell'integrale della funzione è uguale all'integrale della funzione limite.

>[!danger] Osservazione
>* $f_k$ continua
>* $f_k \rightrightarrows f$ in $[a,b]$
>Allora $f$ è continua in $[a,b]$ e quindi $f$ è **integrabile**.

