*Argomento di afferenza: [[Funzioni complesse]].*
***
# Derivabilità implica continuità
*Per funzioni complesse.*
$f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$
Allora se $f$ è derivabile in $z_0$, allora $f$ è continua in $z_0$.

## Dimostrazione
$f$ è continua in $z_0$ se:
$$\lim_{z \rightarrow z_0} f(z) = f(z_0) \iff \lim_{z \rightarrow z_0} \left[f(z) - f(z_0) \right] = 0$$
L'idea è quella di voler ricostruire il rapporto incrementale, moltiplicando e dividendo per $z-z_0$:
$$\lim_{z \rightarrow z_0} \left[f(z) - f(z_0) \right] = \lim_{z \rightarrow z_0} \frac{f(z) - f(z_0)}{z -z_0} (z - z_0) = f'(z_0) \cdot 0 = 0$$
Quindi $f$ è derivabile in $z_0$ ed è anche continua.