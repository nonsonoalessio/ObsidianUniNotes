*Questo argomento è stato trattato in #analisiMatematicaII.*
***
## Differenziabilità
Sia $f: \mathbb{A} \subseteq {\mathbb{R}}^2 \rightarrow \mathbb{R}$, con $\mathbb{A}$ aperto.
$f$ è *differenziabile* in $(x,y)$ se:
* $f$ è derivabile in $(x,y)$ (ovvero: ne esiste la [[Derivate parziali|derivata]]);
* $\displaystyle \lim_{(h,k) \rightarrow (0,0)} \frac{f(x+h, y+k) - f(x,y) - f_x(x,y) \ \cdot \ h - f_y(x,y)\ \cdot \ k}{\sqrt{h^2 + k^2}} = 0$
Fissato $(x,y)$, si definisce *differenziale* di $f$ in $(x,y)$ l'applicazione lineare:
$$.$$
Se si indica con:
* $dx: {\mathbb{R}}^2 \rightarrow \mathbb{R}$
    * $dx(h,k) = h$
* $dy: {\mathbb{R}}^2 \rightarrow \mathbb{R}$
    * $dy(h,k) = k$
$$\rightarrow df(x,y)=f_x(x,y) \ dx \ + f_y(x,y) \ dy$$
### Interpretazione geometrica
$$f(x+h, \ y+k) = f(x,y) + f_x(x,y) \ \cdot \ h + f_y(x,y) \ \cdot \ k + o \left(\sqrt{h^2+k^2}\right)$$
Fissati $x=x_0$ e $y = y_0$:
$$f(x_0+h, \ y_0+k) = f(x_0, y_0) + f_x(x_0, y_0) \ \cdot \ h + f_y(x_0, y_0) \ \cdot \ k + o \left(\sqrt{h^2+k^2} \right)$$
Fissati $x - x_0 = h$ e $y-y_0 = k$:
$$f(x,y) = f(x_0, y_0) + f_x(x_0,y_0)(x-x_0) + f_y(x_0, y_0)(y-y_0) + o \left(\sqrt{(x-x_0)^2+(y-y_0)^2} \right)$$
**Equazione del piano tangente a $f(x,y)$ in $(x_0, y_0, f(x_0, y_0))$**:
$$z= f(x_0,y_0) + f_x(x_0,y_0)(x-x_0)+f_y(x_0, y_0)(y-y_0)$$
![[diff.png]]