*Questo argomento è stato trattato in #fisicaII.*
***
# Circuiti elettrici
## Collegamenti in serie
>[!NOTE] Corrente nei collegamenti in serie
>*In [[Corrente Elettrica#Corrente stazionaria definizione|regime stazionario]]*, si mantiene costante l'intensità della corrente $i$.

Applicando la [[Legge di Ohm]], si ottiene:
$$V_A - V_B = R_1 i$$
$$V_B - V_C = R_2 i$$
Combinando:
$$V_A - V_C = (R_1 = R_2)i = R_{equiv} i$$
Da cui segue:
$$R_{equiv} = (R_1 + R_2)$$
Per cui, la [[Corrente Elettrica#^eb5b10|potenza totale spesa]] è:
$$P = (V_A - V_C)i = R_{equiv}i^2 = P_1 + P_2$$
![[Screenshot from 2022-05-19 17-18-21 1.png]]
***
## Collegamenti in parallelo
> [!NOTE] Corrente nei collegamenti in parallelo
> *In [[Corrente Elettrica#Corrente stazionaria definizione|regime stazionario]]*, si mantiene costante la d.d.p. $\Delta V$.

$$i = \frac{\Delta V}{R_1}+\frac{\Delta V}{R_2} = \Delta V (\frac{1}{R_1}+\frac{1}{R_2}) = \frac{\Delta V}{R_{equiv}}$$
Da cui segue che la resistenza equivalente $R_{equiv}$:
$$\frac{1}{R_{equiv}} = (\frac{1}{R_1}+ \frac{1}{R_2})$$
Per cui, la [[Corrente Elettrica#^eb5b10|potenza totale spesa]] è:
$$P = R_1 i_1^2 + R_2 i_2^2 = R_1 \frac{V^2}{R_1^2} + R_2 \frac{V^2}{R_2^2} = V^2(\frac{1}{R_1} + \frac{1}{R_2}) = \frac{V^2}{R_{equiv}} - R_{equiv} i^2$$
Dove $i = i_1 + i_2$.
***
## Forza elettromotrice e generatori elettrici
Ai circuiti sono collegati dei dispoitivi detti *generatori* (di corrente): la loro funzione è quella di mantenere ==costante la d.d.p. ai due poli del conduttore==.
Dal momento in cui il passaggio di corrente all'interno di un circuito e delle resistenze comporta una [[Corrente Elettrica#Effetto Joule e fenomeni di dissipazione|dissipazione di energia]], il generatorre $G$ deve fornire questa energia con una certa continuità.
Per la [[conservazione della carica]], nel generatore la stessa corrente $J$ deve circolare da $B$ verso $A$.
All'interno del resistore, a far circolare la corrente, è il [[campo elettrostatico]] $\vec{E_s}$, che compie, nell'intervallo $dt$, sulla carica $dQ = I dt$ un lavoro pari a: 
$$dL_{AB}^{(s)} = I(V_A-V_B)dt$$
Una stessa carica, tuttavia, si è mossa all'interno del generatore da $B$ ad $A$ e, su di essa, è stato compiuto un lavoro pari a $-dL_{AB}^{(s)}$.
Si costruisce quindi il *principio di conservatività del campo elettrostatico*:
$$\int^{B}_{A} \vec{E_s} \cdot d\vec{l} + \int^{A}_{B} \vec{E_s} \cdot d\vec{l} = \oint \vec{E_s} \cdot d \vec{l} = 0$$
Bisogna tener conto anche di un altro fattore: il campo elettromotore $\vec{E_e}$, che rappresenta la forza non elettrostatica agente sull'unità di carica dentro il generatore; essa ==non è conservativa== e può essere di origine chimica, meccanica etc.
Il lavoro compiuto dal campo elettromotore sulla carica unitaria:
$$\frac{dL^{(e)}}{dQ} = \int^A_B \vec{E_e}\cdot d\vec{l} = \oint \vec{E_e} \cdot d \vec{l} = f$$identifica la *forza elettromotrice* $f$ (oppure $\varepsilon$) del generatore.
Definendo la resistenza interna del generatore:
$$\int^A_B (\vec{E_s} + \vec{E_e}) \cdot d \vec{l} = ri \implies \varepsilon = \int^B_A \vec{E_s} \cdot d \vec{s} + \int^A_B(\vec{E_s} + \vec{E_e}) \cdot d \vec{l} = Ri + ri$$
La corrente che circola all'interno del cirucuito risulta:
$$i = \frac{\varepsilon}{(r+R)}$$
>[!NOTE] Differenza di potenziale e f.e.m.
>La d.d.p. ai capi della resistenza è sempre inferiore alla f.e.m. fornita dal generatore. Sono eguali solo a circuito aperto, cioè per $i=0$.

***
## Carica del condensatore nei circuiti RC
#spuntoDiRicevimento-Fisica
