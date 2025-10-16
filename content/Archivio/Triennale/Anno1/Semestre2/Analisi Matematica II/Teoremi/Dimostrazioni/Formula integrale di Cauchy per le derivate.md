*Argomento di afferenza: [[Teorema integrale di Cauchy]].*
***
# Formula integrale di Cauchy per le derivate
Sia $\mathbb{A} \subseteq \mathbb{C}$ [[Funzioni in due Variabili#^270173|aperto]]
* $f: \mathbb{A} \rightarrow \mathbb{C}$
* $D$ dominio regolare e limitato contenuto in $\mathbb{A}$
* $f$ olomorfa all'interno di $D$
* $f$ continua sulla chiusura di $D$.
Allora $f$ è derivabile ==infinite volte== in ogni punto $z_0$ interno a $D$ e si ha:
$$f^{(k)} (z_0) = \frac{k!}{2 \pi i} \oint_{\partial^+ D} \frac{f(z)}{(z-z_0)^{k+1}} \ dz$$
## Dimostrazione (nel caso di $k=0$)
Dal momento in cui $\displaystyle \frac{f(z)}{z-z_0}$ non è olomorfa (presenta una singolarità), si costruisce un dominio a due contorni in cui sia invece olomorfa:
![[cauchyDer.png]]

Si tratta di una circonferenza di centro $z_0$ e di raggio $R$:
$$C_R (z_0) = \left\{z \in \mathbb{C} : \left| z - z_0 \right| = R \right\}$$
la cui rappresentazione parametrica è:
$$
\begin{cases}
x = x_0 + R \cos t
\\
y = y_0 + R \sin t
\end{cases}
\quad t \in [0, 2\pi]
$$
$$z(t) = x_0 + R \cos t + i(y_0 + R \sin t) = $$
$$= x_0 + i y_0 + R (\cos t + i \sin t) = z_0 + Re^{it} \quad\quad t \in [o, 2\pi]$$
$$z'(t) = i Re^{it}$$
Si considera il dominio a 2 contorni avente $\partial^+ D$ come contorno esterno e $C_R(z_0)$ come contorno interno.
Per il [[Teorema integrale di Cauchy#^8b03ba|Corollario 1]]:
$$\oint_{\partial^+ D} \frac{f(z)}{z - z_0} \ dz = \oint_{C_R(z_0)}\frac{f(z)}{z - z_0} \ dz =$$
$$= \int^{2 \pi}_{0} \frac{f(z_0+Re^{it})}{\cancel{R}\cancel{e^{it}}} i \cancel{R} \cancel{e^{it}} \ dt = i \int^{2 \pi}_{0} f(z_0+Re^{it}) \ dt$$
Si passa al limite per $R \rightarrow 0$:
$$\lim_{R \rightarrow 0} \oint_{\partial^+ D}\frac{f(z)}{z-z_0} \ dz = i \lim_{R \rightarrow 0} \int^{2\pi}_{0} f (z_0 + Re^{it}) \ dt$$
$$\oint_{\partial^+ D} \frac{f(z)}{z - z_0} \ dz = i \int^{2\pi}_{0} \left[\lim_{R \rightarrow 0} f(z_0+Re^{it}) \right] \ dt$$
$$= \int^{2\pi}_{0} f(z_0) \ dt = i \ f(z_0) \int^{2\pi}_{0} \ dt = 2 \pi i \ f(z_0) \Rightarrow$$
$$\Rightarrow f(z_0) = \frac{1}{2 \pi i} \oint_{\partial^+ D} \frac{f(z)}{z - z_0} \ dz$$
>[!check] Formula integrale di Cauchy per le derivate
>$$\oint_{\partial^+ D} \frac{f(z)}{(z - z_0)^{k+1}} \ dz \frac{2 \pi i}{k!} f^{(k)} (z_0)$$