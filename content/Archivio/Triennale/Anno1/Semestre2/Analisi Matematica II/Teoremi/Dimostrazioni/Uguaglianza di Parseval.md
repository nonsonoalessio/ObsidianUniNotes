*Argomento di afferenza: [[Serie di Fourier]].*
***
# Uguaglianza di Parseval
Sia $f \ 2 \pi$ periodica.
Se la serie di Fourier associata ad $f$ [[Convergenza di Serie di Funzioni#^defad2|converge uniformemente]], vale l'uguaglianza di Parseval:
$$\frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) \right]^2 \ dx = \frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1}({a_k}^2+{b_k}^2)$$
## Dimostrazione
Si parte da:
$$\frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) - S_n (x) \right]^2 \ dx = \frac{1}{\pi} \int^{\pi}_{- \pi} \left[f(x) \right]^2 \ dx - \left[\frac{{a_0}^2}{2} + \sum^{n}_{k=1} \left({a_k}^2 + {b_k}^2 \right) \right]$$
Si passa al limite per $n \rightarrow + \infty$:
$$\lim_{n \rightarrow \infty} \frac{1}{\pi} \int^{\pi}_{-\pi} \left[f(x) - S_n (x) \right]^2 \ dx = \frac{1}{\pi} \int^{\pi}_{- \pi} \left[f(x) \right]^2 \ dx - \left[\frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} \left({a_k}^2 + {b_k}^2 \right) \right]$$
Dal momento in cui $S_n(x) \rightrightarrows f(x)$, si può [[Teorema di Passaggio al Limite sotto il segno di Integrale|portare il limite sotto il segno di integrale]]:
$$\frac{1}{\pi} \int^{\pi}_{-\pi} \left( \lim_{n \rightarrow \infty} \left[f(x) - S_n (x) \right]^2 \right) \ dx = \frac{1}{\pi} \int^{\pi}_{- \pi} \left[f(x) \right]^2 \ dx - \left[\frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} \left({a_k}^2 + {b_k}^2 \right) \right]$$
$$0 = \frac{1}{\pi} \int^{\pi}_{- \pi} \left[f(x) \right]^2 \ dx - \left[\frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} \left({a_k}^2 + {b_k}^2 \right) \right]$$
$$\frac{1}{\pi} \int^{\pi}_{- \pi} \left[f(x) \right]^2 \ dx = \frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} \left({a_k}^2 + {b_k}^2 \right)$$
>[!tip] Osservazione
>Se $f(x)$ è $T$ periodica e la serie di Fourier associata ad $f(x)$ converge uniformemente, l'uguaglianza di Parseval è pari a:
>$$\frac{2}{T} \int^{\frac{T}{2}}_{- \frac{T}{2}} \left[f(x) \right]^2 \ dx = \frac{{a_0}^2}{2} + \sum^{+ \infty}_{k=1} \left({a_k}^2 + {b_k}^2 \right)$$

