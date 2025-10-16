*Argomento di afferenza: [[Integrali lungo una curva]].*
***
# Teorema integrale di Cauchy
Sia $f: \mathbb{A} \rightarrow \mathbb{C}$
* $D$ dominio regolare e limitato contenuto in $\mathbb{A}$
* $f$ olomorfa all'interno di $D$
Allora:
$$\oint_{\partial^+ D} f(z) \ dz = 0$$
Dove:
* $\partial^+ D$ è la frontiera orientata positivamente in senso antiorario;
    - il fatto che sia olomorfa è una ipotesi *più forte*, in quanto si considerano anche i valori sulla frontiera.

## Corollari
### Corollario 1

^8b03ba

Sia: 
* $\mathbb{A} \subseteq \mathbb{C}$ aperto
* $f: \mathbb{A} \rightarrow \mathbb{C}$
* $f$ olomorfa in $\mathbb{A}$
* $D$ dominio regolare, limitato, a più contorni e limitato in $\mathbb{A}$
* $\Gamma_0$ contorno esterno e $\Gamma_1, \Gamma_2, ..., \Gamma_n$ contorni interni
Allora:
$$\oint_{\Gamma_0} f(z) \ dz = \sum^{n}_{k=1} \oint_{\Gamma_k} f(z) \ dz$$
**Dimostrazione** (per $n=1$):
![[coroll1.png]]
$$\oint_{\Gamma_0} f(z) \ dz = \oint_{\Gamma 1} f(z) \ dz$$
$$\Gamma_0 \ \cup \ \varphi \cup (- \Gamma_1) \ \cup \ (-\varphi)$$
Dove:
* $\varphi$ è una curva con da $A$ a $B$
    * $A$ su $\Gamma_0$
    * $B$ su $\Gamma_1$
Trattandosi di una frontiera di un dominio ad un sol contorno in cui $f$ è olomorfa, allora, per il teorema integrale di Cauchy:
$$\oint_{\Gamma_0 \ \cup \ \varphi \ \cup \ (-\Gamma_1) \ \cup \ (- \varphi)} f(z) \ dz = 0$$
$$\oint_{\Gamma_0 \ \cup \ \varphi \ \cup \ (-\Gamma_1) \ \cup \ (- \varphi)} f(z) \ dz = \oint_{\Gamma_0} f(z) \ dz + \cancel{\oint_{\varphi} f(z) \ dz} - \oint_{\Gamma_1} f(z) \ dz - \cancel{\oint_{\varphi} fz \ dz} = 0 \Rightarrow$$
$$\Rightarrow \oint_{\Gamma_0} f(z) \ dz = \oint_{\Gamma_1} f(z) \ dz$$
***
## Corollario 2
>[!tldr] Corollario 2
Si tratta di una riscrittura del teorema integrale.

Sia:
* $\mathbb{A}$ aperto, semplicemente connesso
* $f: \mathbb{A} \rightarrow \mathbb{C}$
* $f$ olomorfa in $\mathbb{A}$
Allora per ogni curva $\Gamma$ chiusa e regolare a tratti:
$$\oint_{\Gamma} f(z) \ dz = 0$$
**Dimostrazione**:
![[coroll2.png]]
$\Gamma$ è la frontiera di un dominio $D$ tutto contenuto in $A$ (essendo $A$ semplicemente connesso) e, per il teorema integrale di Cauchy:
$$\oint_{\Gamma} f(z) \ dz = \int_{\partial^+ D} f(z) \ dz =0$$
***
## Corollario 3

^f6ca0c

Siano:
* $A \subseteq \mathbb{C}$ aperto e semplicemente connesso
* $f: \mathbb{A} \rightarrow \mathbb{C}$ olomorfa in $A \backslash \left\{z_0 \right\}$
Allora l'integrale di $f$ è indipendente dalla curva chiusa, semplice, regolare a tratti, contenuta in $\mathbb{A}$ non passante per $z_0$ e che delimita un dominio contenente $z_0$.

**Dimostrazione**:
![[coroll3.png]]
Siano $\Gamma_0$ e $\Gamma_1$ 2 curve che rispettano le ipotesi e consideriamo il dominio $D$ a 2 contorni, avente $\Gamma_0$ come contorno esterno e $\Gamma_1$ come contorno interno.
Essendo $f$ olomorfa in $D$, per il Corollario 1:
$$\oint_{\Gamma_0} f(z) \ dz = \oint_{\Gamma_1}f(z) \ dz$$
***
## Corollario 4
Siano:
* $\mathbb{A} \subseteq \mathbb{C}$, aperto, semplicemente connesso
* $f: \mathbb{A} \rightarrow \mathbb{C}$
* $f$ olomorfa in $\mathbb{A}$
* $z_1$, $z_2$ $\in \mathbb{A}$
* $\Gamma_1$ e $\Gamma_2$ curve semplici, regolari a tratti, che congiungono $z_1$ e $z_2$ nel verso $t_1 \rightarrow t_2$
Allora:
$$\int_{\Gamma_1} f(z) \ dz = \int_{\Gamma_2} f(z) \ dz$$
**Dimostrazione**:
![[coroll4.png]]
Dal momento in cui $\Gamma_1 \ \cup \ \Gamma_2$ è una curva chiusa ed $f$ è olomorfa in $A$, per il corollario 2:
$$\oint_{\Gamma_1 \ \cup \ (- \Gamma_2)} f(z)\ dz = 0$$
$$\oint_{\Gamma_1 \ \cup \ (-\Gamma_2)} f(z) \ dz = \int_{\Gamma_1} f(z) \ dz - \int_{\Gamma_2} f(z) \ dz = 0 \Rightarrow$$
$$\Rightarrow \int_{\Gamma_1} f(z) \ dz = \int_{\Gamma_2} f(z) \ dz$$
>[!tip] Osservazione
>Se $f$ è olomorfa, fissati $z_1$ e $z_2$, l'integrale non dipende dalla curva che congiunge $z_1$ e $z_2$ nel verso $z_1 \rightarrow z_2$.
>Se si fissa $z_1$, $\displaystyle F(z) = \int^{z}_{z_1} f(\eta) \ d\eta$ è ben definita ed è una primitiva di $f(z)$.

***
## Teorema
*No dim.*

Sia:
* $\mathbb{A} \subseteq \mathbb{C}$ aperto e semplicemente connesso
* $f: \mathbb{A} \rightarrow \mathbb{C}$ 
* $f$ olomorfa in $\mathbb{A}$
Allora:
$$F(z) = \int^{z}_{z_1} f(\eta) \ d\eta$$
è olomorfa e $F'(z) = f(z)$.
>[!tldr]
>$F(z)$ è una primitiva rispetto ad $f(z)$.

