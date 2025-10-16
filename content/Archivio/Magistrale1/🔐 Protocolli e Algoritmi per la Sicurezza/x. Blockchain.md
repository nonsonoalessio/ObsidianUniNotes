*Questo argomento è stato trattato in #protocolliAlgoritmiSicurezza*
***

# Introduzione

>[!tip] Blockchain: definizione
>Una blockchain è un registro decentralizzato, di sola aggiunta, che consiste di record sequenzialmente collegati, detti blocchi. Ogni blocco contiene un insieme di transizioni ed è crittograficamente reso sicuro, garantendo l'integrità e l'immutabilità dei dati.

Una volta che viene aggiunta alla catena, l'informazione in un blocco non può essere alterata senza il consenso della rete, fornendo un record trasparente e affidabile di tutte le transizioni.

## Hash function 

Una hash function converte una stringa arbitrariamente lunga in una fingerprint di lunghezza fissa, in modo computazionalmente efficiente.

>[!tip] Resistenza alle collisioni: definizione
>Una hash function $H$ è detta *resistente alle collisioni* se non è probabile trovare due valori, $x$ e $y$ tali che $x \neq y$ ma $H(x) = H(y)$.

Prendendo $2^{130}+1$ input, c'è una probabilità del 99.8% che almeno due di questi collidano; tuttavia, considerando un rate di 10000 hash/secondo, sono comunque richiesti più di $10^{27}$ anni.

***

>[!tip] Hiding: definizione
>Una hash function $H$ possiede la proprietà dell'hiding se, quando un valore segreto $r$ è scelto da una distribuzione di proprietà con alta min-entropia, allora dato $H(r || x)$, è infattibile trovare $x$.

***

>[!tip] Puzzle Friendliness: definizione
>Una hash function $H$ è detta puzzle-friendly se, per ogni possibile output $y$ a $n$-bit, se $k$ è scelto da una distribuzione con alta min-entropia, allora è improbabile trovare $x$ tale che $H(k || x) = y$ in un intervallo di tempo significativamente inferiore a $2^n$.

Se un attaccante volesse produrre uno specifico hash $y$ e parte dell'input è scelta in modo adeguatamente randomizzato, diventa estremamente difficile trovare un altro input che risulta nello stesso output.

### Hash pointer

Un hash pointer è un puntatore a dove una certa informazione è conservata, insieme a un hash crittografico dell'informazione stessa. Se un puntatore regolare fornisce un modo per recuperare l'informazione, un hash pointer fornisce anche un modo per verificare che quell'informazione non è cambiata.

Se un avversario modifica dei dati in una qualsiasi posizione nella catena dei blocchi, risulterà che l'hash pointer nel blocco successivo diventerà inesatto.

### Merkle tree

Un Merkle tree è un albero binario in cui le foglie sono blocchi che contengono dei dati. I blocchi di dati sono raggruppati in coppie e l'hash di ciascuno di questi blocchi è conservato nel nodo genitore. I nodi genitori sono a loro volta raggruppati in coppie e i loro hash sono conservati al livello superiore nell'albero. Questo continua fino alla cima dell'albero, dove c'è il nodo radice.

Per provare che un blocco di dati è incluso nell'albero, c'è bisogno solo di mostrare i blocchi nel percorso da quel blocco di dati alla radice; ciò richiede, in termini di tempo e spazio, che è logaritmico rispetto al numero dei nodi nell'albero.

## Public key as identities

Si possono prendere le chiavi pubbliche ed eguagliarle all'identitià di una persona o di un attore in un sistema, rendendo facile creare nuove identità.

Essendo le chiavi grandi, si usa tipicamente il loro hash. Queste identità rappresentano gli indirizzi nella blockchain.

### Anonimità?

Nel corso del tempo, le identità producono una serie di statements; quindi, le persone che vedono gli statements sanno che, chi possiede quell'identità ha computo una certa serie di azioni ed è possibile inferire informazioni sull'identità nel mondo reale.

## Concetti aggiuntivi

### Scalabilità

La scalabilità è la capacità di un sistema, rete o processo di gestire una crescente quantità di lavoro o il loro potenziale di ingrandimento per sostenere questa crescita. Nel contesto delle blockchain pubbliche come Ethereum e Bitcoin, si pone un trilemma tra scalabilità, sicurezza e decentralizzazione:
- la dimensione del blocco in Bitcoin limita la capacità in termini di transizioni;
- la congestione di Ethereum durante boom di NFT o DeFi comportano alte commissioni.

### Disponibilità

La disponibilità è una metrica che misura la probabilità che un sistema non sia in fallimento o in riparazione quando deve essere utilizzato. Le blockchain hanno un'alta disponibilità^[Alta disponibilità finché la maggior parte dei nodi rimane online.] poiché più nodi mantengono il registro.

$$Availability = \frac{Uptime}{Uptime + Downtime}$$

### Throughput

Il throughput è la misura di quante unità di informazione un sistema può processare in un certo intervallo di tempo. In una blockchain, il throughput è il numero di transizioni processate per secondi (TPS, *Transactions Processed per Second*). In quest'ottica, si deve ricordare:
- il consenso aggiunge ritaro;
- blocchi più grandi richiedono più tempo per essere propagati all'interno della rete;
- alcune blockchain propongono soluzioni innovative per il consenso per migliorare il TPS.

### Single point of failure

Una parte del sistema che, se va in failure, causa lo stop al funzionamento per l'intero sistema. Un'architettura decentralizzata supera questa limitazione.

### Bottleneck

Il bottleneck avviene quando una parte del sistema limita le prestazioni dell'intero sistema. Ad esempio:
- il consenso è computazionalmente intensivo e limita la velocità della transazione;
- a mano a mano che la blockchain cresce, i nodi hanno bisogno di più risorse per conservare e trasmettere dati.

### Churn

Il churn corrisponde al continuo arrivo, partenze e fallimenti di processi in un intervallo di tempo ridotto. In una blockchain, i nodi possono frequentemente unirsi e lasciare la rete, causando squilibri temporanei. Aumentare il churn può causare ritardi nella propagazione della transazione.

## Classificazione dei sistemi

I sistemi sono classificati sulla base di dove la computazione avviene e chi prende decisioni.

### Sistema centralizzato

In un sistema centralizzato, la maggioranza dello storage dei dati e il processamento avviene su un singolo server centrale, che si occupa di gestire tutte le operazioni, risorse e dati, agendo da hub attraverso il quale tutte le richieste dei client sono processati.

| ✅ Pro      | ❌ Contro                   |
| ---------- | -------------------------- |
| Semplicità | Singolo punto di controllo |
| Efficienza | Non scalabile              |
| ---        | Single point of Failure    |

### Sistema decentralizzato

In un sistema decentralizzato, più nodi (solitamente distribuiti su più località) condividono il controllo e la potenza di processamento senza un'autorità centrale. Ogni nodo opera in maniera indipendente ma collabora con altri per raggiungere uno scopo comune.

| ✅ Pro                  | ❌ Contro                                                            |
| ---------------------- | ------------------------------------------------------------------- |
| Controllo distribuito  | La coordinazione e la comunicazione aggiunta complicano il sistema. |
| Fault tolerance        | ---                                                                 |
| Scalabilità            | ---                                                                 |
| Autonomia e ridondanza | ---                                                                 |

### Sistemi distribuiti

Con i sistemi distribuiti si ottiene un'architettura computazionale in cui più nodi indipendenti collaborano per ottenere uno scopo comune. Questi nodi comunicano e vengono si coordinano tra di loro su una rete, apparendo come un unico sistema coerente all'utente finale.

| ✅ Pro                  | ❌ Contro                                                            |
| ---------------------- | ------------------------------------------------------------------- |
| Distribuzione geografica  | --- |
| Fault tolerance        | ---                                                                 |
| Scalabilità            | ---                                                                 |
| Condivisione delle risorse | ---                                                                 |
| Trasparenza | --- |
## Modello Peer-to-Peer

In una rete Peer-to-Peer (P2P), gli utenti connessi agiscono sia come client che come server. I peers mettono a disposizione una parte delle loro risorse direttamente ad altri partecipanti alla rete, senza la necessità di una coordinazione centrale da un server o host stabili.

## Modalità di comunicazione

- **Sincrona**: tutti i processi condividono lo stesso clock e c'è un limite superiore (upper bound) alla consegna del messaggio;
- **asincrona**: l'assunzione più debole possibile.

# Consenso distribuito

I processi distribuiti devono concordare su un singolo valore (ad esempio, il nuovo stato del sistema). Le proprietà sono:
- **agreement**: se un processo corretto decide un valore, allora tutti i processi corretti decideranno, infine, lo stesso valore;
- **termination**: ogni processo corretto infine deciderà un certo valore.

## Fallimento in un sistema distribuito

>[!tip] Fallimento in sistema distribuito: definizione
>Un fallimento (*fault* o *failure*) è una condizione che comporta il fallimento nell'operatività di un'unità funzionale.

Si distinguono due tipologie di failure:
- **bening failure** (fallimento benigno): quando un nodo smette di operare, ad esempio in conseguenza ad un crash;
- **byzantine (arbitrary) failure**: quando un nodo inizia ad operare in modo arbitrario, non in accordo con il corretto flusso delle operazioni.

## Fischer, Lynch, Paterson (FLP) Consensus

FLP sanciscono l'impossibilità di ottenere un consenso distribuito con un processo faulty: non esiste un protocollo deterministico che risolve il consenso in un sistema asincrono in cui al massimo un processo può fallire a causa di crash.

Anche se spesso si dice che la blockchain *risolva il consenso*, si vedrà che questo non è completamente vero.

### Contesto di FPL

- **Modello di computazione**: il teorema si applica a sistemi distribuiti e asincroni, in cui i messaggi possono essere ritardati indefinitamente;
- **faults**: anche il crash di un singolo nodo può impedire ad un protocollo per il consenso deterministico di garantire un accordo.

### Come la blockchain supera FLP

- **Assunsioni rilassate**: sussiste una parziale sincronia, in cui i ritardi nella consegna dei messaggi sono limitati oltre un certo punto non noto;
- **finalità probabilistica**: i nodi infine si accorderanno sulla catena più lunga. La probabilità di decisioni conflittuali (forks) decresce in maniera esponenziale con il numero di conferme;
- **proof of work**: assicura che riscrivere la catena diventi computazionalmente non praticabile per un avversario con meno del 50% della potenza di mining;
- **trade-off**: le blockchain sacrificano la velocità di finalizzazione in cambio della fault tolerance, operando in un modello con ritardi impliciti e potenziali fork.

## Il problema dei genearali bizantini

Il problema muove le basi da un gruppo di generali che accerchiano una città e devono decidere se attaccare o ritirarsi. L'unico modo che hanno a disposizione è quello di comunicare per messaggi, che possono essere intercettati dai difensori e rendere più complicato decidere sulla loro autenticità.

La *Byzantine Fault Tolerance* (BFT) si riferisce all'abilità di una rete decentralizzata di selezionare e rifiutare false informazioni provenienti dalla rete dei partecipanti. BFT consente alle reti di funzionare anche quando i nodi diventano faulty o dannosi.

### BFT in Blockchain

Tutte le blockchain decentralizzate devono risolvere il problema dei generali bizantini: invece di avere dei generali, ci sono dei nodi e la decisione sul se attaccare o ritirarsi rappresenta lo stato corrente della rete.

Un fallimento avviene quando il sistema non può distinguere nodi faulty e nodi correttamente funzionanti e quindi può confondere transazioni valide e transazioni fraudolente. Il meccanismo del consenso deve stabilire forti incentivi per i partecipanti nel lavorare in modo onesto e disincentivarli dall'operare in modo dannoso.

# Consistency, Availability, Partition: CAP Theorem

*Consistency, Availability and Partition* afferma che è impossibile per uno storage di dati distribuito (come le blockchain) fornire contemporaneamente più di due delle tre garanzie: consistenza, disponibilità e partition.

- **Consistency**: in ogni momento, tutti i nodi della rete hanno lo stesso valore, il più recente;
- **Availability**: ogni richiesta alla rete riceve una risposta, ma senza garanzia che i dati restituiti sono i più recenti;
- **Partition tolerance**: la rete continua a operare, anche se un numero arbitrario di nodi falliscono.

A causa della natura degli storage di dati distribuiti, partition tolerance è una caratteristica implicito.

## Availability over Consistency (A+P)

Quando la disponibilità è preferita a scapito della consistenza, il sistema processerà sempre la query e proverà a restituire la versione più recente dei dati anche se non può essere certo che è aggiornato a causa del partitioning di rete.

## Consistency over Availability (C+P)

Quando la consistenza è preferita a scapito della disponibilità, il sistema processerà la query solo se i dati correnti sono allineati.

## CAP Theorem in Blockchain

Con la blockchain, la consistenza immediata è spesso sacrificata per la disponibilità e la partition tolerance. Siccome la blockchain richiede conferme, infine raggiungerà la consistenza.

# Distributed Ledger Technologies (DLT)

>[!tip] Distributed Ledger: definizione
>Un *Distributed Ledger* è un sistema in cui i dati sono replicati, condivisi e sincronizzati su più località, assicurando che tutti i partecipanti mantengano una replica locale dei dati. Questo aumenta la trasparenza, sicurezza e fiducia nel sistema senza la necessità di un'autorità centrale.

Spesso DLT sono dei database *append-only*, diffusi geograficamente su più siti. Blockchain è l'implementazione più popolare, ma non tutte le DLTs sono delle blockchain.

L'obiettivo principale è quello di non affidarsi a un'unica autorità centrale fidata, anche quando i partecipanti sono sconosciuti. Ciò avviene mediante il meccanismo del consenso, secondo cui i partecipanti devono raggiungere un accordo distribuito sullo stato del registro. I principali meccanismi di consenso sono Proof-of-Work (PoW) e Proof-of-Stake (PoS).

![[Pasted image 20250812190003.png]]

# Blockchain e Bitcoin

## Come risolvere la coordinazione?

Esistono due approcci:
1. **cash-based system**: beni o servizi sono scambiati tra partecipanti in modo che le transazioni possono avvenire in qualsiasi sequenza, a patto che ciascun acquirente abbia saldo sufficiente per completare l'acquisto. È necessario inizializzare (*bootstrap*) il sistema con un'allocazione iniziale di denaro;
2. **credit-based system**: i partecipanti effettuano transazioni in cui i beni o servizi sono scambiati con la creazione di debiti. Alice, ad esempio, può ricevere uno strumento da Bob ma, anziché pagare immediatamente, apre un debito con che salderà più avanti. Il sistema permette pagamenti differiti, con i debiti che vengono ripagati attraverso scambi futuri anziché transazioni immediate, il che comporta che ciascuno creditore si assume del rischio.

## Il problema della fiducia

L'economia moderna e il sistema monetario sono basati su terze parti, fidate, per garantire l'autenticità dei documenti e la validità delle transizioni tra parti che non si fidano mutuamente. Ad esempio, nel contesto delle carte di credito, acquirente e venditore devono aprire un conto in banca e poi, per ogni transazione, una terza parte (ad esempio, il circuito di pagamento^[Momento supercazzola perché sì: non è il circuito di pagamento (Visa, MasterCard, PagoBancomat etc a controllare che l'acquirente abbia saldo a sufficienza; piuttosto, il circuito si limita a inoltrare una richiesta alla banca dell'acquirente ed è quest'ultima a effettuare per davvero il controllo. Il circuito di pagamento funge soltanto da intermediario tra banca del venditore (la banca con cui il venditore ha il POS) e la banca del cliente (la banca/istituto che emette la carta dell'acquirente).]). Anche col contante, sebbene funzioni offline e garantisca l'anonimato, c'è bisogno che la moneta venga coniata e che una terza parte distribuisca il denaro che possa essere interrogata per controllarne la validità.

Si vuole eliminare l'intermediario, cioè la terza parte privata. I primi tentativi di realizzazione di una moneta digitale presentavano sempre lo stesso problema, che era proprio l'affidarsi ad una terza parte di fiducia per validare le transazioni e coniare nuova moneta. Con le blockchain^[Si ricorda che la blockchain è un'implementazione di un DLT.], si superano queste sfide e altre, tra cui:
- mancanza di un'autorità centrale;
- costi più bassi;
- alta disponibilità;
- trustless environment;
- trasparenza;
- proprietà e controllo;
- sicurezza e prevenzione delle frodi.

## Struttura della Blockchain

Una blockchain è un registro decentralizzato, per la sola aggiunta che consiste di record sequenzialmente collegati detti *blocchi*. Ogni blocco contiene un set di transizioni che vengono crittograficamente rese sicure per garantire l'integrità e l'immutabilità dei dati: una volta aggiunti alla catena, le informazioni in un blocco non possono essere alterate senza il consenso della rete, fornendo un record trasparente e affidabile di tutte le transazioni.

### Transazione

Una transazione è il blocco fondamentale: si tratta di un trasferimento di Bitcoin (un certo valore) che è inviato in broadvast sulla rete e conservato nei blocchi.

Si distinguono due tipi di transazioni:
- trasferimento di denaro esistente tra più entitià;
- *coinbase*, cioè la creazione di nuovo denaro.

L'intuizione alla base delle transazioni è che il denaro passa da un proprietario ad un altro ed è possibile ricostruire la storia dei proprietari, a partire dalla creazione. Infatti, Bitcoin non salva il denaro da qualche parte, ma salva ogni transazione nella blockchain. Per provare che si ha diritto a spendere una certa quantità di Bitcoin, è sufficiente provare che esiste una transazione sulla blockchain, a proprio favore, con quello stesso importo.

Bitcoin utilizza un *transaction-based legder*, cioè un registro che tiene traccia delle transazioni, in cui ciascuna specifica il numero di input^[Le monete (o meglio, le frazioni di Bitcoin) che vengono spese. Questi input sono sempre gli **output di transazioni precedenti**.] e il numero di output^[Le nuove monete che vengono create e assegnate a nuovi indirizzi. Ogni output ha un valore e un indirizzo a cui è destinato.]. 

L'interezza della transazione deve essere consumata: se si riceve, con una transazione, un Bitcoin intero, è necessario spendere l'intero Bitcoin^[Per inviare frazioni di questo Bitcoin, si preparano più transazioni. Se, per esempio, si devono spedere solo 0.6 BTC, si prepara un output verso il destinatario di 0.6 BTC e un ulteriore output di 0.4 BTC da ritornare a se stessi.].

Ciascuna transazione è facilmente verificabile grazie all'uso di hash pointers. 

I fondi (saldo rimanente nel wallet, NdA) possono essere *consolidati* creando una transazione con due input e un output^[L'idea è quella di cambiare due banconote da 10 euro con una banconota da 20 euro.].

#### Sintassi della transazione

- **Metadata**: La dimensione della transazione, il numero di input e il numero di output. È presente l'hash dell'intera transazione che funge da ID univoco ed è ciò che permette l'uso di hash pointer per riferirsi alle transazioni;
- **input**: gli input (i fondi presenti nel wallet da usare, in forma di riferimenti alle transazioni ricevute da cui "estrarre" i fondi, NdA) in forma di array, in cui ciascun input ha la stessa forma. Un input specifica una transazione precedente, dunque contiene un hash di quella transazione che funge da hash pointer ad esso. L'input contiene anche l'indica dell'output della precedente transazione che ancora non è stata spesa;
- **output**: anche l'output è in forma di array. Ciascun output contiene due campi, entrambi i quali hanno un valore e la somma di tutti gli output deve essere uguale o inferiore alla somma di tutti i valori di input. Se la somma degli output è minore della somma degli input, la differenza è una "commissione" per il minet che pubblica la transazione.

#### Coinbase transaction

Una transazione di tipo *coinbase* è la prima di ogni blocco e assegna la ricompensa del blocco e raccoglie tutte le fee delle transazioni del blocco. I client possono lasciare delle fee per incentivare i miner a validare le proprie transazioni più velocemente. Inoltre, questa transazione crea un nuovo Bitcoin: sarà dunque valida senza alcun input.

### Blocchi

Per questioni di ottimizzazione, le transazioni sono raggruppate in blocchi. Senza i blocchi, bisognerebbe svolgere un processo di *Proof of Work* per ogni transazione, con una conseguente richiesta di enormi quantità e tempo per ogni pagamento, rallentando il sistema. Inoltre, la catena di hash sarebbe più lunga, in quanto ciascuna transazione sarebbe collegata con la precedente (dove, al contrario, si usano i blocchi, che rende il meccanismo più compatto e facile da gestire).

La blockchain è, sostanzialmente, una combinazione di due strutture dati basate su hash. Ciascun blocco è identificato dal suo hash (*block hash* o *block header hash*) e si riferisce al blocco precedente, detto *blocco genitore* (*parent block*) includendo l'hash di questo blocco in un campo dell'intestazione.

![[Pasted image 20250814182004.png]]

#### Struttura di un blocco

- **Block height**: il numero di sequenza nella catena;
- **block size**: la dimensione, in byte, del blocco;
- **block reward**: la ricompensa del blocco;
- **txCount**: il numero di transazioni;
- **block header**: i metadati del blocco (tipicamente inizia con un grande quantità di zero);
- **transazioni**.

##### Block header

- **Time**: il momento in cui il blocco è stato minato;
- **version**: il numero di versione del protocollo;
- **previous block hash**: l'hash del blocco precedente;
- **bits**: difficoltà da aggiungere al blocco^[È un numero che indica quale deve essere il valore massimo dell'hash del blocco affinché il blocco sia considerato valido. I miner devono trovare un hash del blocco che sia inferiore o uguale a questo valore target. Il campo "bits" non è il target di difficoltà completo, ma una sua versione compressa in 4 byte. Il valore del target di difficoltà è un numero molto grande a 256 bit. Il valore "bits" viene calcolato ogni 2016 blocchi (circa ogni due settimane) per regolare la difficoltà del mining, in modo che un nuovo blocco venga aggiunto alla blockchain in media ogni 10 minuti. Quando un miner propone un nuovo blocco, gli altri nodi della rete usano il valore "bits" per verificare se l'hash del blocco proposto soddisfa il requisito di difficoltà. Se l'hash è inferiore o uguale al target derivato da "bits", il blocco è considerato valido e può essere aggiunto alla blockchain.];
- **nonce**: viene cambiato finché non si trova una corrispondenza con l'hash del blocco^[Minare significa proprio trovare il valore, non conosciuto a priori, del nonce.];
- **Merkle root**: la radice del Merkle tree calcolata combinando le singole transazioni nel blocco.

## Chain

Un blocco contiene l'hash del suo genitore nella sua intestazione che, dunque, influenza il proprio hash. Un cambiamento in un blocco (precedente) rompe la catena di hash.

Essendo la catena interamente replicata sulla rete, è possibile trovare la corretta versione della catena chiedendo alla maggioranza dei nodi, assumendo che la maggioranza (50% + 1) dei nodi sia benigna.

### Nakatomo Consensus

*Nakatomo Consensus* è l'algoritmo usato nella rete Bitcoin per raggiungere un consenso *trustless* (senza fiducia) tra partecipanti. Il contesto in cui Bitcoin opera è:
- asincrono, distribuito e decentralizzato;
- il numero di nodi non è conosciuto e possono essere bizantini;
- l'unica assunzione è che la maggioranza dei nodi è benigna.

I peer devono concordare sul nuovo stato del sistema (per esempio, il prossimo blocco da aggiungere alla blockchain). I peer che generano nuovi blocchi sono detti *miners* e ricevono delle transazioni dai client; dopo averle validate, possono iniziare il processo di generazione di un nuovo blocco.

È necessario ricordare che si è in un sistema P2P, senza una autoritià centrale che assegna identità e che verifica che non stanno creando dei Sybils^[Si tratta di un'entità (un nodo, un utente) malintenzionata che crea e controlla **molteplici identità false** per manipolare un sistema decentralizzato e ottenere un potere sproporzionato. L'attacco consiste nell'usare queste false identità per far sembrare una singola persona o entità come se fosse un gruppo di individui separati, acquisendo così un controllo maggiore sulla rete.]. Si vuole comunque raggiungere l'obiettivo della *pseudonymity*, con la quale a nessuno è richiesto di rivelare la propria identità reale. Si può compensare la mancanza di identità facendo un'assunzione più debole, con la quale si accetta che il sistema possa scegliere un nodo a caso che ha il ruolo di proporre il successivo blocco; questo stesso nodo non è in grado di moltiplicare il suo potere creando nuovi nodi. Quando un miner propone un nuovo blocco, gli altri nodi non votano esplicitamente per accettarlo, ma mostrano il consenso implicitamente, costruendo il blocco successivo su quel blocco appena proposto. Se un nodo (miner) malintenzionato proponesse un blocco non valido o che cerca di truffare, la maggioranza dei nodi onesti lo ignorerebbe. Essi continuerebbero a lavorare sulla catena che già conoscono, ignorando la catena "cattiva". Se un altro miner onesto trovasse il blocco successivo sulla catena "buona", la sua catena diventerebbe più lunga e sarebbe adottata da tutti gli altri nodi. Il consenso semplificato quindi prevede i seguenti step:
1. le nuove transazioni sono inviate in broadcast a tutti i nodi;
2. ciascun nodo raccoglie le nuove transazioni in un blocco;
3. in ogni round, un nodo a caso trasmette in broadcast il proprio blocco;
4. altri nodi accettano il blocco solo se tutte le transazioni contenute in esso sono valide;
5. i nodi esprimono il loro consenso sul blocco includendo il suo hash nel nuovo blocco che creano.

Un utente malevolo non può rubare Bitcoin che appartengono a un altro utente: sarebbe necessario che creasse una transazione valida che spende quella moneta e può avvenire solo con la forgiatura della firma del proprietario; in più, un nodo può decidere di non includere transazioni che originano da un certo indirizzo, ma questo è solo un fastidio minore poiché, infine, la transazione sarà inclusa in un blocco proposto da un nodo onesto.

## Double-spend attack

Un utente malevolo può provare a spendere due volte la stessa transazione:
1. crea una transazione dal suo indirizzo a quello di un venditore. Un nodo onesto crea il blocco successivo e include la transazione;
2. il venditore vede la transazione nel blocco e fornisce il servizio;
3. supponendo che l'utente malevolo viene scelto per proporre il blocco successivo, può proporre un blocco che ignora il blocco che contiene il suo pagamento al venditore. In più, lo stesso utente include una nuova transazione con la quale trasferisce la moneta che dovrebbe andare al venditore a un altro indirizzo sotto il suo controllo.
Il risultato è che solo una di queste transazioni sarà valida e includa. Quale delle due è inclusa dipende da quale blocco sarà infine incluso nel consenso a lungo termine della catena. A questo punto, i due rami sono della stessa lunghezza e non c'è nessuna differenza, tecnicamente.

Il meccanismo che il venditore ha per proteggersi è quello di non rilasciare il servizio finché non sono state ricevute $k$ conferme, il che comporta una discesa esponenziale, in funzione di $k$, della probabilità che avvenga una transazione *double-spend*. La misura tipica (*heuristic*) è quella di aspettare 6 conferme.

## Incentivi e Proof-of-Work

- **Block reward**: il nodo che crea un blocco può includere una transazione speciale in quello stesso blocco, che è una transazione di *coin-creation* (*coinbase*);
- **transaction fees**: il creatore di ogni transazione può decidere di fare in modo che il valore totale in output della transazione sia inferiore a quello degli input. Così, a mano a mano che la ricmpensa dei blocchi inizia ad esaurirsi, diventa sempre più importante, se non obbligatorio, per gli utenti inserire una transaction fee per ottenere una ragionevole *Quality of Service*.

Inoltre, affinché nodi bizantini e attacchi Dos, i miner devono risolvere un hash "puzzle" (attività di mining) per generare un nuovo blocco. Questo rappresenta la *Proof of Work*. Risolvere il puzzle in poco tempo richiede una grande potenza computazionale e il miner che risolve il puzzle ottiene una ricompensa. Il puzzle consiste nel trovare un valore nonce per il quale l'hash del blocco è inferiore o uguale al valore target. Il miglior algoritmo per procedere è brute force. 

## Forks

Esistono due scenari:
- quando il miner risolve il puzzle, aggiunge il blocco sulla sua catena e la invia a tutti gli altri nodi;
- prima di risolvere il puzzle, riceve un blocco da un altro nodo. In questo caso, il miner smette di trovare una soluzione e aggiunge il blocco alla sua catena.

Un nuovo blocco può arrivare in qualsiasi momento.

Il miner può mantenere entrambi i blocchi se fossero validi entrambi, creando un *fork*. La catena più lunga è quella che i singoli nodi accettano come versione valida della blockchain.

![[Pasted image 20250814191806.png]]

Esistono due tipologie di forks:
- **hard fork**: una divergenza permanente dalla versione corrente della blockchain, che comporta la creazione di due catene distinte e incompatibili;
- **soft fork**: un aggiornamento *backward-compatible* alla blockchain, che consente a vecchi nodi di validare transazioni sulla nuova catena, che però può imporre regole più stringenti.

### Nakatomo Consensus (pt. 2)

Con le proprietà analizzate, il consenso Nakatomo prevede:
- **accordo probabilistico**: fermandosi in qualsiasi istante, si possono sempre avere dei fork;
- **terminazione**: per avere un accordo deterministico non ci si può fermare.

Il principale svantaggio di Bitcoin è che non può mai essere arrestato.

In questo caso, si ricorda che *ogni proprietà è una combinazione di proprietà di sicurezza* (*safety property*) *e proprietà di vivacità* (*liveness property*):
- **safety property**: assicura che niente di male avvenga durante l'esecuzione (si raggiunge il consenso);
- **liveness property**: assicura che qualcosa di buono alla fine avvenga (termination, il processo di aggiunta di un blocco si conclude in un tempo finito).

In Bitcoin, *liveness* assicura la sicurezza. Nella maggior parte dei sistemi distribuiti, queste due proprietà sono in conflitto: per aumentare la sicurezza, spesso si deve rallentare il sistema (riducendo la vivacità). In Bitcoin, invece, la loro relazione è unica.

La **vivacità** (cioè la continua gara dei miner per trovare il prossimo blocco attraverso un'intensa prova di lavoro) è ciò che rende la **sicurezza** possibile. Ogni miner, lavorando per estendere la blockchain, sta implicitamente votando per la catena che ritiene valida. La catena con la maggioranza del lavoro computazionale (hash power) è quella che alla fine viene accettata da tutti. Un attaccante che volesse alterare una transazione precedente dovrebbe rifare la prova di lavoro non solo per il blocco che vuole modificare, ma anche per tutti i blocchi successivi. L'immensa quantità di lavoro richiesta per fare ciò (la **vivacità** del mining) rende questo attacco economicamente proibitivo e virtualmente impossibile.

## 51% attacks

Se il consenso fallisse e ci fosse un attaccante che controllasse più del 51% della potenza di mining, comunque non si potrebbero rubare monete da indirizzi esistenti, poiché i nodi onesti non accetterebbero un blocco con transazioni non valide, e l'attaccante non può fare in modo che le transazioni raggiungano la maggioranza della rete.

Un attacco simile distruggerebbe tutta la fiducia in Bitcoin.

## Ruoli dei peer

- **Waller**: conserva le identità;
- **network**: riceve e invia blocchi da e verso altri nodi;
- **miner**: concorre con altri nella generazione di nuovi blocchi risolvendo hash puzzle;
- **full blockchain**: conserva l'intera blockchain (intestazioni e transazioni).

![[Pasted image 20250814193042.png]]

### Identità

Una identità corrisponde a una chiave pubblica, che è un identificatore anonimo. Il riuso della stessa permette il tracciamento dell'attività (essendo la blockchain pubblica) di quella chiave ed è possibile inferire l'identità, anche perché, ogni volta che un nodo trasmette una transazione, gli altri possono conservare l'indirizzo IP del messaggio e associarlo alla chiave pubblica. Dunque, per un vero anonimato, è necessario cambiare frequentemente la chiave pubblica e mascherare il vero indirizzo IP.

Gli indirizzi sono derivati dalla chiave pubblica.

![[Pasted image 20250814193330.png]]

### Wallet

Un wallet Bitcoin è un dispositivo o software per conservare e inviare Bitcoin. Contiene le chiavi private necessarie per firmare le transazioni. Chiunque conosca la chiave privata può controllare le monete associate a un dato indirizzo.

## Problemi della blockchain

Esistono problemi di diverse nature associate a Bitcoin e la sua blockchain:
- **non tecnici**: consumo energetico, potenza computazionale concentrata su alcuni nodi;
- **problemi tecnici**: scalabilità limitata, scarsa espressività dei dati, impossibilità di esprimere relazioni tra i dati, mancanza di standardizzazione.

La scalabilità limitata è imputabile al numero di transazioni per secondo limitata dalla dimensione del blocco e dal tempo del blocco; la scarsa efficienza è imputabile al fatto che è richiesta almeno un'ora per confermare in modo sicuro una transazione. Infine, i dati di Bitcoin possono esprimere solo transazioni economiche e relazioni tra dati sono difficili da esprimere.

# Ethereum

Ethereum condivide molti elementi con altre blockchain aperte (P2P, byzantine fault-tolerant...). Viene però progettata per essere una blockchain programmabile general purpose^[Linguaggio **Touring complete**: il suo linguaggio di programmazione (solitamente *Solidity*) può essere usato per creare qualsiasi tipo di programma o applicazione che un computer tradizionale può eseguire.].

## Consenso in Ethereum (*Proof of Stake*)

La rete Ethereum utilizza un consenso basato su *Proof-of-Stake*, dopo aver iniziato ad operare su un consenso basato su PoW, con l'obiettivo di ridurre il consumo energetico, non richiedere più attrezzatura specializzata^[I mining pools possono potenzialmente dominare il mining e quindi indurre una centralizzazione.].

Proof-of-Stake è un modo di provare ai validatori che qualcosa di valore nella rete può essere distrutto se agiscono in modo non onesto. I validatori esplicitamente mettono a rischio (una sorta di "caparra") del capitale, in forma di ETH, in uno smart contract su Ethereum. Diventano responsabili di controllare che nuovi blocchi propagati sulla rete sono validi e, occasionalmente, creano e propagano a loro volta dei blocchi; se provano a frodare la rete, alcuni o tutti gli ETH messi come caparra possono essere distrutti.

Affinché si possa diventare validatori, un utente deve depositare 32 ETH ed eseguire tre software: un client di esecuzione (*execution client*), un client per il consenso (*consensus client*) e un client per il validator (*validator client*). Depositando i proprio ETH, l'utente si unisce a una coda di attivazione che limita il tasso con cui nuovi validatori si uniscono alla rete. I validatori ricevono poi blocchi dai peer sulla rete Ethereum. Le transazioni consenti in blocco sono ri-eseguite per controllare che i cambiamenti proposti allo stato di Ethereum sono validi e la firma del blocco viene controllata; quindi, il validatore invia un voto (*attestation*, pesato sul saldo del validator) in favore di quel blocco sulla rete.

Al contrario di PoW, il tempo dei blocchi è fissato ed è diviso in slot^[Unità di tempo di base in cui un blocco può essere proposto. Un validatore è selezionato casualmente per proporre un blocco in ogni slot.] (12 secondi) e epoche (*epochs*, 32 slot), equivalenti a 6,4 minuti. Nel PoW, il tempo medio di creazione di un blocco è di 10 minuti, ma può variare; al contrario, col PoS, il tempo è scandito in modo rigido dagli slot. Uno slot può essere vuoto, se il validatore selezionato non riesce a proporre un blocco in tempo. Alla fine di ogni epoch, la rete esegue un checkpoint che finalizza la cronologia della blockchain, comportando l'impossibilità, da questo momento in poi, di modifica o riorganizzazione, rendendo le transazioni irreversibili^[Questo non avviene con la stessa rigidità nel PoW.].

In ogni slot, un committee di validatori (128 membri) sono randomicamente selezionati e i cui voti sono usati per determinare la validità del blocco proposto. Un attaccante ha meno di uno su un trilione di probabilità di controllare i $\frac23$ di un committee. Dividere in committee è un importante elemento per mantenere il carico sulla rete gestibile. I committee permettono di dividere i validatori in modo che ogni validatore attivo vota in ogni epoca e può far parte di un solo committee per ogni epoca, ma non in ogni slot. Si raggiunge così una sicurezza contro gli attacchi Sybil o attacchi al 51% e permette a tutti i validatori attivi di partecipare, senza concentrare il potere in un piccolo gruppo. Tipicamente, ci sono più di 8192 validatori, il che significa che può esserci più di un committee per slot. Le probabilità di sicurezza diminuiscono quando ci sono meno di 4096 validatori, poiché i committee avrebbero meno di 128 validatori.

### Proposer selection

Il meccanismo con cui si sceglie il proponente del blocco è RANDAO, che prevede i seguenti step:
- **impegno** (**commit**): i validatori propongono i loro contribuyi 