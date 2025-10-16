*Argomento di afferenza: [[Differenziabilità]].*
***
# Condizione sufficiente del secondo ordine per massimi e minimi relativi
### Notazione
$$
H f(x,y) = detD^2f(x,y)= 
\begin{vmatrix}
f_{xx}(x,y) & f_{xy}(x,y) \\
f_{yx}(x,y) & f_{yy}(x,y)
\end{vmatrix}
$$
Se $f \in C^2 (\mathbb{A}) \Rightarrow f_xy = f_yx$
$H f (x,y) = f_{xx}(x,y) f_{yy}(x,y) - {f_{xy}}^2(x,y)$
***
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$
* $f \in C^2(\mathbb{A})$;
* $(x_0, y_0)$ punto interno
Allora, il punto critico è - al verificarsi delle condizioni elencate:
* **Punto di minimo relativo**:
    $$
\begin{cases}
\displaystyle \nabla f(x_0, y_0) = (0,0)
\\
\displaystyle Hf(x_0, y_0) > 0
\\
\displaystyle f_{xx} (x_0, y_0) > 0
\end{cases}
$$
* **Punto di massimo relativo**:
    $$
\begin{cases}
\displaystyle \nabla f(x_0, y_0) = (0,0)
\\
\displaystyle Hf(x_0, y_0) > 0
\\
\displaystyle f_{xx} (x_0, y_0) < 0
\end{cases}
$$
* **Punto di sella**:
    $$
\begin{cases}
\displaystyle \nabla f(x_0, y_0) = (0,0)
\\
\displaystyle Hf(x_0, y_0) < 0
\end{cases}
$$
>[!tldr] Massimi e minimi
>Le condizioni per massimi e minimi relativi presentano che le derivate pure (riportato c'è $f_{xx}$, ma il discorso vale anche per $f_{yy}$) siano rispettivamente negative e positive.
>Lo schema:
>- derivata pura **negativa** dà un **massimo** (- $\rightarrow$ +);
>- derivata pura **positiva** dà un **minimo** (+ $\rightarrow$ -).

>[!danger] E se il determinante è 0?
>Per stabilire la natura di $(x_0, y_0)$ si dovrà studiare la funzione in un intorno del punto.

