*Argomento di afferenza: [[Serie di Fourier]].*
***
## Step per la risoluzione
>[!Note] Serie di Fourier associata ad una funzione $T$ periodica:
>$$f(x) \sim \frac{a_0}{2} + \sum^{+ \infty}_{k=1} \left[a_k \cos \left( \frac{2 k \pi x}{T}\right) + b_k \sin \left( \frac{2 k \pi x}{T}\right)\right]$$

### Ricavare $a_0$
$$a_0 = \frac{1}{\pi} \int^{\pi}_{-\pi} f(x) \ dx$$

### Ricavare $a_k$
$$a_k = \frac{2}{T} \int^{\frac{T}{2}}_{-\frac{T}{2}} f(x) \cos \left(\frac{2 k \pi x}{T}\right) \ dx$$
### Ricavare $b_k$
$$b_m = \frac{2}{T} \int^{\frac{T}{2}}_{- \frac{T}{2}} f(x) \sin \left(\frac{2 k \pi x}{T}\right) \ dx$$
***
### Casi particolari
>[!NOTE] Serie di soli coseni - funzione pari
>$$f(x) \sim \frac{a_0}{2} + \sum^{+ \infty}_{k=1}a_k \cos \left(\frac{2 k \pi x}{T}\right)$$
>$$a_k = \frac{4}{T} \int^{\frac{T}{2}}_{0} f(x) \cos \left(\frac{2 k \pi x}{T}\right)$$

^7294e0

>[!NOTE] Serie di soli seni - funzione dispari
>$$f(x) \sim \sum^{+ \infty}_{k=1} b_k \sin \left(\frac{2 k \pi x}{T} \right)$$
>$$b_k = \frac{4}{T} \int^{\frac{T}{2}}_{0} fx \sin \left( \frac{2 k \pi x}{T}\right) \ dx$$

^6b61b3
