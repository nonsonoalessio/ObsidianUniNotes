*Argomento di afferenza: [[Serie di Fourier]].*
***
# Teorema di convergenza uniforme
Sia $f \ 2\pi$ periodica, regolare a tratti e continua.
Allora, la serie di Fourier associata ad $f$ [[Convergenza di Serie di Funzioni#^675e67|converge totalmente]] e [[Convergenza di Serie di Funzioni#^defad2|uniformemente]] ad $f$.

## Dimostrazione
>[!Danger] Richiami
>**Convergenza uniforme**:
>* $\displaystyle f_k(x)$ continua $\forall k$;
>* $\displaystyle \sum^{+ \infty}_{k=1} f_k(x)$ converge uniformemente ad $f$;
>  $\rightarrow$ $f$ è continua.
>  
> **Convergenza totale**:
> * $$\displaystyle \exists \left\{f_k(x) \right\}_{k \in \mathbb{N}} \ con \ M_k \geq 0: \ \left| f_k(x) \right| \leq M_k \ \forall k \in \mathbb{N} \ e \ \sum^{+ \infty}_{k=1} M_k < + \infty$$

$$\left| a_k \cos kx + b_k \sin kx \right| \leq \left| a_k \cos kx \right| + \left| b_k \sin kx \right| \ \left(\left| \cos kx \right| \leq 1, \ \left| \sin kx \right| \leq 1\right)$$
$$M_k = \left| a_k \right| + \left| b_k \right|$$
Bisogna dimostrare che $\displaystyle \sum^{+ \infty}_{k=1} \left( \left| a_k \right| + \left| b_k \right| \right) < + \infty$
$$(a-b)^2 = a^2 - 2ab + b^2 > 0 \rightarrow 2ab \leq a^2 + b^2$$
**$a_k$:**
$$2 \left| a_k \right| = 2 \frac{1}{k}k\left| a_k \right| \leq \frac{1}{k^2} + k^2 {a_k}^2$$
$$\left| a_k \right| \leq \frac{1}{2k^2} + \frac{1}{2}k^2 {a_k}^2$$
**$b_k$:**
$$2 \left| b_k \right| = 2 \frac{1}{k}k\left| kb_k \right| \leq \frac{1}{k^2} + k^2 {b_k}^2$$
$$\left| b_k \right| \leq \frac{1}{2k^2} + \frac{1}{2}k^2 {b_k}^2$$
Quindi:
$$\left| a_k \right| + \left| b_k \right| \leq \frac{1}{k^2} + \frac{1}{2}(k^2 {a_k}^2 + k^2 {b_k}^2) \leq \frac{1}{k^2} + (k^2 {a_k}^2 + k^2 {b_k}^2$$
$\displaystyle \sum^{+ \infty}_{k=1} \frac{1}{k^2}$ converge, per confronto con la serie aromica generalizzata $\rho = 2 > 1$.
Bisogna dimostrare che $\displaystyle \sum^{+ \infty}_{k=1} (k {a_k}^2 + k {b_k}^2) < + \infty$. 
Dal momento in cui $-k b_k = \alpha_k$ e $ka_k = \beta_k$, $f'(x)$ è continua a tratti in un intervallo chiuso e limitato, risulta che $f'(x)$ è integrabile.
Applicando ad $f'$ la [[Disuguaglianza di Bessel]]:
$$\sum^{+ \infty}_{k=1} (k^2 {a_k}^2 + k^2 {b_k}^2) \leq \frac{1}{\pi} \int^{\pi}_{- \pi} \left[f'(x) \right]^2 \ dx < +\infty$$
Per il teorema del confronto, $\displaystyle \sum^{+ \infty}_{k=1} (k {a_k}^2 + k^2{b_k}^2) < +\infty$ e quindi converge.
***
### Teorema di convergenza uniforme locale
Sia $f \ 2 \pi$ periodica, regolare a tratti.
Allora, la serie di Fourier associata ad $f$ converge uniformemente in ogni intervallo chiuso e limitato in cui la funzione è continua.

**Esempio:**
Sia $f: \ \left[0, \ 2\pi \right] \rightarrow \mathbb{R}$.
La *condizione necessaria* per la convergenza uniforme della serie di Fourier associata al prolungamento è:
$$f(0) = f(2 \pi)$$
