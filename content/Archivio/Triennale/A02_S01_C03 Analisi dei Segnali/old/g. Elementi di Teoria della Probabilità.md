*Questo argomento è stato trattato in #analisiSegnali*
***
# Definizioni 
## Insieme
>[!tip] Insieme: definizione
>Si definisce *insieme* una ==collezione di oggetti==.
>Gli oggetti facenti parte di un insieme sono detti *elementi*.

### Rappresentazione di un insieme
* elencazione: $A = \{1, 2, 3, 4, 5\}$;
* caratteristica: $B = \{\text{numeri interi positivi} \}$
* rappresentazione grafica mediante diagrammi di Eulero-Venn (per insiemi generici).
### Sottoinsieme
>[!tip] Sottoinsieme: definizione
> Un insieme $A$ è sottoinsieme di un insieme $B$ se ogni elemento di $A$ è anche un elemento di $B$. 
> Se $A$ è sottoinsieme di $B$, si può dire che $A$ è *incluso* in $B$.
> Simbologia:
> $$A \subset B$$

Nella teoria della probabilità, si fa riferimento ad insiemi che sono sottoinsiemi di un insieme più ampio, detto *spazio (campione)* $S$.
L'*insieme vuoto* $\emptyset$ è l'insieme che non contiene elementi.
### Operazioni tra insiemi
#### Unione
>[!tip] Unione: definizione
>L'*unione* di due insiemi $A$ e $B$ è un nuovo insieme, $C$, costituito dagli elementi che appartengono ad $A$, a $B$, o ad entrambi.
>Simbologia:
>$$C = A \cup B$$

##### Proprietà dell'unione
1. $$A \cup A = A$$
2. $$A \cup S = S$$
3. $$A \cup \emptyset = A$$
4. Se $B \subset A$ allora $A \cup B = A$
5. Proprietà commutativa: $A \cup B = B \cup A$
6. Proprietà associativa: $(A \cup B) \cup C = A \cup (B \cup C)$
***
#### Intersezione
>[!tip] Intersezione: definizione
>Si definisce *interesezione* di due insiemi $A$ e $B$ un nuovo insieme, $C$, costituito dagli elementi che appartengono contemporaneamente sia ad $A$ che a $B$.
>Simbologia:
>$$C = A \cap B$$
##### Proprietà dell'intersezione
1. $$A \cap A = A$$
2. $$A \cap S = A$$
3. $$A \cap \emptyset = \emptyset$$
4. Se $B \subset A$ allora $A\cap B = B$
5. Proprietà commutativa: $A \cap B = B \cap A$
6. Proprietà associativa: $(A \cap B) \cap C = A \cap (B \cap C)$
7. **Proprietà distributiva**: $(A \cup B) \cap C = (A \cap C) \cup (B \cap C)$
***
#### Complementazione
>[!tip] Complementazione: definizione
>Definito un insieme spazio $S$ e un suo sottoinsieme $A$. L'*insieme complementazione* $\bar{A}$ dell'insieme $A$ rispetto ad $S$ è l'insieme costituito da tutti gli elementi di $S$ che non appartengono ad $A$

##### Proprietà della complementazione
1. L'insieme vuoto è il complementare di $S$ e viceversa.
2. $$A \cup \bar{A} = S$$
3. $$A \cap \bar{A} = \emptyset$$
***
## Probabilità
### Esperimento
>[!tip]  Esperimento: definizione
>Un *esperimento* è uno specifico insieme di azioni il cui risultato non può essere predetto con certezza.
>***Es.:** lancio del dado.*
>==Affinché un esperimento sia correttamente definito, occorre che siano chiaramente indicati quali sono i possibili risultato derivanti dalla sua esecuzione.==

L'insieme di tutti i possibili risultati derivanti da una sola esecuzione dell'esperimento è lo *spazio campione*.
***
### Evento
>[!tip] Evento: definizione
>L'*evento* è un qualsiasi sottoinsieme dello spazio campione $S$.
>L'evento costituito da un singolo elemento è l'*evento elementare*. 

* L'*evento certo* è lo spazio campione.
* L'*evento impossibile* è l'insieme vuoto.
* Due eventi sono *incompatibili* se non hanno elementi in comune ($A \cap B = \emptyset$).
    * Due eventi incompatibili non possono accadere contemporaneamente, si *escludono a vicenda*.

