*Questo argomento è stato trattato in #analisiMatematicaII.*
*Fa parte della collezione: #analisiMatematicaII-analisiComplessa.*
***
# Curve
## Definizione
Una curva è un'applicazione continua:
$$\gamma : \mathbb{I} \subseteq \mathbb{R} \rightarrow {\mathbb{R}}^n$$
**Rappresentazione parametrica di una curva generica**:
$$
\begin{cases}
x_1 = x_1 (t)
\\
x_2 = x_2 (t)
\\
(...)
\\
x_n = x_n (t)
\end{cases}
\quad t \in \mathbb{I}
$$
#### Curve piane
$$\gamma: \mathbb{I} \subseteq \mathbb{R} \rightarrow {\mathbb{R}}^2$$
**Rappresentazione parametrica di una curva piana**:
$$
\begin{cases}
x = x(t)
\\
y = y(t)
\end{cases}
\quad t \in \mathbb{I}
$$
>[!tip] Osservazione
>Con $\mathbb{I} = [a,b]$ si indica una rappresentazione parametrica con un verso di percorrenza determinato, da $\gamma (a) = (x(a), y(a))$ a $\gamma (b) = (x(b), y(b))$.

>[!bug] Orientamento: convenzione
>Convenzionalmente, il verso positivo è quello in senso **antiorario**.

>[!bug] Frontiera: convenzione
>Convenzionalmente, la [[Funzioni in due Variabili#^d0f59a|frontiera]] di un dominio è orientata positivamente se "un omino che la percorre" ha il dominio alla sua sinistra.
>![[orientFrontiera.png]]

***
### Curva semplice
Una curva si dice *semplice* se $\forall \ t_1, t_2 \in \mathbb{I}$, di cui ==almeno uno interno==, si ha:
$$\gamma(t_1) \neq \gamma (t_2)$$
> [!tldr] Curva semplice
> La curva non passa due volte per lo stesso punto.
> Se la curva è chiusa, allora i due estremi coincidono ($\gamma (a) = \gamma (b)$).

### Curva chiusa
Una curva $\gamma : [a,b] \rightarrow {\mathbb{R}}^2$ si dice *chiusa* se $\gamma (a) = \gamma (b)$.
### Curva regolare
Una curva $\gamma : [a,b] \rightarrow {\mathbb{R}}^2$ si dice *regolare* se $\gamma \in C^1 ([a,b])$ e $\gamma ' (t) = (x'(t), y'(t)) \neq \underline{0} \ \forall \ t \in ]a, b[$.
>[!tldr] Curva regolare
>Non presenta cuspidi o punti angolari (manca il versore tangente in ogni punto della curva).

***
## Connessi
Un [[Funzioni in due Variabili#^270173|aperto connesso]] $\mathbb{A}$ è *semplicemente* conensso se ogni curva chiusa, semplice, regolare a tratti, contenuta in $\mathbb{A}$ è la frontiera di un dominio contenuto in $\mathbb{A}$.
![[semplConn.png]]


