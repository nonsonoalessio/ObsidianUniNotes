*Argomento di afferenza: [[Funzioni complesse]].*
***
# Singolarità
## Definizione
Sia $f: \mathbb{A} \subseteq \mathbb{C} \rightarrow \mathbb{C}$
* $\mathbb{A}$ [[Funzioni in due Variabili#^270173|aperto]]
* $z_0 \in \mathbb{A}$
Allora, se $f$ non è derivabile in $z_0$, $z_0$ è un *punto singolare* o *singolarità*.
Se $z_0 \in \mathbb{C}$, si parla di *singolarità al finito*.
Se $z_0 = \infty$, si parla di *singolarità all'infinito*.
Si distinguono inoltre le singolarità:
* *isolate*, quando esiste un intorno di $z_0$ in cui **non** cadono altre singolarità;
* *non isolate*, quando se in ogni intorno di $z_0$ cade almeno un'altra singolarità.

## Classificazione delle singolarità
### Eliminabile
$$\lim_{z \rightarrow z_0} f(z) = l \in \mathbb{C}$$
### Polo

^45ad2a

$$\lim_{z \rightarrow z_0} \left| f(z) \right| = + \infty$$
Bisogna anche controllare l'ordine del polo.
$z_0$ è un polo di ordine $n (\in \mathbb{N})$ se:
$$\lim_{z \rightarrow z_0} f(z)(z-z_0)^n = l \neq 0$$
$$\lim_{z \rightarrow z_0} \left| f(z)(z-z_0)^{n-1} \right| = + \infty$$
* $n = 1$ è un *polo semplice*;
* $n=2$ è un *polo doppio*.
### Essenziale
$$\nexists \lim_{z \rightarrow z_0} \left| f(z) \right|$$