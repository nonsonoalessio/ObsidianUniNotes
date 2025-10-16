*Questo argomento è stato trattato in #fisicaII.*
*Macroargomento: #fisicaII/correnteElettrica .*
***
# Definizione

>[!tip] Dielettrico: definizione
> Si definisce *dielettrico* un materiale che non ha capacità conduttive (cioè un **isolante**).

Al contrario dei materiali conduttori, anche in presenza di un campo elettrico esterno, in un dielettrico ==non si genera movimento di cariche==.

# Polarizzazione

Il campo elettrico all'interno del dielettrico si compone della sovrapposizione del campo prodotto da due distribuzioni di cariche:
- le cariche libere sulle armature di un [[A1. Condensatore|condensatore]];
- distribuzione di carica uniforme, di segno opposto rispetto alle cariche sulle armature, depositate sulle facce del dielettrico (cioè all'interno del condensatore, riempito di materiale dielettrico).

Il campo elettrico totale è, dunque, la somma: $$\vec{E} = \vec{E_0} + \vec{E_p}$$
L'applicazione di un campo elettrico al dielettrico, sebbene non produca moto di cariche, fa risentire agli elettroni una forza opposta al verso del campo. mentre vale l'inverso per le cariche positive. 

A seconda che il materiale sia *polare* o *non polare*, si ottengono due comportamenti diversi.

## Sostanze polari vs non polari: comportamento

### Sostanze non polari: polarizzazione atomica

>[!tldr] Sostanza non polare: conclusione 
Se la sostanza è di tipo **non polare**, gli atomi e le molecole si deformano, raggiungendo una configurazione di equilibrio simile ad un dipolo (non potendosi le cariche muovere liberamente).

Nel caso di una sostanza non polare, il centro di massa delle cariche positive coincide con il centro di massa delle cariche negative. Applicando un campo elettrico esterno al dielettrico, i centri delle distribuzioni di carica si separano sufficientemente per formar
e dei dipoli, polarizzando il dielettrico^[In seguito alla polarizzazione, il dipolo tende a muoversi nella direzione in cui cresce il campo elettrico.].

Pur restando neutre, tra le due lastre si crea un campo elettrico $E'$ minore, in intensità, del campo $E_0$ applicato al dielettrico, ma di uguale direzione e verso opposto. Il campo elettrico complessivo $E$ è minore di quello di partenza.

![[nPol.jpeg]]

### Sostanze polari: polarizzazione per orientamento

>[!tldr] Sostanza polare: conclusione
>Se la sostanza è di tipo **polare**, le molecole tendono ad allinearsi con il campo elettrico generato dalle armature del condensatore; l'allineamento produce una schermatura che impedisce al campo elettrico di penetrare all'interno del materiale ([[A1. Condensatore#^471c2f|aumentando la capacità del condensatore]]).

Le sostanze polari^[Generalmente, le sostanze polari sono multiatomiche (e.g. acqua).] posseggono un momento di dipolo intrinseco; in assenza di campo, i dipoli sono orientati in modo randomico ma, in presenza di un campo elettrico, si orientano in modo parallelo al campo stesso (l'allineamento **non è mai completo** a causa dell'agitazione termica).Al crescere del campo elettrico (e al diminuire della temperatura), cresce l'allineamento.

![[pol.jpeg]]

### Disclaimer
%% Credo sia trascurabile come argomento. %%
Qualsiasi sia la forma del dielettrico, la densità del superficiale delle cariche di polarizzazione è uguale alla componente di $P$ (vettore di polarizzazione) lungo la normale della superficie.

Se la polarizzazione è uniforme, non si hanno cariche all'interno ma solo superficiali e la carica totale è nulla; se la polarizzazione non è uniforme, si hanno cariche di polarizzazione anche all'interno, ma la somma delle cariche di polarizzazione superficiali e di volume deve essere nulla.

# Legge di Gauss per i dielettrici

Data la [[A1. Condensatore#^8802e3|sostituzione]] di $\varepsilon$, la Legge di Gauss applicata ad un dielettrico diventa:
$$\varepsilon_0 \oint \vec{E_0} \cdot d \vec{A} = q_{\text{int}} \rightarrow \varepsilon_r \varepsilon_0 \oint \vec{E_0} \cdot d \vec{A} \equiv \oint \vec{D} \cdot d \vec{A} = q_{\text{int}}$$
>[!tip] Vettore spostamento elettrico: definizione
>Il vettore: $$\vec{D} = \varepsilon_r \varepsilon_0 \vec{E_0} = \varepsilon \vec{E_0}$$
>è detto *spostamento elettrico* o *induzione dielettrica*.

