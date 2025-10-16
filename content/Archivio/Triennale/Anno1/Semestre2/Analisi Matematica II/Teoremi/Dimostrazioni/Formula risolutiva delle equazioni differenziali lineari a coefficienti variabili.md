*Argomento di afferenza: [[Equazioni differenziali]].*
***
# Formula risolutiva per le equazioni differenziali del primo ordine a coefficienti variabili
$$y'(x) + a_0(x) y(x) = g(x)$$
Si pone:
$$A_0(x) = \int a_0 (x) \ dx$$
$$A_0'(x) = a_0(x)$$
Si moltiplicano entrambi i membri per $e^{A_0(x)}$:
$$y'(x) e^{A_0(x)} + a_0(x) y(x) e^{A_0(x)} = g(x) e^{A_0(x)}$$
$$\frac{d}{dx} \left[ {y'(x) e^{A_0(x)}} \right] = g(x) e^{A_0(x)}$$
$$y(x) e^{A_0(x)} = \int g(x) e^{A_0} x \ dx + c$$
$$y(x) = e^{-A_0(x)} \left(\int g(x)e^{A_0(x)} \ dx + c \right)$$
$$y(x) = e^{\int a_0(x) \ dx} \left(\int g(x) e^{\int a_0(x) \ dx} \ dx + c\right)$$
> [!tip] Se $g(x) = 0$?
> $$y(x) = c e^{-\int a_0 (x) \ dx}$$

