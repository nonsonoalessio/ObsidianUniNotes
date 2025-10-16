*Argomento di afferenza: [[A3. Corrente elettrica]].*
***
*Nota: la presente dimostrazione vale per i termini locali.*

# Equazione di continuità della corrente

>[!tldr] Equazione di continuità della corrente
>L'equazione di continuità della corrente esprime in forma locale il principio di conservazione della carica elettrica.

Si consideri un volume $\tau$ racchiuso in una superficie $S$, con $\vec{n}$ versore orientato perpendicolarmente alla superficie in ogni suo punto:
$$i = \oint \vec{J} \cdot \vec{n} d S$$
Si hanno diversi casi:
$$\begin{cases}
\vec{J} \cdot d S < 0 \qquad q_+ \ \text{esce oppure} \ q_- \ \text{entra}
\\
\vec{J} \cdot d S < 0 \qquad q_+ \ \text{entra oppure} \ q_- \ \text{esce}
\end {cases}
$$
Per il principio di conservazione della carica:
$$i = \int_S \vec{J} \cdot dS = - \frac{\Delta q_{\text{int}}}{\Delta t}$$
%%Se l'integrale è positivo, la carica positiva interna diminuisce e la derivata è negativa.%% Indicando con $\rho$ la variazione temporale della densità di carica:
$$q_{\text{int}} = Q(t) = \int_{\tau} \rho (x,y,z,t)$$
Essendo $S$ una superficie chiusa (indipendente dal tempo):
$$\frac{dQ}{dt} = \int_{\tau} \frac{\partial \rho}{\partial t} d \tau$$
Per il teorema della divergenza (applicato al flusso di $\vec{J}$):
$$\int_S \vec{J} \cdot dS = \int_{\tau} \vec{\nabla} \cdot \vec{J} \ d \tau = - \int_{\tau} \frac{\partial \rho}{\partial t} d \tau$$
Questa relazione deve valere a prescindere dal volume considerato; l'uguaglianza degli integrali, dunque, implica l'uguaglianza degli integrandi:
$$- \frac{\partial \rho}{\partial t} = \vec{\nabla} \cdot \vec{J} \equiv \text{div} \vec{J}$$
Cioè:

>[!tip] Equazione di continuità della corrente
$$\vec{\nabla} \cdot \vec{J} + \frac{\partial \rho}{\partial t} = 0$$

## In condizioni stazionarie

La variazione della carica all'interno di un volume può essere causata unicamente dal fluire della carica attraverso la superficie che racchiude il volume. Inoltre, in condizioni stazionarie, tutte le grandezze sono indipendenti dal tempo:
$$\frac{\partial \rho}{\partial t} = 0 \quad \rightarrow \quad \vec{\nabla} \cdot \vec{J} = 0$$
Perciò, integrando su qualsiasi volume fisso $\tau$ di contorno $S$:
$$\int_S\vec{J} \cdot dS = \int_{\tau} \vec{\nabla} \cdot \vec{J} d \tau = 0$$
==Il flusso della densità di corrente $\vec{J}$  attraverso una qualsiasi superficie è nullo==, dunque, in condizioni stazionarie.

>[!tip] Solenoidale: definizione
>La divergenza di un campo vettoriale, quando è nulla, si dice *solenoidale* nel dato dominio spaziale.

Il vettore **densità di corrente** è **solenoidale** in tutto lo spazio.

Come conseguenza - analogamente alla dinamica dei fluidi - la densità di corrente è maggiore dove la sezione è minore, dal momento in cui l'intensità di corrente dev'essere la medesima in ogni sezione del conduttore.