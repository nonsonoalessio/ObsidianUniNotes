*Argomento di afferenza: [[Serie di Fourier]].*
***
# Disuguaglianza di Bessel
## Premesse
### Definizione 1
Sia $f: \mathbb{I} \subseteq \mathbb{R} \rightarrow \mathbb{R}$:
* con $\mathbb{I}$ limitato:
    Allora $f$ è continua a tratti in $\mathbb{I}$ se è continua in $\mathbb{I}$, **tranne che in un numero finito di punti** di discontinuità di tipo salto (cioè i limiti destro e sinistro esistono ma sono diversi tra di loro in questi punti).
* con $\mathbb{I}$ illimitato:
    Allora $f$ è continua a tratti in $\mathbb{I}$ se lo è in ogni intervallo limitato contenuto in $\mathbb{I}$.

### Definizione 2
$f$ è regolare a tratti in $\mathbb{I}$ se $f4 ed $f'$ sono continue a tratti in $\mathbb{I}$.
***
## Disuguaglianza di Bessel
Sia $f \ 2\pi$ periodica e integrabile.
Allora:
$$\frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) -s_n(x) \right]^2 \ dx = \frac{1}{\pi}\int^{\pi}_{- \pi}\left[f(x) \right]^2 dx - \left[\frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1}({a_k}^2 + {b_k}^2)\right]$$
Dove: 
* $\displaystyle s_n(x) = \frac{a_0}{2} + \sum^{n}_{k=1}(a_k \cos kx + b_k \sin kx)$;
* $\displaystyle \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx \geq \frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1}({a_k}^2+{b_k}^2)$
>[!INFO] Uguaglianza di Bessel
>L'uguaglianza di Bessel consente di calcolare l'errore quadratico medio che si commette approssimando $f(x)$ con $s_n(x)$.

### Dimostrazione
$$\left[f(x) - s_n(x) \right]^2 \geq 0 \Rightarrow \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) - s_n(x) \right]^2 \ dx \geq 0 \Rightarrow
$$
$$\Rightarrow \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx - \left[ \frac{{a_0}^2}{2} + \sum^{n}_{k=1}({a_k}^2 + {b_k}^2) \right] \geq 0 \Rightarrow$$
$$\Rightarrow \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx \geq \frac{{a_0}^2}{2} + \sum^{n}_{k=1}({a_k}^2 + {b_k}^2)$$
Si passi al limite per $n \rightarrow + \infty$:
$$\Rightarrow \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx \geq \frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1}({a_k}^2 + {b_k}^2)$$
>[!TLDR] Passaggio al limite
>Il passaggio al limite estende semplicemente la sommatoria da $n$ a $\infty$.
