*Questo argomento è stato affrontato in #retiLogiche.*
***
# Implementazione di un sommatore
## Half-adder e Full-adder
Il sommatore è una **rete iterativa**: diversi sommatori sono disposti in cascata per sommare un numero su $n$ bit. Serviranno $n$ sommatori per svolgere questa somma, uno per bit.
Lo schema di un sommatore è il seguente: 

![[res/Calcolatori/RL-fulladder.png]]

> [!NOTE] Generalità del Sommatore
>  Un sommatore è una rete logica che - nella forma generale - riceve **3** ingressi e produce **2** uscite. Questo sommatore è detto `full-adder`.
> Per semplicità di realizzazione, tuttavia, si sceglie anche di implementare l'`half-adder`, con **2** ingressi e **2** uscite; ciò non consente la gestione del riporto.
***
## Progettazione di un sommatore
*Si prende in esame il sommatore con 3 ingressi e 2 uscite.*

Dovendo il sommatore gestire sia il risultato dell'addizione, che un eventuale riporto, c'è bisogno di una tabella di verità, con 2 funzioni: la funzione `S` per la somma, e la funzione `C*` per il riporto:
a | b | c | `S` | `C*`
-- | -- | -- | -- | --
0 | 0 | 0 | `0` | `0`
0 | 0 | 1 | `1` | `0`
0 | 1 | 0 | `1` | `0`
0 | 1 | 1 | `0` | `1`
1 | 0 | 0 | `1` | `0`
1 | 0 | 1 | `0` | `1`
1 | 1 | 0 | `0` | `1`
1 | 1 | 1 | `1` | `1`
### Funzione somma
Per quel che riguarda la funzione somma, la k-mappa è:
ac/c | 0 | 1
--- | --- | ---
00 | | 1
01 | 1 | 
11 | | 1
10| 1 |
la quale genera l'espressione:
$$S = \bar{a} \bar{b} c + \bar{a} b \bar{c} + abc + a \bar{b} \bar{c}$$
Fattorizzando:
$$S = \bar{a}(\bar{b} c + b \bar{c})$$
Ovvero, una funzione `XOR`.
Ponendo $y = \bar{b} c + b\bar{c}$, cioè $y = b \oplus c$:
$$S = \bar{a} y + a \bar{y}$$
Si ottiene un'altra `XOR`. L'equazione può essere, pertanto, riscritta come:
$$S = a \oplus b \oplus c$$

### Funzione riporto
La funzione riporto ha la seguente k-mappa:
ac/c | 0 | 1
--- | --- | ---
00 |   |  
01 |   | 1 
11 | 1 | 1
10 |   | 1
che genera l'espressione:
$$c* = bc+ab+ac$$
