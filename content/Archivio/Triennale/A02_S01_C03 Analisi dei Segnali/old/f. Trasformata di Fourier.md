*Questo argomento è stato trattato in #analisiSegnali *
***
# Trasformata di Fourier
*L'idea dietro la trasformata di Fourier è quella di esprimere un segnale mediante combinazione di segnali elementari. Si sfrutta il fatto che i segnali possano appartenere ad una struttura di [[7. Spazi euclidei|spazio euclideo]].*

>[!tip] Trasformata di Fourier: definizione
>$$X(f) = \int^{+\infty}_{-\infty} x(t) e^{ - j 2 \pi f t} \ dt$$

Con la trasformata di Fourier si passa da un segnale in funzione del tempo $t$, in un segnale in funzione della *frequenza* $f$ (==cambio di dominio==).
## Antitrasforamta di Fourier
>[!tip] Antitrasformata: definizione
>$$x(t) = \int^{\infty}_{-\infty} X(f) e^{j2\pi f t}\ df$$


## Dualismo tempo - funzione
1. Maggiore è il tempo, minore sarà la frequenza; minore sarà il tempo, maggiore sarà la frequenza.
   La frequenza esprime la *banda* richiesta dal segnale, affinché questo possa essere presente su un canale; equivale alla "durata" del segnale in frequenza.
2. Una [[c. Operazioni sui Segnali#^b7582a|convoluzione]] in un dominio corrisponde ad un prodotto nell'altro (e viceversa).
3. Una [[c. Operazioni sui Segnali#^6c8747|modulazione]] in un dominio corrisponde alla [[c. Operazioni sui Segnali#^32be84|replicazione]] nell'altro (e viceversa).
4. Una [[c. Operazioni sui Segnali#^1824d6|traslazione]] (di $- t_0$) corrisponde alla moltiplicazione per un fasore con fase $-2 \pi f t_0$   $$\mathscr{F} [x(t - t_0)] = e^{-j2 \pi f t_0} \mathscr{F} [x(t)]]$$
%%5.%%

## Proprietà della trasformata
