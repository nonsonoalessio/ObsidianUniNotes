*Questo argomento è stato trattato in #analisiSegnali.*
***
# Introduzione ai segnali
>[!tip] Definizione
>Un *segnale* esprime il modo di variare di una grandezza naturale. Viene rappresentato mediante l'utilizzo di una funzione di una o più variabili indipendenti.

Quando sono funzioni di una singola variabile, si tratta di segnali **monodimensionali**; altrimenti, i segnali sono **multidimensionali**.
La variabile indipendente è, solitamente, relativa al *tempo*; se dovesse differire, convenzionalmente verrà tuttavia indicata sempre come *variabile tempo*.
***
## Classificazione dei segnali
### Segnali tempo-discreti (sequenze)
Si è nel caso di un *segnale tempo-discreto* (o *sequenza*) quando la variabile tempo è definita su un **insieme discreto** di valori (solitamente i numeri relativi o un loro sottoinsieme).
Convenzionalmente, la variabile indipendente viene indicata mediante le lettere da $i$ a $n$, per cui la funzione risultante sarà $x(n)$.
### Segnali tempo-continui (forme d'onda)
Si è nel caso di un *segnale tempo-continuo* o (o *forma d'onda*) quando, invece, la variabile tempo è definita su un **insieme continuo** di valori (solitamente, i numeri reali).
Convenzionalmente, la variabile indipendente viene indicata mediante $t$ o $\tau$, per cui la funzione risultante sarà $x(t)$.
>[!important] Classificazione per ampiezza
>I segnali tempo-continui e tempo-discreti possono essere classificati anche mediante la relativa ampiezza.
>Si parlerà, per questo, di:
>* *Segnali ad ampiezza continua* (detti anche *analogici* quando sono anche tempo-continui);
>* *Segnali ad ampiezza discreta* (detti anche *numerici/digitali* quando sono anche tempo-discreti).
***
## Aleatorietà e determinismo nei segnali
>[!tip] Segnale deterministico 
>È un segnale completamente descritto da un'equazione, una funzione, una tabella o una regola (di qualunque tipo).
>L'ampiezza istantanea è una variabile reale o complessa.

>[!tip] Segnale aleatorio
>È una collezione di segnali, risultati da un esperimento casuale.
>L'ampiezza istantanea è una variabile aleatoria (reale o complessa).

Indicato con $\zeta$ il generico risultato di un esperimento (un punto appartenente all'insieme dei *possibili risultati dell'esperimento*, ovvero lo **spazio dei Campioni $S$**), si può stabilire una legge di corrispondenza per la quale $\zeta$ risulta associato ad una funzione (in due variabili, $t$/$n$ e $\zeta$) deterministica del tempo. 
La notazione diventerà: $x(t, \zeta)$, ma sovente si preferisce omettere la dipendenza da $\zeta$.
