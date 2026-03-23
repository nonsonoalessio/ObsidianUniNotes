*Questo argomento è stato trattato in #algoritmi_StruttureDati*
***
# Premesse
## Complessità spaziale e temporale
La *complessità computazionale* consente di classificare gli algoritmi in base alla loro efficienza.
Bisogna distinguere tra:
* complessità **temporale**: misura l'efficienza in base all'*efficienza della sua esecuzione*;
* complessità **spaziale**: misura l'efficienza in termini di *memoria impiegata*.

## Il modello RAM
Solitamente, il valore $\tau$ di tempo richiesto è funzione della dimensione $n$ della struttura dati su cui opera l'algoritmo (si indica come $\tau(n)$).
Per rendere possibile ciò, è indispensabile che la valutazione dell'efficienza avvenga a meno di fattori derivanti dal calcolatore: si crea, per questo, un modello detto *RAM* (*Random Access Machine*), in cui:
* non vi è alcun tipo di parallelismo, ==le istruzioni vengono eseguite una dopo l'altra==;
* le istruzioni semplici del linguaggio (quali operazioni aritmetico-logiche e le assegnazioni) richiedono un tempo unitario.
Mediante questo modello, è possibile ottenere una **stima** $T(n)$ del tempo realmente impiegato ($\tau (n)$), differendo a meno di *fattori di proporzionalità*, che consente di dedurre l'andamento del tempo richiesto dall'algoritmo.
***
# Complessità computazionale: definizione
>[!tip] Complessità computazionale: definizione
>Si definisce *complessità computazionale* l'**ordine di grandezza** della funzione $T(n)$, cioè il *numero di istruzioni da eseguire* in funzione della dimensione dei dati in ingresso, nel modello RAM.

***
# Andamenti notevoli
Nel panorama degli alg9oritmi, vi sono alcuni andamenti per $\tau(n)$ che ricorrono frequentemente. Tra questi:
## Andamento sub-lineare
*Casi di esempio: $\sqrt{n}$, $\log(n)$.*
Nel caso di un andamento su-lineare, al crescere della dimensione della struttura dati presa in esame, il tempo dell'esecuzione cresce meno che linearmente.
>[!danger] Andamento sub-lineare: conseguenze
>Il vantaggio di un algoritmo che ha un andamento sub-lineare è di avere un tempo che cresce relativamente "poco" al crescere della dimensione della struttura dati in esame: richiedono poco sforzo computazionale e non pongono particolari problemi applicativi.


## Andamento polinomiale
La crescita del tempo di un algoritmo con andamento polinomiale è tanto maggiore quanto maggiore è $k$ nell'equazione caratteristica:
$$\tau(n) = n^{k}$$
>[!danger] Andamento polinomiale: criticità
>Un algoritmo ad andamento polinomiale è spesso applicato a casi reali con strutture dati di piccole dimensione.


### Andamento lineare
*Casi di esempio: **algoritmi per la ricerca del minimo in un vettore***.
Nel caso di un andamento lineare, il tempo richiesto da un algoritmo duplica nel caso in cui, ad esempio, $n$ passa da 10 a 100.
>[!danger] Andamento lineare
>L'andamento lineare è un caso particolare di un algoritmo con andamento polinomiale, in cui il grado del polinomio $\tau(n) = 1$.


## Andamento esponenziale
Gli algoritmi ad andamento esponenziale presentano le maggiori criticità. Essendo:
$$\tau(n) = k^{n}$$
piccoli incrementi nella dimensione della struttura dati possono condurre ad enormi incrementi nel tempo richiesto per la computazione.
***
# Casi particolari del tempo di esecuzione
Alcuni algoritmi possono dipendere, oltre che dal numero di elementi, anche dalla natura di questi, come ad esempio l'ordine.
Per questo, l'analisi dell'algoritmo prende in esame tre casi possibili:
1. *best case*, $\tau_b (n)$: prende in esame le configurazioni della struttura dati $d$, di dimensione $n$, per le quali si ottiene il tempo minimo;
2. *worst case*, $\tau_w (n)$: prende in esame le configurazioni della struttura dati $d$, di dimensione $n$, per le quali si ottiene il tempo massimo;
3. *average case*, $\tau_a (n)$: è il tempo richiesto alla media dei valori dei tempi che si ottengono al variare delle configurazioni della struttura dati $d$, fissato $n$.
***
# Notazioni asintotiche
>[!danger] Notazioni: informazioni importanti
> - Una notazione asintotica deve essere semplice: deve consentire la rappresentazione del tasso di crescita trascurando dettagli non essenziale come le costanti moltiplicative;
> - Il concetto di *tasso di crescita* equivale al concetto matematico di *ordine all'infinito* della funzione considerata.

Vi sono diverse notazioni con le quali sono espressi gli ordini di grandezza delle funzioni all'infinito. Queste forniscono diverse informazioni e sono più o meno complicate da calcolare.
## Limite lasco:
### Notazione $O(g(n))$
>[!tip] Notazione $O$: definizione
>$$f(n) \in O(g(n)) \iff \exists \ c, \ n_0 > 0 : \ \forall n > n_0, \ 0 \leq f(n) \leq cg(n)$$
>Date $c$ ed $n_0$ due costanti positive, una funzione $f(n)$ appartiene all'insieme $O(g(n))$ se, dopo un certo valore $n_0$, la funzione $g(n)$, moltiplicata per un'adeguata costante $c$, **maggiora definitivamente** la funzione $f(n)$.
>==Tale notazione è ideale per rappresentare un *limite superiore* che identifica il massimo tasso di crescita.==
![[ogn.jpeg]]

### Notazione $\Omega (g(n))$
>[!tip] Notazione $\Theta (g(n))$: definizione
>$$f(n) \in \Theta(g(n)) \iff \exists \ c, \ n_0 > 0 : \ \forall n > n_0, \ 0 \leq cg(n) \leq f(n)$$
>Date $c$ ed $n_0$ due costanti positive, una funzione $f(n)$ appartiene all'insieme $O(g(n))$ se, dopo un certo valore $n_0$, la funzione $g(n)$, moltiplicata per un'adeguata costante $c$, **minora definitivamente** la funzione $f(n)$.
>==Tale notazione è ideale per rappresentare un *limite inferiore* che identifica il minimo tasso di crescita.==
>![[thetagn.jpeg]]
## Limite stretto:
### Notazione $\Theta$
>[!tip] Notazione $\Theta (g(n))$: definizione
>$$f(n) \in \Theta(g(n)) \iff \exists \ c_1, \ c_2, \ n_0 > 0 : \ \forall \ n > n_0, \ c_1 g(n) \leq f(n) \leq c_2 g(n)$$
>Date tre costanti positive $c_1$, $c_2$, $n_0$, una funzione $f(n)$ è compresa tra $c_1 g(n)$ e $c_2 g(n)$ a partire da un certo valore $n_0$ di $n$.
>![[omegagn.jpeg]]

## Proprietà delle notazioni
0. 
    1. Se una funzione $f(n)$ appartiene ad $O(n^2)$, allora appartiene anche ad $O(n^3)$. Non vale ciò per la notazione $\Theta$: se $f(n)$ appartiene a $\Theta(n^2)$, sicuramente non apparterrà né a $\Theta (n^3)$, né a $\Theta (n)$.
    2. Se una funzione $f(n)$ appartiene as $\Theta (n)$, allora $f(n)$ appartiene sia a $O(n)$ che a $\Omega (n)$; ==è valido il viceversa==.
1. La complessità di un algoritmo può essere valutata come la somma di notazioni di parti più piccole del problema.
    1. $$T(n) = \Theta(f_1(n)) + \Theta(f_2(n)) = \Theta (\max(f_1(n), \ f_2(n)))$$
    2. $$T(n) = O(f_1(n)) + O(f_2(n)) = O(\max (f_1(n), \ f_2(n)))$$
    3. $$T(n) = \Omega(f_1(n)) + \Omega(f_2(n)) = \Omega(\max (f_1(n), \ f_2(n)))$$
### Esempio di applicazione delle proprietà delle notazioni
*Esempio coi costrutti selettivi.*
**Worst case:** $T_{if, \ worst} = O(\max (T_{cond} + T_{then}, \ T_{cond} + T_{else}))$
**Best case:** $T_{if, \ best} = \Omega(\min (T_{cond} + T_{then}, \ T_{cond} + T_{else}))$
***
# Calcolo della complessità di una funzione
Il tempo necessario per l'esecuzione di una chiamata a funzione è dato dalla somma di:
- tempo relativo alla chiamata (solitamente pari a $\Theta (1)$);
- il tempo associato all'esecuzione della funzione stessa.
>[!danger] Tempo per la chiamata a funzione - disclaimer
>Il tempo per la chiamata è generalmente $\Theta (1)$. Tuttavia, in alcuni casi (si pensi al passaggio di un parametro - quale un array - per valore), il tempo richiesto per la chiamata può diventare pari a $\Theta (n)$.

## Calcolo della complessità di funzioni ricorsive
Nel caso di funzioni ricorsive, la complessità è frutto di due contributi:
* $f(n)$: il contributo che si ottiene dall'insieme di tutte le istruzioni che **non contengono** chiamate ricorsive;
* $T(k)$: il contributo ottenuto dalle chiamate ricorsive, su strutture dati di dimensioni via via più piccole ($k<n$).
Si ottiene l'*equazione ricorrente* (o *ricorrenza*):
$$T(n) = 
\begin{cases}
c_1  \qquad \qquad \qquad \qquad \qquad \text{per} \ n = 1
\\
D(n) + C(n) + \displaystyle \sum^{k}_{i=0} \quad \qquad \text{per} \ n>1, \ k_i < n
\end{cases}
$$
### Ricorrenze notevoli
- Divisione della struttura dati in due parti uguali, con invocazione ricorsiva su una sola parte (tempo di combinazione e divisione costante):
    $$T(n) = 
    \begin{cases}
    c_1 \qquad \qquad \qquad \text{per } n= 1
    \\
    T(\frac{n}{2})+c_2 \qquad \text{per } n > 1
    \end{cases}
    $$
* Divisione della struttura dati in due parti uguali, con invocazione ricorsiva su entrambi le parti (tempo di combinazione e divisione costante):
    $$ T(n) = 
    \begin{cases}
    c_1 \qquad \qquad\qquad \text{per } n = 1
    \\
    2T(\frac{n}{2} + c_2) \qquad \text{per } n>1
    \end{cases}
    $$
* Divisione della struttura dati in due parti uguali, con invocazione ricorsiva su una sola parte (tempo di combinazione e divisione lineare):
    $$ T(n) =
    \begin{cases}
    c_1 \qquad \qquad \quad \text{per } n = 1
    \\
    T(\frac{n}{2}) + n c_2 \qquad \text{per } n>1
    \end{cases}
    $$
* Divisione della struttura dati in due parti uguali, con invocazione ricorsiva su entrambi le parti (tempo di combinazione e divisione lineare): 
    $$ T(n) = 
    \begin{cases}
    c_1 \qquad \qquad\qquad \text{per } n = 1
    \\
    2T(\frac{n}{2} + nc_2) \qquad \text{per } n>1
    \end{cases}
    $$
* Divisione della struttura dati in due parti di dimensioni $1$ e $n-1$, con un'unica invocazione ricorsiva (tempo di combinazione e divisione costante):
    $$ T(n) = 
    \begin{cases}
    c_1 \qquad \qquad \qquad \text{per } n=1
    \\
    T(n-1) + c_2 \qquad \text{per } n > 1
    \end{cases}
    $$
