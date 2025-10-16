*Argomento di afferenza: [[Successioni di funzioni]].*
***
# Convergenza di Successioni di Funzioni
*Definizione di **insieme di convergenza**: $X = \{x \in \mathbb{I}: \lim_{k \rightarrow + \infty}f_k(x) = f(x)\}$*.

## Puntuale
Una successione $f_k(x)_{k \in \mathbb{N}}$ converge puntualmente a $f(x)$ in $\mathbb{I}$ ($f_k \rightarrow  f$) se:
$$\lim_{k \rightarrow + \infty} f_k (x) = f(x) \forall x \in \mathbb{I} \iff \forall \varepsilon > 0 \forall x \in \mathbb{I} \ \exists \mu_{\varepsilon, x} \in \mathbb{N} : |f_k(x) - f(x)| < \varepsilon 
\ \forall k > \mu_{\varepsilon, x}$$
Cioè:
$$f(x) - \varepsilon < f_k(x) < f(x) + \varepsilon, \ \forall k > \mu_{\varepsilon, x}$$
### Interpretazione grafica
Fissato un $\varepsilon > 0$ e $x = x_1 \in \mathbb{I} = [a, b]$, si può dire:
$$\exists \mu_{\varepsilon, x_1} \in \mathbb{N}: f(x_1) \ \varepsilon < f_k(x_1) < f(x_1) + \varepsilon \forall k > \mu_{\varepsilon, x_1}$$
![[Immagine 2022-07-04 154433.png]]
***
## Uniforme
$\{f_k(x)\}_{k \in \mathbb{N}}$ converge uniformemente a $f(x)$ in $\mathbb{I}$ ($f_k(x) \rightrightarrows f(x)$) se:
$$\forall \varepsilon > 0 \exists \mu_{\varepsilon} \in \mathbb{N}: |f_K(x) - f(x)| < \varepsilon \forall x \in \mathbb{I}, \forall k > \mu_{\varepsilon}$$
>[!tip] Convergenza uniforme e puntuale: rapporto
>La convergenza uniforme implica la convergenza puntuale, ma non vale il viceversa.


### Osservazione
$$\forall \varepsilon > 0 \exists \mu_{\varepsilon}: \sup\{|f_k(x) - f(x)|: x \in \mathbb{I}\} < \varepsilon \forall k > \mu_{\varepsilon}$$
Quindi:
$$\lim_{k \rightarrow +\infty} \sup\{|f_k(x)-f(x)|: x \in \mathbb{I}\} = 0$$

### Interpretazione grafica
Fissato $\varepsilon > 0$ e $\mathbb{I} = [a, b]$, si può dire:
$$\exists \mu_{\varepsilon} \in \mathbb{N}: f(x) - \varepsilon < f_k(x) < f_k(x) + \varepsilon \forall x \in \mathbb{I} \forall k > \mu_{\varepsilon}$$
![[convUni.png]]
