*Argomento di afferenza: [[Funzioni complesse#^987c11|Olomorfia]].*
***
# Condizione necessaria e sufficiente di olomorfia
Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$
* $A$ [[Funzioni in due Variabili#^270173|aperto]];
* $f = u + i \ v$;
* $z_0 x_0 + i \ y_0$
Allora $f$ è derivabile in $z_0$ $\iff$ $u$ e $v$ sono [[Differenziabilità|differenziabili]] in $(x_0, y_0)$ e valgono le *condizioni di Cauchy-Riemann*, che sono le seguenti:
$$
\begin{cases}
u_x(x_0, y_0) = v_y(x_0, y_0)
\\
u_y(x_0, y_0) = - v_x(x_0, y_0)
\end{cases}
$$
Inoltre:
$$f'(z_0) = u_x(x_0, y_0) + i v_x(x_0, y_0) = v_y(x_0, y_0) - i u_y(x_0, y_0)$$
## Dimostrazione
Se $f$ è derivabile in $z_0$, allora esiste finito:
$$\lim_{z \rightarrow z_0} \frac{f(z) - f(z_0)}{z- z_0} = \lim_{(x,y) \rightarrow (x_0, y_0)} \frac{u(x,y) + i \ v (x,y) - u(x_0, y_0) - i \ v(x_0, y_0)}{x - x_0 + i(y - y_0)} =$$
Si associa:
* a $z$ il punto di coordinate $(x,y)$;
* a $z_0$ il punto di coordinate $(x_0, y_0)$:
$$= \lim_{(x,y) \rightarrow (x_0, y_0)} \left[\frac{u(x,y) - u(x_0, y_0)}{x-x_0 + i(y-y_0)} + i \frac{v(x,y) - v(x_0, y_0)}{x-x_0} \right]$$
Si considerano, poi, due direzioni particolari lungo cui il limite dev'essere uguale:
1. $y = y_0 \quad x \rightarrow x_0$:
$$\lim_{x \rightarrow x_0}\left[\frac{u(x,y_0)-u(x_0, y_0)}{x-x_0} + i \frac{v(x,y_0)-v(x_0,y_0)}{x-x_0} \right] = u_x(x_0, y_0) + i \ v_x(x_0,y_0)$$
2. $x = x_0 \quad y \rightarrow y_0$: $$\lim_{x \rightarrow x_0}\left[\frac{u(x_0,y)-u(x_0, y_0)}{i(y-y_0)} + \cancel{i} \frac{v(x_0,y)-v(x_0,y_0)}{\cancel{i}(y-y_0)} \right] = -i u_y(x_0, y_0) +  v_y(x_0,y_0)$$
I due rapporti sono le derivate parziali di $u$ e $v$ rispetto a $x$ e $y$.
Pur essendo uscite due equazioni differenti, il limite dev'essere uguale e finito. Si impone dunque che i due numeri complessi siano uguali e si ottengono così le condizioni di Cauchy-Riemann:
$$\lim_{z \rightarrow z_0} \frac{f(z) - f(z_0)}{z - z_0} = f'(z_0)$$
$$u_x(x_0, y_0) + i v_x(x_0, y_0) = -iu_y(x_0, y_0) + v_y(x_0, y_0) \Rightarrow
\begin{cases}
u_x(x_0,y_0) = v_y(x_0, y_0)
\\
v_x (x_0, y_0) = - u_y(x_0, y_0)
\end{cases}
$$
 