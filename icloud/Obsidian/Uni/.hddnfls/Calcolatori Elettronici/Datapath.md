*Questo argomento è stato affrontato in #calcolatoriElettronici.*
***
# Elementi fondamentali del Datapath
- Unità di memroria per le istruzioni:
  Dato un certo indirizzo, c'è bisogno che sia possbile prelevare l'istruzione da eseguire.
- Program counter (`PC`):
  Contiene l'indirizzo dell'istruzione corrente.
- Sommatore:
  È un elemento combinatorio che si occupa di aggiungere `4` al `PC` in modo da puntare all'indirizzo dell'istruzione successiva nell'esecuzione di un programma. Si ricava a partire da un ALU, in modo da poter svolgere solo l'operazione di somma.
* `Register File`:
  È una raccolta che contiene i registri universali a 32 bit, ai quali vi si accede per lettura o scrittura mediante il numero a loro associato.
* ALU:
  La si utilizza per eseguire operazioni sui valori letti dai registri.
***
## Operazioni di tipo R (aritmetico-logico)
*Formato tipo: `add $t0, $t1, $t2`.*

Bisogna predisporre il `register file` in modo che esso possa ricevere in ingresso, per ogni parola da leggere, il **numero del registro da leggere** e un'uscita su cui può viaggiare il dato letto.
Per la fase di scrittura, vi è bisogno di un ingresso per il numero del registro su cui scrivere ed un dato da scrivere a quel registro.n
Se la lettura avviene in ogni momento, per la scrittura si fa affidamento ad un segnale di controllo specifico, mediante `RegWrite`.
In totale, si rendono necessari **4** ingressi a fronte di **2** uscite. 
Gli ingressi *per i registri* sono di ampiezza **5 bit**, in modo da poter indicare tutti e 32 i registri a disposizione; i bus *dei dati* hanno invece ampiezza **32 bit**.
A questo punto, la ALU si occupa di produrre un risultato in uscita a 32 bit, più un segnale che vale **1** se il risultato dell'operazione è **0** (zero flag).
***
## `Store word` , `load word`
*Formato tipo: `lw $t1, valoreOffset($t2)`.*

Per le operazioni di `load` e `store` serve un `register file` insieme ad una ALU.
Si introduce ora l'unità di estensione del segno per operare sui 16 bit del campo dell'offset (in modo da estendere a 32 bit il campo dell'offset, con segno), più una unità memoria su cui andare a scrivere e leggere dei dati.
***
## Salti condizionati
*Formato tipo: `beq $t1, $t2, offset`.*

L'operazione di salto condizionato prevede 3 operandi, due registri da confrontare, più l'offset (espresso su 16 bit, da estendere a 32) rispetto al `PC`.
Tuttavia, vi sono delle complicazioni di cui bisogna tenere conto:
* Durante un ciclo di clock in corso viene già calcolato il valore `PC+4`: questo semplifica sia nel caso in cui non si verificano i presupposti per effettuare il salto, sia come base per calcolare l'indirizzo di destinazione del salto;
* //approfondire.

Inoltre bisogna determinare l'istruzione successiva; si aprono quindi due possibilità:
* **branch taken**: se la condizione per la quale bisogna effettuare il salto (caso: `branch-if-equal`), l'indirizzo di destionazione del salto diventa l'indirizzo corrente del `PC`;
* **branch not taken**: nel caso in cui non si verifica la condizione per effettuare il salto, il `PC` assumerà il valore `PC+4`, come in tutte le altre istruzioni, senza eseguire alcun salto.
Il confronto avviene sfruttando una operazione di sottrazione svolta dalla ALU: se i due operandi sono uguali, il risultato della sottrazione è **0** e viene asserita una particolare uscita della ALU, l'uscita **zero** [zero flag].

> Nel caso dei **salti non condizionati**, si proecde sostituendo i 28 bit meno significativi dell'operazione con i 26 bit meno significativi, fatti scorrere di 2² posizioni verso sinistra, del `PC`.