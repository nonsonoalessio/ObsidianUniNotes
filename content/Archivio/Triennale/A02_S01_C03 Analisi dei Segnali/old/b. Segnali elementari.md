*Questo argomento è stato trattato in #analisiSegnali.*
***
# Segnali elementari

## Finestra (o impulso) rettangolare
>[!tip] Finestra rettangolare
>$$
>\Pi (t) = \begin{cases}
1 \ se \ |t| < 0.5 \\
0 \ se \ |t| > 0.5
\end{cases}
>$$

>[!tip] Finestra rettangolare centrata in $t_0$, di ampiezza $A$ e durata $T$
>$$
>x(t) = A \Pi \left(\frac{t - t_0}{T} \right)
>$$

![[IMG_0679.jpeg]]
>[!danger] E in $\frac{1}{2}$?
>Quando il segnale è definito in questo modo, **non è noto**, in alcun modo, il comportamento nel punto 0.5.
***

## Gradino unitario
>[!tip] Gradino unitario, caso continuo
>$$
>u(t) = \begin{cases}
>1 \ se \ t > 0
>\\
>0 \ se \ t < 0
>\end{cases} 
>$$

>[!tip] Gradino unitario, caso discreto
>$$
>u(t) = \begin{cases}
>1 \ se \ n \geq 0
>\\
>0 \ se \ n < 0
>\end{cases} 
>$$

![[IMG_0681.jpg]]

>[!danger] Combinazioni di gradini
>Mediante la combinazioni di due gradini ==di uguale ampiezza==, è possibile ottenere delle finestre rettangolari.
>$$\Pi \left(\frac{t}{T} \right) = u \left(t + \frac{T}{2} \right) - u \left(t - \frac{T}{2} \right)$$
***
## Segnale sinusoidale
>[!tip] Sinusoide: definizione
>$$x(t) = A \cos (2 \pi f_0 t + \theta)$$
>**Parametri**:
>- $A$: ampiezza;
>- $f_0$: frequenza;
>- $\theta$: fase.
>NB. *Il segnale sinusoidale è periodico. $T_0 = \frac{1}{f_0}$.*
***
## Fasore (o "esponenziale complesso")
>[!tip] Esponenziale complesso: definizione
>$$x (t) = Ae^{j(2 \pi f_0 t + \theta)}$$
***
## Finestra triangolare
>[!tip] Finestra triangolare: definizione
>$$\Lambda (t) = \begin{cases}
>t + 1 \ -1 \leq t \leq 0
>\\
>-t + 1 \ 0 \leq t \leq 1
>\\
>0 \ \text{altrimenti}
>\end{cases}
>$$
***
## Sinc
>[!tip] Segnale sinc: definizione
>$$sinc (t) = 
>\begin{cases}
>\frac{sin(\pi t)}{\pi t} \ t \neq 0
>\\
>1 \ t = 0
>\end{cases}
>$$
***
## Impulso o Delta
>[!tip] Impulso (o Delta - di Dirac): definizione
>$$\int^{+ \infty}_{- \infty} \phi (t) \delta (t) \ dt = \phi (0)$$

L'impulso è un modello per rappresentare dei fenomeni con una durata prossima allo zero (e che, per ragioni pratiche, può essere fatta valere proprio zero).
È bene specificare che ==la delta non è una funzione, ma una *distribuzione* (o *funzione generalizzata*)==.
Mediante la delta, si riesce ad estrarre il valore di un certo segnale nel punto zero.

### Proprietà della delta
1. $\delta (t) = 0 \forall t \neq 0$
    1. $\delta (0) = \infty$
2. $x(t) \delta (t - t_0) = x(t_0) \delta (t - t_0)$
3. $\forall \phi (t)$ continua in $t_0$, $\displaystyle \int^{\infty}_{- \infty} \phi(t) \delta (t - t_0) \ dt = \phi(t_0)$
4. $\forall a \neq 0$, $\delta (at) = \frac{1}{|a|} \delta (t)$
5. La [[c. Operazioni sui Segnali#^b2f9ec|convoluzione]] della delta con qualsiasi segnale, è il segnale stesso.
    1. La convoluzione con $\delta (t - t_0)$ è il segnale traslato a destra di $t_0$. 