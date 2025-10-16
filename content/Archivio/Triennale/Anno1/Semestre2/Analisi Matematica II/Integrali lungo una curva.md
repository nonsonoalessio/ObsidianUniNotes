*Argomento di afferenza: [[Curve]], [[Funzioni complesse]].*
***
# Integrali lungo una curva
**Premessa**: *un dominio $D$ è* regolare *se la sua [[Funzioni in due Variabili#^d0f59a|frontiera]] è costituita da un numero finito di curve regolari a tratti.* 

Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$
* continua;
* $\Gamma: [a,b] \subset \mathbb{R} \rightarrow {\mathbb{R}}^2$, curva regolare a tratti (l'immagine della funzione è contenuta in $\mathbb{A}$)
* $\begin{cases} x = x(t) \\ y = y(t) \end{cases} \quad t \in [a,b]$
Data:
$$z(t) = x(t)+iy(t) \quad t \in [a,b]$$
Allora:
$$\int_{\Gamma} f(z) \ dz = \int^{a}_{b} f(z(t)) z'(t) \ dt$$
## Proprietà
* $$\int_{\Gamma} \left[f(z) + g(z) \right] \ dz = \int_{\Gamma} f(z) \ dz + \int_{\Gamma} g(z) \ dz$$
* $$\int_{\Gamma} \lambda f(z) \ dz = \lambda \int_{\Gamma} f(z) \ dz \quad\quad \lambda \in \mathbb{C}$$
* $$\int_{- \Gamma} f(z) \ dz = - \int_{\Gamma} f(z) \ dz$$
> [!Tip] $- \Gamma$
> Indica il verso di percorrenza opposto rispetto all'orientamento della curva.
> 
* $$\int_{\Gamma_1 \cup \ \Gamma_2} f(z) \ dz = \int_{\Gamma_1} f(z) \ dz + \int_{\Gamma_2} f(z) \ dz$$
