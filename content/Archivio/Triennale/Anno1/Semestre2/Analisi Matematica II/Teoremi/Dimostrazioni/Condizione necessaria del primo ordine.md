*Argomento di afferenza: [[Massimi e minimi relativi]].*
***
# Condizione necessaria del primo ordine
$f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$
* $(x_0, y_0)$ punto interno;
* $f$ derivabile in $(x_0, y_0)$;
* $(x_0, y_0)$ punto di massimo o minimo relativo

Allora $\nabla f(x_0, y_0) = (0,0)$

## Dimostrazione
Sia $(x_0, y_0)$ punto di massimo relativo. Quindi:
$$\exists \ \mathbb{I}_{\delta}: f(x,y) \leq f(x_0, y_0) \ \forall(x,y) \in \mathbb{A}  \cap \mathbb{I}_{\delta}(x_0, y_0)$$
Fissati:
* $y = y_0$;
* $F(x) = f(x, y_0)$
$$f(x, y_0) \leq f(x_0, y_0) \ x_0 - \delta < x < x_0+\delta$$
$$F(x) \leq F(x_0) \ x_0 - \delta < x < x_0 + \delta$$
$x_0$ è un punto di massimo relativo per $F(x)$, quindi:
$$F'(x_0) = f_x(x_0, y_0)$$
>[!danger] Nota
>$f_x(x_0, y_0)$ esiste perché $f$ è derivabile in $(x_0, y_0)$ (per ipotesi).

$x_0$ è un punto di massimo relativo, per $F(x)$, punto interno. $F$ è derivabile in $x_0$:
$$F'(x_0) = 0 \rightarrow f_x(x_0, y_0) = 0$$
Fissando $x = x_0$, in modo analogo si dimostra che $f_y (x_0, y_0) = 0$.
Se $f_x(x_0, y_0) = 0$ e $f_y(x_0, y_0) = 0$, allora:
$$\nabla f(x_0, y_0) = (0,0)$$
Si tratta di un *punto critico o stazionario* di $f$.