*Questo argomento è stato trattato in #fisicaII.* 
***
# La corrente elettrica
## La conduzione elettrica
I materiali [[Conduttori]] sono formati in modo tale da avere gli ionio positivi agli estremi di un reticolo spaziale, al cui interno si muovono gli elettroni liberi.
Il numero di elettroni per unità di volume è espresso dalla formula:
$$n = \frac{N_A \rho}{A}$$
Dove: 
* $n$ rappresenta la densità elettronica;
* $N_a$ è il numero di Avogadro ($N_a = 6.022 \cdot 10^{23}$);
* $\rho$ è la densità del materiale;
* $A$ è il numero di massa del materiale.

### Modello di *Drude-Lorentz*
Il moto degli elettroni liberi avviene in modo disordinato; tuttavia, la velocità media (*di deriva*, NdR) degli elettroni è nulla (e parallela al [[Campo elettrico]] $E$); è espressa dalla formula:
$$\vec{v_m} = \frac{1}{N} \sum_i \vec{v_i} = 0$$
Il tempo medio tra due urti, ripresi successivamente, vengono indicati con la lettera $\tau$, mentre con $l$ si indica il tempo medio di cammino libero (prima, cioè, di un urto).
***
Quando due conduttori isolati e carichi ($C_1$ e $C_2$), a due potenziali distinti, vengono messi in contatto, si ha un [[Campo elettrico]] $E$ (dovuto alla differenza dei potenziali) che genera un flusso di elettroni dalla d.d.p. maggiore a quella minore, sino a raggiungere una condizione di equilibrio. La quantità totale di carica non subisce variazione, ma va a ridistribuirsi in modo da generare un campo elettrico all'interno del conduttore nullo.
> [!NOTE] Due conduttori a contatto
> Due conduttori distinti, una volta a contatto, diventano un unico conduttore.

> [!NOTE] Conduttori e caratteristiche
> Ad ogni conduttore è associata una *resistenza* ed una *resistività*; sono legate agli urti che si verificano tra gli elettroni.

***
## Generatore di corrente
Per mantenere una certa differenza di potenziale tra i due punti del conduttore (e, quindi, far avvenire il flusso di elettroni), vi è bisogno di un generatore di forza elettromotrice (f.e.m.). 
Il dispositivo in quesitone (la pila, NdA), compie del lavoro; nel caso della pila, il lavoro viene ottenuto a partire dall'energia chimica, che si trasforma in energia elettrica.
Un generatore può emettere diverse forme d'onda, anche variabili del tempo (si armonizzano mediante le [[Esercizio 3, Serie di Fourier|Serie di Fourier]]).
Solitamente, la corrente è continua (CC/DC) oppure alternata (CA/AC).
***
## Corrente elettrica: definizione
Si definisce *corrente elettrica* la quantità di carica che attraversa una data superficie $\Sigma$ all'interno del conduttore, nell'unità di tempo $\Delta t$:
$$i = \lim_{\Delta t \rightarrow 0} \frac{\Delta q}{\Delta t} = \frac{d q}{d t}$$
***
## Corrente stazionaria: definizione
Una corrente $i$ è **stazionaria** quando l'intensità rimane costante.
***
## Intensità di corrente
L'unità di misura è l'Ampere (A); si ha 1 A quando, attraverso una data superficie, passa la carica di 1 C in 1 s.
***
## Densità di corrente
Si consideri un conduttore al cui interno vi sono $n$ portatori di carica liberi, ciascuno dotato di carica $q$. Le velocità di deriva formano un campo vettoriale all'interno del conduttore, di cui sia $S$ la sua sezione. Dentro il conduttore, si analizzi una sezione infinitesima $d \vec{S}$: la quantità di carica che passa nell'intervallo infinitesimo $dt$ per la sezione $d \vec{S}$ vale:
$$dq = nq \vec{v_d} \ \cdot \ d \vec{S} \ dt$$
Dove $\vec{J} = n q \vec{v_d}$ è la *densità di corrente*, misurata in $\frac{A}{m^2}$.
Si distinguono più casi:
### Caso: portatori di carica sono positivi
La densità di corrente è la corrente che attraversa l'unità di superficie perpendicolare alla direzione del moto delle cariche.
### Caso: portatori di carica sono negativi
> [!NOTE] Conduttori metallici
> Il caso dei portatori di carica negativi raffigura ciò che avviene nei conduttori metallici: la corrente, in questo caso, è legata agli elettroni liberi, e la carica è negativa.

==$J$ ha verso negativo, ma sempre concorde ad $E$==:
$$\vec{J} = -e n_{-} \vec{v_{-}}$$
### Caso: fluidi ionizzati o semiconduttori
La corrente è dovuta sia ai portatori positivi che negativi: ==i contributi si sommano==:
$$\vec{J} = -en_{-}\vec{v_{-}} + en_{+} \vec{v_+}$$

> [!NOTE] Nota Bene
> Su scala macroscopica non è possibile correlare il verso della corrente con il segno dei portatori di carica; ==si assume, come verso di percorrenza, quello delle cariche positive==.

***
## Effetto Joule e fenomeni di dissipazione

^eb5b10

Per spostare una carica $dq$ da $A$ a $B$, si compie un certo lavoro pari a:
$$dW = \Delta V dq = \Delta V i dt$$
Da cu si può ricavare la potenza spesa dal campo per far circolare la corrente $i$;
$$P = \frac{dW}{dt} = \Delta V i$$
Se vale la [[Legge di Ohm]]:
$$P = RI ^2 = \frac{\Delta V^2}{R}$$
A causa degli urti, gli elettroni cedono dell'energia acquistata al conduttore, il quale aumenterà in temperatura: è l'**effetto Joule**.

Il lavoro compiuto per far passare una corrente $i$ attraverso un conduttore metallico per un tempo $t$:
$$W = \int^{t}_{0}Pdt = \int^{t}_{0}Ri^2 dt$$
In caso la corrente sia costante:
$$W = Ri^2 t$$
>[!NOTE] Superconduttori
> I superconduttori hanno una rsistività quasi nulla: non occorre spendere potenza per far circolare all'interno della corrente (a patto che i cavi siano a bassissime temperature).
