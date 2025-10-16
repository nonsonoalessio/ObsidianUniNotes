*Argomento di afferenza: [[Funzioni complesse]].*
***
# Sviluppi in serie di Taylor e di Laurent
## Teorema di Taylor
Sia $f$ derivabile in $z_0$.
Allora $f$ è sviluppabile in serie di Taylor di centro $z_0$ e:
$$f(z) = \sum^{+ \infty}_{k=0} a_k (z - z_0)^k \quad\quad \left| 
z - z_0 \right| < r$$
Con:
* $a_k = \frac{f^{(k)}(z_0)}{k!}$
>[!tip] $r$
>È la distanza tra $z_0$ e la più vicina [[Singolarità]].

***
**Richiamo**:
Sia $z_0$ punto di singolarità isolata. Si considerano i punti interni ad una corona circolare $0 \leq r < R$, dove $r, \ R$ sono i raggi e il centro è $z_0$:
$$C_{rR}(z_0) = \left\{z \in \mathbb{C} : r < \left| z - z_0 \right| < R \right\}$$

## Teorema di Laurent
Sia $f: C_{rR} (z_0) \rightarrow \mathbb{C}$, olomorfa.
Allora $f$ è sviluppabile in serie di Laurent di centro $z_0$ e:
$$f(z) = \sum^{+ \infty}_{k= -\infty} a_k(z - z_0)^k$$
Con:
* $\displaystyle a_k=\frac{1}{2 \pi i} \oint_{C_{\rho}(z_0)}\frac{f(z)}{(z - z_0)^{k+1}} \ dz$
    * $C_{\rho} (z_0)$ è una circonferenza di raggio $\rho$ e centro $z_0$;
    * $r < \rho < R$
>[!danger] Integrale e curva
>Per il [[Teorema integrale di Cauchy#^f6ca0c|Corollario 3]], l'integrale **NON** dipende dalla curva (e quindi da $\rho$).

$$f(z) = \sum^{+ \infty}_{k= -\infty} a_k (z - z_0)^k = \sum^{+ \infty}_{k=0} a_k (z - z_0)^k + \sum^{-1}_{k=\infty} a_k (z - z_0)^k = \sum^{+ \infty}_{k=0} a_k (z - z_0)^k + \sum^{+ \infty}_{k = 1} \frac{a_k}{(z - z_0)^k}$$
Con:
* $\displaystyle \sum^{+ \infty}_{k=0} a_k (z - z_0)^k$ *parte olomorfa*;
* $\displaystyle \sum^{+ \infty}_{k=1} \frac{a_k}{(z - z_0)^k}$ *parte singolare*.

>[!tip] In caso di punto di derivabilità
>In caso di punto di derivabilità, lo sviluppo in serie di Laurent si riduce allo sviluppo in serie di Taylor.

