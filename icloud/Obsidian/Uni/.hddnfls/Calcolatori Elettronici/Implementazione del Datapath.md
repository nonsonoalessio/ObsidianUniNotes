*L'argomento di base: [[Datapath]].*
***
# Implementazione del Datapath
*L'unità di elaborazione più semplice consente l'esecuzione di tutte le istruzioni in un signolo ciclo di clock; questo comporta il fatto che ==nessuna risorsa dell'unità di elaborazione può essere utilizzata **più di una volta** per ogni ciclo di clock==; eventualmente, i componenti possono essere duplicati (ad es. serve una memoria per i dati ed un'altra per le istruzioni), oppure possono essere condivisi dal flusso di esecuzione di istruzioni di diverso tipo (ciò avviene mediante i [[Multiplexer]], che consentono di scegliere correttamente la fonte dell'input).*
***
## Unità di controllo della ALU
> [!NOTE] Livelli di codifica:
> Unità di controllo principale (imposta `ALUOp`)-> Unità di controllo della ALU -> ALU (operazione).
> 
> *Questo livello di codifica consente di ridurre le dimensioni dell'unità di controllo principale ed aumentare la velocità dell'unità di controllo stessa, punto critico per la determinazione di un ciclo di clock.*

Linee di controllo della ALU | Operazione
---- | ----
0000 | ``AND``
0001 | ``OR``
0010 | somma
0110 | Sottazione
0111 | `set less than`
1100 | ``NOR``

Questi 4 bit vengono generati da una unità di controllo (**unità di controllo della ALU**) che prende in ingresso il campo funzione dell'istruzione (`func`) e un campo di controllo su 2 bit detto `ALUOp`.
`ALUOp` determina se l'operazione da eseguire è una somma (==00==, per le istruzioni di `load` e `store`), una sottrazione (==01==, per le `beq`), oppure se l'operazione è determinata dal contenuto del campo funzione (==10==). 
Codice Operativo Istruzione | `ALUOp` | Operazione da eseguire dell'istruzione | Campo Funzione | Operazione dell'ALU | Ingresso di Controllo all'ALU
--- | --- | --- | --- | --- | ---
`LW` | 00 | Load di 1 parola | `xxxxxx` | somma | 0010
`SW` | 00 | Store di 1 parola | `xxxxxx` | somma | 0010
`Branch equal` | 01 | Salto condizionato all'uguaglianza | `xxxxxx` | sottrazione | 0110
Tipo `R` | 10 | somma | `100000` | somma | 0010
Tipo `R` | 10 | sottrazione | `100010` | sottrazione | 0110 
Tipo `R` | 10 | `AND` | `100100` | `AND` | 0000
Tipo `R` | 10 | `OR` | `100101` | `OR` | 0001
Tipo `R` | 10 | `Set less than` | `101010` | `set less than` | 0111

Per implementare la corrispondenza tra i 2 bit di `ALUOp` e i 6 bit del campo `func`, si costruisce una tabella della verità che, una volta ottimizzata, consente di ottenere un circuito costituito da alcune [[Porte Logiche]] connesse tra di loro.
È importnte notare come alcuni termini all'interno della tabella possono essere omessi, in quanto non rilevanti per il risultato finale: sono i *[[Punti di non specificazione]]* (don't care) e si indicano con una `x`.

L'unità di controllo può impostare tutti i seguenti segnali di controllo:

Nome del segnale | Effetto quando non asserito | Effetto quando asserito
--- | --- | ---
`RegDst` | Il numero del registro proiene dal campo `rt` (bit 16 - 20) | Il numero del registro di scrittura proiene dal campo `rd` (bit 15 - 11)
`RegWrite` | Nulla | Il dato viene scritto nel `register file` nel registro individuato dal numero del registro di scrittura  
`ALUSrc` | Il secondo operando della ALU proviene dalla seconda uscita del ``register file`` | Il secondo operando della ALU proviene dall'estensione del segno dei 16 bit meno significativi dell'istruzione 
`PCSrc` | Nel `PC` viene scrutta lúscita del sommatore che calcola `PC + 4` | Nel `PC` viene scritta l'uscita del sommatore che calcola l'indirizzo di salto  
`MemRead` | Nulla |  Il dato della memoria nella posizione puntata dall'indirizzo viene inviato in uscita sulla linea "dato letto"
`MemWrite` | Nulla | Il contenuto della memoria nella posizione puntata dall'indirizzo viene sostituito con il dato presente sulla linea "dato scritto" 
`MemtoReg` | Il dato inviato al `register file` per la scrittura proviene dalla ALU | Il dato inviato al `register file per la scrittura proviene dalla Memoria Dati`

ad eccezione di `PCSrc`, che viene asserito solo se, nel caso di una `branch equal`, anche l'uscita `ZERO` della ALU è asserita: si collega, dunque, con un `AND gate` un segnale proveniente dall'unità di controllo (`branch`), l'uscita `ZERO` della ALU.
***
## Operazioni di Tipo R
*Caso esempio: `add $t1, $t2, $t3`.*
1. Fase di `fetch` e incremento `PC`;
2. 
    1. Lettura registri "sorgenti" da `Register File`;
    2. Unità di controllo principale determina il valore da assegnare alle linee di controllo;
3. L'ALU elabora i valori letti dal `Register file` più il campo `func` (5 - 0 bit dell'istruzione) per selezionare l'operazione da svolgere;
4. il risultato prodotto dalla ALU viene scritto nel ``Register file``, al registro target indicato ai bit 15 - 11 dell'istruzione.

***
## `Load` e `Store`
*Caso esempio: `lw $t1, offset($t2)`.*
1. Fase di `fetch` e incremento `PC`;
2. 
    1. Lettura del contenuto di un registro del `Register file`;
    2. Unità di controllo principale determina il valore da assegnare alle linee di controllo;
3. L'ALU somma il valore letto dal `Register file` ai 16 bit meno significativi dell'istruzione, dotati di segno ed estesi su 32 bit;
4. La somma viene impiegata come indirizzo per la Memoria Dati;
5. Il dato proveniemte dall'unità di memoria dati viene scritto nel `Register file` al registro specificato dai bit 20 - 16 dell'istruzione.
***
## Branch
*Caso esempio: `beq $t1, $t2, offset`.*
1. Fase di `fetch` e incremento `PC`;
2. 
    1. Lettura del contenuto di due registri del `Register file`;
    2. Unità di controllo principale determina il valore da assegnare alle linee di controllo;
3. 
    1. L'ALU esegue la sottrazione tra i due valori letti;
    2. Il valore `PC + 4` viene sommato ai 16 bit meno significativi (campo `offset`), con segno, estesi a 32 bit e spostati di due posizioni a sx (**calcolo dell'indirizzo di destinazione del salto**);
4. La `ZERO flag` dell'ALU viene impiegata per determinare da quale sommatore verrà preso l'indirizzo dell'istruzione successiva (da scrivere nel `PC`). 