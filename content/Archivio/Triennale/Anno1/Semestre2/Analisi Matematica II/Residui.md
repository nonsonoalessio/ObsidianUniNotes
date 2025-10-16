*Argomento di afferenza: [[Funzioni complesse]].*
***
# Residui
## Definzione
Sia: 
* $z_0$ una singolarità isolata per $f(z)$
* $\gamma$ curva chiusa, semplice, regolare a tratti, non passante per $z_0$ ma che lo contiene
$$Res(f(x), z_0 = \frac{1}{2 \pi i} \oint_{\gamma} f(z) \ dz$$
>[!Tip] Integrale e curva
>Per il [[Teorema integrale di Cauchy#^f6ca0c|Corollario 3]], l'integrale **NON** dipende dalla curva $\gamma$.

>[!bug] Singolarità eliminabile e residui
>Se $z_0$ è una singolarità eliminabile, allora:
>$$Res(f(z), z_0) = a_{-1} = 0$$

***
## Formula dei residui per i poli
Sia $z_0$ un [[Singolarità#^45ad2a|polo]] di ordine $n$ per $f(z)$.
Allora:
$$Res(f(z), z_0) = \frac{1}{(n-1)!} \lim_{z \rightarrow z_0} \frac{d^{n-1}}{d z ^{n-1}} f(z)(z-z_0)^n$$
>[!tip] Osservazione
>Se $z_0$ è un polo semplice, il residuo si reduce al limite della verifica per la quale $z_0$ risulta essere un polo semplice.

***
## Teorema dei residui
Sia:
* $\mathbb{A} \subseteq \mathbb{C}$ aperto
* $f: \mathbb{A} \rightarrow \mathbb{C}$
* $D$ dominio regolare, limitato e semplicemente connesso in $\mathbb{A}$
Allora, se $f$ è continua sulla chiusura di $D$ e olomorfa al suo interno, tranne che in un numero finito di singolarità isolate:
$$\oint_{\partial^+ D} f(z) \ dz = 2 \pi i \sum^{n}_{k=1} Res(f(z), z_k)$$
### Dimostrazione
Se $z_k$ è una singolarità isolata, allora esiste un intorno circolare di $z_k$ in cui non cadono altre singolarità.
Si indichi con $C_{r_k} (z_k)$ una circonferenza di centro $z_K$ e raggio $r_k$ con $C_{r_k}$ disgiunte:
![[thRes.png]]
Si ottiene così un dominio a più contorni. Per il [[Teorema integrale di Cauchy#^8b03ba|Corollario 1]]:
$$\oint_{\partial^+ D} f(z) \ dz = \sum^{n}_{k=1} \oint_{C_{r_k}(z_k)} f(z) \ dz = $$
$$= 2 \pi i \sum^{n}_{k=1} \frac{1}{2 \pi i} \oint_{C_{r_k}(z_k)} f (z) \ dz = $$
$$= 2 \pi i \sum^{n}_{k=1} Res(f(z), z_k)$$
