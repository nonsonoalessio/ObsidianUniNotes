*Questo argomento è stato trattato in #analisiMatematicaII.*
***
# Teorema di continuità del limite
## Ipotesi
Data $\{f_k(x)\}_{k \in \mathbb{N}}$: 
* $\ f_k: \mathbb{I} \subseteq \mathbb{R} \rightarrow \mathbb{R}$; 
* $f_K$ continua $\forall k$; 
* $f_k \rightrightarrows f$ in $\mathbb{I}$

## Tesi
$f$ è continua in $\mathbb{I}$.

>[!tldr] Riassunto
>Ciò che in sostanza si vuol dire è che la funzione limite sarà continua nell'insieme $\mathbb{I}$ di convergenza.

## Dimostrazione
$f_k$ continua in $\mathbb{I}$ $\implies F_k$ continua anche in $x_0$, $\forall x_0 \in \mathbb{I} \iff \forall \varepsilon > 0 \exists \delta_{\varepsilon} >0: |f_k(x) - f_k(x_0)| < \varepsilon \forall x \in \mathbb{I}: |x-x_0| < \delta_{\varepsilon}$
$f_k \rightrightarrows f$ in $\mathbb{I} \iff \forall \varepsilon > 0 \exists \mu_{\varepsilon} \in \mathbb{N}: |f_k(x) - f(x)| < \varepsilon \forall x \in \mathbb{I}, \ \forall k > \mu_{\varepsilon}$
Una volta fissato $k_0 > \mu_{\varepsilon}$, bisogna dimostrare che anche $f$ sia continua in $\mathbb{I}$.
Richiamando:
$$\forall \varepsilon > 0 \exists \delta_{\varepsilon}>0: |f(x) - f(x_0)| < \varepsilon \forall x \in \mathbb{I}: |x - x_0|<\delta_{\varepsilon}$$
e fissando $\varepsilon > 0$:
$$|f(x) - f(x_0)| = |f(x) - f_{k_0} + f_{k_0} (x) - f_{k_0} (x_0) + f_{k_0}(x_0) - f(x_0)| \leq |f(x) - f_{k_0}(x)|+ |f_{k_0}(x) - f_{k_0}(x_0)| + |f_{k_0}(x_0) - f(x_0)|$$
>[!NOTE] Speigazione del passaggio (disuguaglianza)
>Ciò avviene in quanto $|a+b| \leq |a| + |b|$, *il valore assoluto è minore della somma dei moduli*.

>[!NOTE] Spiegazione pezzetto $|f(x) - f_{k_0}(x)|$
>$|f(x) - f_{k_0}(x)| < \varepsilon$ è la **definizione** di convergenza *uniforme*.

>[!NOTE] Spiegazione pezzetto $|f_{k_0}(x) - f_{k_0}(x_0)|$
>$|f_{k_0}(x) - f_{k_0}(x_0)| < \varepsilon \ se \ |x-x_0| < \delta_{\varepsilon}$ è la **definizione** di *continuità* di $f_{k_0}$.

>[!NOTE] Spiegazione pezzetto $|f_{k_0}(x_0) - f(x_0)|$
>$|f_{k_0}(x_0) - f(x_0)| < \varepsilon$ è la **definizione** di convergenza *uniforme*.

$$\forall \varepsilon > 0 \exists \delta_{\varepsilon} . 0 : |f(x) - f(x_0)| < 3 \varepsilon \forall x \in \mathbb{I}: |x - x_0| < \delta_{\varepsilon}$$
Per definizione, dunque, $f$ risulta essere continua in $x_0$.