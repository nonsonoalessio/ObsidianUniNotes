*Questo argomento è stato trattato in #fisicaII.*
***
# Legge di Ohm
$$\vec{J} = \sigma \vec{E}$$
Dovve $\sigma$ indica la ==conduttività elettrica==, caratteristica intrinseca del mezzo.
$\sigma$ determina anche la resistivita $\rho$ del mezzo, come: $\rho = \frac{1}{\sigma}$.
I conduttori che soddisfano questa legge sono detti *conduttori Ohmici*.
***
## I metalli: conduttori Ohmici
Con buon approssimazione, tutti i metalli sono conduttori Ohmici, con una resistività indipendente dal campo applicato.
Quando gli elettroni accelerati si uratno (la velocità netta di deriva è di circa $10 ^{-4} \frac{m}{s}$), per tenerne conto, si considera una forza simile all'attrito viscoso.
Applicando poi la legge di Newton, si può trovare la velocità di deriva e la relazione tra densità di corrente e campo applicato:
$$\frac{d \vec{p}}{dt} = \vec{F} = - e \vec{E} - \frac{m \vec{v}}{\tau}$$
$$\frac{d \vec{p}}{dt} = 0 \implies \vec{v_d} = - \frac {e \tau}{m} \vec{E}$$
Un particolare tipo di conduttore Ohmico è il **resistore**; più resistori possono essere collegati insieme in [[Circuiti elettrici|serie od in parallelo]].
***
# Legge di Ohm generalizzata
La legge di Ohm può essere generalizzata nel caso in cui tra gli estremi $A$ e $B$ compaiano altri elementi circuitali, ==a condizione che circoli un'**unica** corrente $i$==; ciò si verifica quando, in [[Corrente Elettrica#Corrente stazionaria definizione|condizioni stazionarie]], non vi sia alcun contatto con l'esterno del circuito *capace di dissipare od immettere* corrente elettrica. 
La condizione appena descritta di definisce *ramo*.

Per scriverne l'equazione, si sceglie arbitrariamente un verso di circolazione della corrente nel ramo e si considera l'andamento della d.d.p. $V$.
Il passaggio da da un capo all'altro della resistenza comporta una caduta di potenzale pari al prodotto $i \cdot R_i$, mentre il passaggio da un mersetto all'altro di un generatore di f.e.m. comporta un salto pari alla f.e.m. stessa, positivo o negativo, a seconda che la f.e.m. tenda a far passare corrente in modo concorde o discorde al verso stabilito.
Ergo, il potenziale all'estremo "di terminazione" si ottiene sommando algebricamente i contributi dei vari elementi del ramo:
$$V_B = V_A - IR_i + f_1 - IR_2 - IR_3 - f_2 - IR_4$$
Questa relazione viene riconosciuta come *legge di Ohm generalizzata* e viene riscritta come:
$$(V_A - V_B) + \sum_{ALG}f_i = \sum_{RAMO}IR_i$$
A partire da questa, si ricava la *seconda legge di Kirchoff*, basandosi sulla relazione per una sola maglia:
$$\sum_{ALG} = \sum R_i I_i$$