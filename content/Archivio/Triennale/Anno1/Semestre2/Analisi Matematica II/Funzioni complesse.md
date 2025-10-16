*Questo argomento è stato trattato in #analisiMatematicaII.*
*Fa parte della collezione: #analisiMatematicaII-analisiComplessa.*
***
# Funzioni complesse
*Funzioni complesse di variabile complessa.*
$$f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$$
$$z = x + iy \rightarrow f(x + iy) = u (x,y) + iv (x,y) \quad \quad u, v: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$$
Dove:
* $u$ parte reale;
* $v$ parte immaginaria.
>[!danger] Funzione limitata
> Una funzione complessa è limitata quando $u(x,y)$ e $v(x,y)$ sono limitate.

***
## Limite
Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$ con $z_0$ [[Funzioni in due Variabili#^a0e74a|punto di accumulazione]] per $\mathbb{A}$.
Allora:
$$\lim_{z \rightarrow z_0} f(z) = l \iff \forall \ \mathbb{I}' \in \partial (l) \ \exists \ \mathbb{I} \in \mathcal{I}(z_0): f(z) \in \mathbb{I}' \ \forall z \in \mathbb{A} \ \cap \ \mathbb{I} \backslash \left\{z_0 \right\}$$
$$\lim_{z \rightarrow z_0} f(z) = l \iff \forall \ \varepsilon > 0 \ \exists \ \delta_{\varepsilon} > 0 : \left| f(z) - l \right| < \varepsilon \ \forall z \in \mathbb{A}: 0 < \left| z - z_0 \right| < \delta_{\varepsilon}$$
$$\left| z -z_0 \right| = \sqrt{(x-x_0)^2 + (y - y_0)^2} = \delta_{\varepsilon}$$
>[!danger] Limite
>$$l = l_1 + i \ l_2$$

> [!tip] Limite
> Questo significa che se $z_0$ si trova in una circonferenza di centro $(x_0, y_0)$ e raggio $\delta_{\varepsilon}$, allora $f(z)$ si trova in una conferenza di centro $(l_1, l_2)$ e di raggio $\varepsilon$. 

***
## Continuità
Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$, con $z_0 \in \mathbb{A}$ punto di accumulazione per $\mathbb{A}$.
Allora $f$ è continua in $z_0$ se:
$$\lim_{z \rightarrow z_0} f(z) = f(z_0)$$
***
## Derivabilità
Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$:
* $A$ [[Funzioni in due Variabili#^270173|aperto]];
* $z \in \mathbb{A}$.
### Premesse
$$\Delta z = \Delta x + i \ \Delta y : \ + \Delta z \in \mathbb{A}$$
Si definisce il *rapporto incrementale* come:
$$\frac{f(z+\Delta z) - f(z)}{\Delta z}$$
Allora:
$f$ derivabile in $z$ se esiste finito:
$$\lim_{\Delta z\rightarrow 0} \frac{f(z+\Delta z) - f(z)}{\Delta z} = f'(z) = D f(z)$$
>[!success] Olomorfia
>Quando $f$ è derivabile $\forall \ z \in \mathbb{A}$, allora $f$ è **olomorfa** in $\mathbb{A}$.
>Se $f$ è derivabile in $\mathbb{C}$, allora $f$ è olomorfa *intera*.

>[!tip] Derivate, olomorfia ed operazioni
>Date: 
> - $f_1$, $f_2$ olomorfe;
> - $c_1$, $c_2$ $\in \mathbb{C}$
> Allora:
> - $c_1 f_1 + c_2 f_2$ **olomorfa** *la somma di funzioni olomorfe restituisce una funzione olomorfa*;
> - $f_1 \cdot f_2$ **olomorfa**;
> - $\displaystyle \frac{f_1}{f_2}$ **olomorfa** (con $f_2 \neq 0$ necessariamente).
> Inoltre:
> - $D(c_1 f_1 + c_2 f_2)(z) = c_1 f_1 '(z) + c_2 f_2 '(z)$
> - $D(f_1 \cdot f_2)(z) = f_1 '(z) \cdot f_2 (z) + f_1(z) f_2 '(z)$ *classica derivata di un prodotto*;
> - $\displaystyle D \left(\frac{f_1}{f_2} \right)(z) = \frac{f_1 '(z) f_2 (z) - f_1 (z) f_2 '(z)}{{f_2(x)}^2}$ *classica derivata di un quoziente*.


