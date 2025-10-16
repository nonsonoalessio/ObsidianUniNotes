*Argomento di afferenza: [[Serie di Fourier]].*
***
# Lemma coefficienti di Fourier di $f'(x)$
Sia $f(x) \ 2 \pi$ periodica, regolare a tratti e continua. Allora, indicati con $\alpha_k$ e $\beta_k$ i coefficienti di Fourier di $f'(x)$, sia ha:
$$\alpha_k = k b_k, \ \beta_k = -ka_k$$
## Dimostrazione
*Applicando l'integrazione per parti:*
#### $\alpha_k$:
$$\alpha_k = \frac{1}{\pi} \int^{\pi}_{- \pi} f'(x) \cos kx \ dx = $$
$$= \frac{1}{\pi} \left\{\left[f(x) \cos kx \right]^{\pi}_{-\pi} + 
 k\int^{\pi}_{-\pi} f(x) \sin kx \ dx\right\} = $$
 $$= \frac{1}{\pi} \left[f(\pi) \cancel{\cos kx} - f(-\pi) \cos(-k \pi) \right] + k \cdot \frac{1}{\pi} \int^{\pi}_{- \pi} f(x) \sin kx \ dx = kb_k$$
 
#### $\beta_k$:
$$\beta_k = \frac{1}{\pi}\int^{\pi}_{-\pi} f'(x) \sin kx \ dx =$$
$$= \frac{1}{\pi} \left\{\left[f(x) \sin kx\right]^{\pi}_{- \pi} 
 -k \int^{\pi}_{-\pi} f(x) \cos kx \ dx\right\} = $$
 $$= \frac{1}{\pi} \left[f(\pi) \sin kx - \cancel{f(-\pi)\sin (-k \pi)} \right] - k \frac{1}{\pi} \int^{\pi}_{-\pi} f(x) \cos kx \ dx = -k a_k$$
 