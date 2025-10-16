*Questo argomento è stato trattato in #analisiMatematicaII.*
***
# Equazioni differenziali
*forma implicita:* $F(x,y(x), y'(x),..., y^{n}(x)) = 0$
*forma esplicita:* $y^{n}(x) = f(x, y(x),..., y^{n-1}(x))$


# Premesse
## Integrale
### Generale
Si tratta di una funzione $y = y(x, c_1, c_2, ..., c_n)$, $n$ volte derivabile che soddisfa l'equazione differenziale.

### Particolare
È una soluzione ottenuta assegnando $c_1, c_2,...,c_n$ nell'integrale generale. 

### Singolare
È una soluzione che non è un integrale particolare.
***
## Problema di Cauchy
Sia $(x_0, y_0, {y_0}',...,{y_0}^{n-1}) \in {\mathbb{R}}^{n+1}$ ed $f$ funzione di $n+1$ variabili:
$$
\begin{cases}
y^{(n)}(x) = f(x, y(x), y'(x),...,y^{n-1}(x))
\\
y(x_0) = y_0
\\
y'(x_0) = y'_0
\\
...
\\
y^{n-1}(x_0) = y_0^{(n-1)}
\end{cases}
$$
### Risoluzione globale (o "in grande")
Si determina una soluzione in tutto l'intervallo assegnato in cui è definita l'equazione differenziale.
### Risoluzione locale (o "in piccolo")
Si determina la soluzione in un intorno.
***
# Tipi di equazioni differenziali
## Equazioni differenziali a variabili separabili
>[!info] Forma generale
>$$y'(x) = f(x)g(y)$$

## Equazioni differenziali lineari
>[!info] Forma generale
>$$y^{(n)}(x) + a_{n-1}(x) y^{(n-1)}(x)+...+a_1(x)y'(x) + a_0 (x) y(x) = g(x)$$

* $a_{n-1}, ..., a_1(x), a_0(x)$ sono *coefficienti*;
* $g(x)$ è il termine noto
Si tratta di funzioni continue in $[a,b] \subseteq \mathbb{R}$.
Quando $g(x) = 0$, allora l'equazione si dice *omogenea*.
È detta *lineare* perché l'applicazione $L$ che alla funzione $u$, $n$ volte derivabile in $[a,b]$, associa:
$$L(u) = u^{(n)}(x)+a_{n-1}(x)u^{(n-1)}+...+a_1(x) u'(x) + a_0 (x) u(x)$$
è di tipo *lineare*.
$$L(\alpha u + \beta v) = \alpha L (u) + \beta L (v), \ \forall \ \alpha, \beta \in \mathbb{R}$$
$u$ e $v$ sono delle funzioni.
>[!tip] Osservazione
>Se $u$ è soluzione dell'equazione differenziale lineare omogenea associata, allora $L(u) = 0$.
>Se $u$ e $v$ sono soluzioni dell'equazione differenziale omogenea, allora $\alpha u + \beta v$ è anch'essa soluzione.
>$$L(\alpha u + \beta v) = \alpha L (u) + \beta L (v) = \alpha \ \cdot \ 0 + \beta \ \cdot \ 0 = 0$$

**Integrale generale della non omogenea**:
$$y(x) = y_0(x) + y_p(x)$$
* $y_0(x)$ è l'integrale generale dell'omogenea associata;
* $y_p(x)$ è l'integrale particolare della non omogenea.

### Equazioni differenziali lineari del primo ordine a coefficienti variabili.
> [!info] Forma generale
> $$y'(x) + a_0 (x) y(x) = g(x)$$

### Equazioni differenziali lineari a coefficienti costanti
#### Omogenee
> [!info] Forma generale
> $$y^{(n)} (x) + a_{n-1} y^{(n-1)}(x) + ... + a_1 y'(x) + a_0 y(x) = 0$$

**Equazione caratteristica**;
$$P(\lambda) = \lambda^n + a_{n-1} \lambda^{n-1} + ... + a_1 \lambda + a_0 = 0$$
Dove $\lambda$ indica il *polinomio caratteristico*.
$y = e^{\alpha x}$ è soluzione dell'equazione differenziale $\iff P(\lambda) = 0$.
Qualora $P(\lambda)$ avesse $n$ soluzioni reali distinte, allora $e^{\lambda_1 x}, e^{\lambda_2 x},..., e^{\lambda_n x}$ sono soluzioni dell'equazione differenziale:
$$y_0(x) = c_1 e^{\lambda_1 x} + c_2 e^{\lambda_2 x} + ... + c_n e^{\lambda_n x}$$
Se $P(\alpha) = 0$ con molteplicità algebrica ($m.a. (\alpha)$) pari ad $m$, allora $e^{\alpha x}, xe^{\alpha x},..., x^{m-1}e^{\alpha x}$ sono soluzioni dell'equazione differenziale.
Se $P(\alpha \pm i \beta) = 0$ con $m.a.(\alpha + i \beta) = m$, allora sono soluzioni dell'equazione differenziale:
$$e^{\alpha x} \cos \beta x, x e^{\alpha x} \cos \beta x, ..., x^{m-1}e^{\alpha x} \cos \beta x$$
$$e^{\alpha x} \sin \beta x, x e^{\alpha x} \sin \beta x, ..., x^{m-1}e^{\alpha x} \sin \beta x$$
#### Non omogenee
> [!info] Forma generale
> $$y^{(n)} (x) + a_{n-1} y^{(n-1)}(x) + ... + a_1 y'(x) + a_0 y(x) = f(x)$$

Si risolvono con il *metodo della somiglianza*.
$$f(x) = e^{\alpha x} P_k(x)$$
* $P_k(x)$ indica un polinomio di grado $k$ in $x$.
Qualora $P(\alpha) \neq 0$:
    $\displaystyle y_p(x) = e^{\alpha x} q_k(x)$, dove $q_k(x)$ è un polinomio di grado $k$ i cui coefficienti si determinano imponendo che sia soluzione dell'equazione differenziale non omogenea.
Qualora $P(\alpha) = 0, \ m.a.(\alpha) = m$:
    $y_p(x) = x^m e^{\alpha x} q_k (x)$

> [!bug] Caso particolare $f(x) = p_k(x)$
> $$f(x) = e^{\alpha x} \left[p_k(x) \cos (\beta x) + q_h (x) \sin (\beta x) \right]$$
> Se $P(\alpha \pm i \beta) \neq 0$:
>     - $\displaystyle y_p(x) = e^{\alpha x} \left[r_t(x) \cos (\beta x) + s_t \sin (\beta x) \right]$
> Se $P(\alpha + i \beta) = 0, \ m.a.(\alpha + i \beta) = m$: 
>     -  $\displaystyle y_p(x)= x^m e^{\alpha x}\left[r_t(x) \cos (\beta x) + s_t(x) \sin(\beta x) \right]$
>    
> Dove $t$ è il massimo grado tra $h$ e $k$.



