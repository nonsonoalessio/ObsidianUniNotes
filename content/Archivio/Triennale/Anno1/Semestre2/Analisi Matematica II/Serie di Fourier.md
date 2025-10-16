*Argomento di afferenza: [[Serie di funzioni]].*
***
# Serie di Fourier
## Definizione
Una serie di Fourier è una [[Serie di funzioni]] del tipo:
$$\frac{a_0}{2} + \sum^{+ \infty}_{k=1}(a_k \cos kx + b_k \sin kx)$$
$$= \frac{a_0}{2} + a_1 \cos x + b_1 \sin x + a_2 \cos 2x + b_2 \sin 2x + ... + a_k \cos kx + b_k \sin kx + ...$$
Dove $a_k$ (**0**, 1, 2...) e $b_k$ (**1**, 2...) sono i *coefficienti di Eulero-Fourier*.

>[!tip] Osservazione
>La serie di Fourier è $2 \pi$ periodica: assume lo stesso carattere in $x_0$ e ogni $x_0 + 2 k \pi, \ \forall k \in \mathbb{Z}$.
>Si può dunque studiare la convergenza in un solo intervallo, di ampiezza $2 \pi$.

### Casi particolari
**Serie di soli seni**
Si ha una serie di soli seni se $a_k = 0, \ \forall k$:
$$\sum^{+ \infty}_{k=1} b_k \sin kx$$
***
**Serie di soli coseni**
Si ha una serie di soli coseni se $b_k = 0, \ \forall k$:
$$\frac{a_0}{2} + \sum^{+ \infty}_{k=1} a_k \cos kx$$
>[!Danger] Serie di soli coseni
>Nella serie di soli coseni, ricordarsi del termine $\displaystyle \frac{a_0}{2}$ sommato fuori la sommatoria!

***
## Determinare la serie di Fourier associata
### Risultati preliminari ($k , m \in \mathbb{N} \bigcup \{0\}$)
1. $$\int^{\pi}_{-\pi} \cos kx \cdot \cos mx \ dx = \begin{cases}
2 \pi, \ k = m = 0
\\
\pi, \ k = m \neq 0
\\
0, \ k \neq m
\end{cases}$$
2. $$\int^{\pi}_{-\pi} \sin kx \cdot \sin mx \ dx = \begin{cases}
0, \ k = m = 0
\\
\pi, \ k = m \neq 0
\\
0, \ k \neq m
\end{cases}$$
3. $$\int^{\pi}_{-\pi} \cos kx \cdot \sin mx \ dx = 0 \ \forall k, m$$
### Procedimento di Eulero-Fourier
>[!tip] Coefficienti di Eulero-Fourier
>Si può integrare su qualsiasi intervallo di ampiezza pari al periodo. Nel caso in esempio per la dimostrazione, la funzione si suppone sia $2 \pi$ periodica.

**Dimostrazione**
Si supponga: 
$$f(x) = \frac{a_0}{2} + \sum^{+ \infty}_{k=1}(a_k \cos kx + b_k \sin kx)$$
e si fissi un $m \in \mathbb{N} \bigcup \{0\}$.
Si moltiplichino dunque ambo i membri per $\cos mx$:
$$f(x) \cos mx = \frac{a_0}{2} \cos mx + \sum^{+ \infty}_{k=1}(a_k \cos kx \cos mx + b_k \sin kx \cos mx)$$
Si integri tra $- \pi$ e $\pi$:
$$\int^{\pi}_{- \pi} f(x) \cos mx \ dx = \frac{a_0}{2} \int^{\pi}_{-\pi} \cos mx \ dx + \sum^{+ \infty}_{k=1}(a_k \int^{\pi}_{- \pi} \cos kx \cos mx \ dx + b_k \int^{\pi}_{- \pi} \sin kx \cos mx \ dx)$$
>[!NOTE] Sommatoria ed integrale
>Si possono scambiare i segni di integrale e sommatoria purché la [[Convergenza di Serie di Funzioni#^defad2|serie converga uniformemente]].

Con $k = m \neq 0$, si ottiene:
$$= \frac{a_0}{2}
\left[
\frac{\sin mx}{m}
\right]^{\pi}_{-\pi} 
+ a_m \cdot \pi = a_m \cdot \pi \Rightarrow
a_m = \frac{1}{\pi} \int^{\pi}_{- \pi} f(x) \cos mx \ dx
$$
$$a_0 = ?$$
#### Procedimento per $a_0$
$$f(x) = \frac{a_0}{2} + \sum^{+ \infty}_{k=1}(a_k \cos kx + b_k \sin kx)$$
Si moltiplichi per $\cos 0x = 1$ e poi si integri tra $- \pi$ e $\pi$:
$$\int^{\pi}_{-\pi} f(x) dx = \frac{a_0}{2} \int^{\pi}_{-\pi} dx + \sum^{+ \infty}_{k=1}(a_k \int^{\pi}_{-\pi}\cos kx \ dx + b_k \int^{\pi}_{-\pi} \sin kx \ dx) = $$
$$= \frac{a_0}{2} [x]^{\pi}_{-\pi} + \sum^{+ \infty}_{k=1} \left (a_k \left[\frac{\sin kx}{k} \right]^{\pi}_{-\pi} + b_k \left[ bk - \frac{\cos kx}{k}\right]^{\pi}_{- \pi} \right) = $$
$$= \frac{a_0}{2} \cdot 2 \pi = a_0 \pi$$
**Recap:**
$$\int^{\pi}_{-\pi} f(x) \ dx = a_0 \pi$$
Da cui segue:
$$a_0 = \frac{1}{\pi} \int^{\pi}_{-\pi} f(x) \ dx$$
#### Procedimento per $a_k$
Dai passaggi precedenti, si ottiene:
$$a_k = \frac{1}{\pi} \int^{\pi}_{-\pi} f(x) \cos kx \ dx$$
Con $k$ intero positivo, da 0.

#### Procedimento per $b_k$
Si moltiplichi per $\sin mx$ e si integri tra $-\pi$ e $\pi$:
$$\int^{pi}_{-\pi} f(x) \sin mx \ dx = \frac{a_0}{2} \int^{\pi}_{- \pi} \sin mx \ dx + \sum^{+ \infty}_{k=1} \left(a_k \int^{\pi}_{-\pi}\cos kx \sin mx \ dx + b_k \int^{\pi}_{-\pi} \sin kx \sin mx \ dx \right)$$
Con $k = m \neq 0$ si ottiene:
$$\frac{a_0}{2} \left[- \frac{\cos mx}{m} \right]^{\pi}_{-\pi} + b_m \pi = b_m \pi$$
Da cui segue:
$$b_m = \frac{1}{\pi} \int^{\pi}_{- \pi} f(x) \sin mx \ dx$$
Con $k$ intero positivo, da 1.