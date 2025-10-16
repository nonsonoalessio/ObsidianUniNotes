*Elemento di afferenza: [[Campi magnetici]].*
***
# Forza di Lorentz
## Enunciato e legge
$$\vec{F} = q \vec{v} \times \vec{B}$$
L'unità di misura è il Tesla ($T$).
Si utilizza anche il Gauss ($G$), che equivale a $10^{-4} T$  ($1 T = 10^4 G$).
Qualora vi sia anche un contributo di campo elettrico, la relazione si modifica aggiungendo la [[forza di Coulomb]]:
$$\vec{F} = q \vec{E} + q \vec{v} \times \vec{B}$$
***
## Esperimento
Stabilito un sistema di riferimento in cui vi siano uno o più circuiti elettrici fermi, in cui vi è una [[Corrente Elettrica#Corrente stazionaria definizione|corrente stazionaria]], che percorre un circuito di prova composto da un tratto rettilineo, $d \vec{l}$, connesso al resto del circuito mediante dei tratti flessibili (entrambi gli elementi sono ==elettricamente neutri==).
Quando il circuito è avvicinato a dei circuiti elettrici in cui fluisce della corrente o del materiale magnetico, il filo $d \vec{l}$ subisce una forza $d \vec{F}$ con queste caratteristiche:
* il modulo $d \vec{F}$ è proporzionale al prodotto $I \cdot d \vec{l}$;
* la direzione di $d \vec{F}$ è **ortogonale** a $d \vec{l}$;
* in ogni posizione, la forza dipende dall'orientamento di $d \vec{l}$; in particolare:
    * vi è una direzione in cui $d \vec{F} = 0$;
    * vi è una direzione in cui $d \vec{F}$ è massima, che viene individuata dalla direzione ortogonale a quella in cui la forza si annulla;

Queste osservazioni conducono ad ipotizzare che i circuiti percorsi da corrente ==generino un campo magnetico $\vec{B}$ al loro interno==, che determina sul tratto di filo conduttore $d \vec{l}$ una forza $d \vec{F}$ che viene espressa dalla seguente legge ([[Seconda Legge di Laplace]]): 
$$d \vec{F} = I d \vec{l} \times \vec{B}$$
che rappresenta la definizione operativa del *campo di induzione magnetica* $\vec{B}$.
> [!NOTE] Seconda Legge di Laplace: osservazioni
> Questa legge vale solo nel caso in cui $\vec{B}$ non subisca variazioni apprezzabili nel tratto $d \vec{l}.$

Riscrivendo la quantità $I d\vec{l}$ applicando le definizioni di [[Corrente Elettrica#Densità di corrente|densità di corrente]], si ottiene:
$$I d\vec{l} = \vec{J} dS dl = nq \vec{v_d} \ dS \ dl=dN q \vec{v_d}$$
e sostituendo all'interno della seconda legge di Laplace, si ottiene:
$$d \vec{F} = dN \cdot q \vec{v_D} \times \vec{B}$$
Da cui ci si aspetta che, una singola carica puntiforme $q$, che si muove con velocità $v$ all'interno di un campo magnetico $\vec{B}$, subisce una forza $\vec{F}$ pari a:
$$\vec{F} = q \vec{v} \times \vec{B}$$
che rapprensenta la **Legge di Lorentz**.
> [!NOTE] Legge di Lorentz: osservazioni
> Questa legge ha carattere locale. 
> Inoltre, secondo questa legge, una carica ferma non è soggetta a nessuna forza generata da un campo magnetico; quando è in movimento, è soggetta solo a forze ortogonali alla velocità: ==la legge di Lorentz non compie alcun lavoro==, ma modifica solamente la direzione di moto di una particella, senza modificarne l'energia cinetica (e, quindi, la velocità).

Di conseguenza, una particella si muoverà con un moto elicoidale, dato dalla composizione di un moto circolare e un moto rettilineo uniforme.
Il rapporto tra campo elettrico $\vec{E}$ e magnetico $\vec{B}$ restituisce la velocità delle cariche e, su tale base, si costruisce il **selettore di velocità**.