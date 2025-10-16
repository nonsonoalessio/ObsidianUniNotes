*Questo argomento è stato trattato in #analisiMatematicaII.*
***
# Funzioni in due variabili
## Topologia
### Intorno circolare
Sia $(x_0, y_0) \in {\mathbb{R}}^2$. Un *intorno circolare* di $(x_0, y_0)$ è un cerchio centrato in $(x_0, y_0)$ e di raggio $\delta > 0$, ==privato della circonferenza==.

>[!Tldr] Cerchio senza circonferenza
>Si considera solo l'area, senza il perimetro ("il bordo").

>[!info] Scrittura matematica
>$$(x - x_0)^2 + (y-y_0)^2 = {\sigma}^2$$
>$$\mathbb{I}_{\delta} (x_0, y_0) = \left\{(x,y) \in {\mathbb{R}}^2: \ \sqrt{(x-x_0)^2 + (y-y_0)^2} < \delta \right\}$$

![[intornoCircolare.png]]

### Punto di frontiera

^d0f59a

Sia $\mathbb{A} \subseteq {\mathbb{R}}^2$, $(x_0, y_0) \in {\mathbb{R}}^2$.
$(x_0, y_0)$ è un punto (rispetto ad $\mathbb{A}$):
    - **interno** se $\exists \ \mathbb{I}_{\delta} (x_0, y_0)$ contenuto in $\mathbb{A}$;
    - **esterno** se $\exists \ \mathbb{I} (x_0, y_0)$ contenuto in ${\mathbb{R}}^2 \backslash \mathbb{A}$
    - **di frontiera** se in ogni $\mathbb{I} (x_0, y_0)$ cadono sia punti di $\mathbb{A}$ che del suo complementare.

![[inOutFront.png]]

### Aperto

^270173

Sia $\mathbb{A} \subseteq {\mathbb{R}}^2$. Diremo che $\mathbb{A}$ è *aperto* se $\forall (x,y) \in \mathbb{A}$ esiste $\mathbb{I}_{\delta} (x_0, y_0)$ contenuto in $\mathbb{A}$.
Diciamo che $\mathbb{A}$ è *chiuso* se ${\mathbb{R}}^2 \backslash \mathbb{A}$ è aperto.

![[apertoChiuso.png]]

>[!Tip] Aperto e chiuso
>* ${\mathbb{R}}^2$ aperto $\rightarrow$ ${\mathbb{R}}^2 \backslash {\mathbb{R}}^2 = \emptyset$ è chiuso;
>* $\emptyset$ aperto $\rightarrow$ ${\mathbb{R}}^2 \backslash \emptyset = {\mathbb{R}}^2$ è chiuso;
>* ${\mathbb{R}}^2$ e $\emptyset$ sono sia chiusi che aperti.

### Limitato
Sia $\mathbb{A} \subset {\mathbb{R}}^2$.
Si dice *limitato* se $\exists \ M > 0: \ \sqrt{x^2 + y^2} < M \ \forall(x-y) \in \mathbb{A}$.

![[limitato.png]]

### Compatto
$\mathbb{A} \subset {\mathbb{R}}^2$ è *compatto* se è ==chiuso e limitato==.

### Connesso
Sia $\mathbb{A} \subseteq {\mathbb{R}}^2$ aperto. $\mathbb{A}$ si dice *connesso* se non esistono 2 aperti ==non vuoti== e ==disgiunti== la cui unione sia $\mathbb{A}$.

![[connesso.png]]

### Punto di accumulazione

^a0e74a

Sia $\mathbb{A} \subseteq {\mathbb{R}}^2$, $(x_0, y_0) \in {\mathbb{R}}^2$ è un *punto di accumulazione* per $\mathbb{A}$ se in ogni $\mathbb{I}_{\delta} (x_0, y_0)$ cade almeno un punto di $\mathbb{A}$ diverso da $(x_0, y_0)$.

>[!info] Scrittura matematica
>$$\mathbb{A} \cap \mathbb{I}_{\delta}(x_0, y_0) \backslash \left\{(x_0, y_0) \right\} \neq \emptyset$$
>

>[!tip] Se non è un punto di accumulazione?
>Se $(x_0, y_0) \in \mathbb{A}$ ma non è punto di accumulazione, si parla allora di *punto isolato*.

### Chiusura
Sia $\mathbb{A} \subseteq {\mathbb{R}}^2$. Si dice *chiusura* di $\mathbb{A}$ ($\bar{\mathbb{A}}$) l'insieme costituito da $\mathbb{A}$ e dai suoi punti di accumulazione.
>[!NOTE] In aggiunta...
>$$\bar{\mathbb{A}} = \mathbb{A} \cup \partial \mathbb{A}$$

### Dominio
Un *dominio* è la chiusura di un insieme aperto.


***
## Operazioni
### Limite
Sia $f: \ \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$ e $(x_0, y_0)$ un punto di accumulazione per $\mathbb{A}$.
$$\lim_{(x, y) \rightarrow (x_0, y_0)} f(x,y) = l \iff \forall \ \mathbb{I}' \in J(l) \exists \ \mathbb{I}_{\delta} (x_0, y_0): f(x,y) \in \mathbb{I}' \forall (x,y) \in \mathbb{A} \cap I_{\delta} (x_0, y_0) \backslash \left\{(x_0, y_0) \right\}$$
Dove $J(l)$ è l'*insieme degli intorni* di $l$.
Sia $l \in \mathbb{R}$.
**Limite finito:**
$$\lim_{(x,y)\rightarrow (x_0, y_0)} f(x,y) = l \iff \forall \varepsilon > 0 \exists \delta > 0: \ \left| f(x,y) - l \right| < \varepsilon \forall (x, y) \in \mathbb{A}: \ 0 < \sqrt{(x - x_0)^2 + (y-y_0)^2} < \delta$$
**Limite non finito:**
$$\lim_{(x,y) \rightarrow (x_0, y_0)} f(x,y) = + \infty \iff \forall \ M > 0 \ \exists \ \delta > 0: f(x,y) > M \ \forall (x,y) \in \mathbb{A}: 0 < \sqrt{(x-x_0)^2 + (y-y_0)^2} < \delta$$
>[!danger] Condizione necessaria per l'esistenza del limite
>$$\lim_{(x,y)\rightarrow (x_0,y_0)} f(x,y) = l \ (l \in \mathbb{R}) \iff \forall \varepsilon > 0 \exists \delta > 0: \ \left| f(x,y) - l \right| < \varepsilon \forall (x,y) \in \mathbb{A}: 0 < \sqrt{(x-x_0)^2 + (y-y_0)^2 < \delta}$$
#### Interpretazione geometrica
$$\lim_{(x,y) \rightarrow (x_0, y_0)} f(x,y) = l \iff \forall \ \varepsilon > 0 \ \exists \ \delta > 0: \left| f(x,y) - l \right| < \varepsilon \ \forall (x,y) \in \mathbb{A}: 0 < \sqrt{(x-x_0)^2 + (y-y_0)^2} < \delta$$
$$y = y_0 + m(x-x_0)$$
Si tratta di una retta passante per $(x_0, y_0)$ con coefficiente angolare $m$.

![[limIntGeom.png]]

$$\forall \ \varepsilon >0 \ \exists \ \delta >0 : \left| f((x,y_0) + m(x-x_0)) -l \right| < \varepsilon \ \forall \ x : 0 < \sqrt{(x-x_0)^2 + m^2(x-x_0)^2} < \delta$$
Di conseguenza:
$$0 < \left| x - x_0 \right| \ \cdot \ \sqrt{1+m^2} < \delta \iff \left| x - X-0 \right|  < \frac{\delta}{\sqrt{1+m^2}}$$
In conclusione:
$$\forall \ \varepsilon > 0 \ \exists \ \delta > 0 :\left| f(x,y_0 +m(x-x_0)) -l \right| < \varepsilon \ \forall \ x: \left| x - x_0 \right| < {\delta}'$$
Dove $\displaystyle {\delta}'= \frac{\delta}{\sqrt{1+m^2}}$
***

### Continuità di funzioni
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}, \ (x_0, y_0) \in \mathbb{A}$.
$f$ è continua in $(x_0, y_0)$ se:
$$\forall \varepsilon > 0 \ \exists \ \delta > 0: \left| f(x,y) - f(x_0,y_0) \right| < \varepsilon \ \forall \ (x,y) \in \mathbb{A}$$
$$\sqrt{(x-x_0)^2+(y-y_0)^2} < \delta$$
* Con $(x_0, y_0)$ è punto di ==accumulazione== per $\mathbb{A}$, allora $f$ è continua in $(x_0, y_0)$ se $\lim_{(x,y) \rightarrow (x_0, y_0)} f(x,y) = f(x_0, y_0)$
* Con $(x_0, y_0)$ punto ==isolato== per $\mathbb{A}$, $f$ è continua in $(x_0, y_0)$. 
    
>[!tip] Nota
 >Basta prendere $\mathbb{I}_{\delta}(x_0, y_0)$ in cui non cadono altri punti di $\mathbb{A}$ distinti da $(x_0, y_0)$. $\left| f(x,y) - f(x_0, y_0)\right| = \left| 0 \right| < \varepsilon$.

***
### Derivate parziali
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$:
* $\mathbb{A}$ aperto;
* $(x,y) \in \mathbb{A}$;
* $(x+h, y) \in \mathbb{A}, \ h > 0$.
Allora $f$ ammette derivata parziale rispetto ad $x$ nel punto $(x, y)$ se esiste finito il limite:
$$\lim_{h \rightarrow 0} \frac{f(x,y + h) - f(x, y)}{h} = f_y(x,y) = \frac{\partial f}{\partial y} = D_y \ f(x,y)$$