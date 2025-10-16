*Argomento di afferenza: [[Funzioni in due Variabili]].*
***
# Derivate parziali
$$f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}, \ (x_0, y_0) \in \mathbb{A}$$
* $$f_x (x_0, y_0) = \lim_{x\rightarrow x_0} \frac{f(x, y_0) - f(x_0, y_0)}{x-x_0}$$
* $$f_y (x_0, y_0) = \lim_{y\rightarrow y_0} \frac{f(y, x_0) - f(x_0, y_0)}{y-y_0}$$
Se esistono $f_x e f_y$ in $(x,y)$, $f$ è derivabile in $(x,y)$.
$f$ è derivabile in $\mathbb{A}$ se è derivabile in ogni $(x,y) \in \mathbb{A}$.
### Interpretazione geometrica
![[derIntGraph.png]]

***
## Gradiente
Se $f$ è derivabile in $(x,y)$, si definisce *gradiente* in $(x,y)$:
$$\nabla f (x,y) = D \ f(x,y) = grad \ f(x,y) = \left(f_x(x,y), f_y(x,y) \right)$$
>[!TLDR] Gradiente
>Quando non nullo, indica la direzione e il verso di massima crescita della funzione, a partire dal punto ove lo si calcola.

***
## Derivata direzionale
Sia $\lambda = (\alpha, \beta)$ una direzione.
>[!tip] Concetto di direzione
>Essere una *direzione* implica avere modulo 1. Concetto simile al versore.

$f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$, dove $\mathbb{A}$ è un aperto.
$f$ ammette derivata direzionale in $(x,y)$ nella direzione $\lambda$ se esiste finito:
$$\lim_{h \rightarrow 0} \frac{f \left(x + \alpha h, y + \beta h \right) - f(x,y)}{h} = f_{\lambda} (x,y) = \frac{\partial f (x, y)}{\partial \lambda} = D_{\lambda} f (x,y)$$
***
## Derivate di ordine successivo (o "successive")
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$, con $\mathbb{A}$ aperto e $f$ derivabile in $\mathbb{A}$.
Se esistono $fx, \ fy$, queste possono essere derivabili a loro volta.

### Derivate pure
* $$\frac{\partial}{\partial x} f_x = \frac{{\partial}^2}{\partial {x^2}} f = f_{xx}$$
* $$\frac{\partial}{\partial y} f_y = \frac{{\partial}^2}{\partial {y^2}} f = f_{yy}$$
### Derivate miste
* $$\frac{\partial}{\partial y} f_x = \frac{{\partial}^2}{\partial y \partial x} f = f_{xy}$$
* $$\frac{\partial}{\partial x} f_y = \frac{{\partial}^2}{\partial x \partial y} f = f_{yx}$$
### Matrice Hessiana
$$D^2 \ f = \begin{pmatrix}
f_{xx} & f_{xy} \\
f_{yx} & f_{yy}
\end{pmatrix}$$
Se $D^2 \ f$ è definita in $(x,y)$, allora $f$ è derivabile 2 volte in $(x,y)$.
Se $D^2 \ f$ è definita in $(x,y) \ \forall(x,y)$, allora $f$ è derivabile 2 volte in $\mathbb{A}$.
>[!tip] Derivate miste
>Solitamente $f_{xy}$ è diversa da $f_{yx}$.

***
### Teorema di Schwarz
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$
* $\mathbb{A}$ aperto;
* $(x_0, y_0) \in \mathbb{A}$;
* $f$ derivabile 2 volte in $\mathbb{A}$.
Se $f_{xy}$ e $f_{yx}$ sono continue in $(x_0, y_0)$, allora $f_{xy} (x_0, y_0) = f_{yz} (x_0, y_0)$.
>[!danger] Continuità e derivabilità
>Il fatto che $f$ sia continua in $(x_0,y_0)$ non garantisce che $f$ sia anche derivabile; non è garantito nemmeno il viceversa.
