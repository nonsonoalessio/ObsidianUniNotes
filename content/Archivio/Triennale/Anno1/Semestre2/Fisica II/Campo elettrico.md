*Questo argomento è stato trattato in #fisicaII.* 
***
# Campo elettrico
Il campo elettrico è un campo di natura vettoriale, che associa ad ogni punto in una regione di spazio un vettore.
Definita $q_0$ una carica di prova, il campo elettrico è definito come:
$$F = q_0E \implies E = \frac{F}{q_0}$$
Ed esprime la forza in Newton agente sulla carica di prova; è indipendente dalla carica carica di prova, ma ==dipende solo dalla carica che lo genera==.
Unita di misura: $\frac{N}{C}$

Sorgenti di campi elettrici sono le cariche *localizzate* (cioè ferme) $Q$;  $Q$ può esprimere anche una distribuzione di cariche discreta o continua.
***
## Linee di forza
Graficamente, il campo elettrico viene rappresentato mediante le linee di campo, che adottano queste caratteristiche:
1. Le linee di campo indicano la direzione del campo elettrico; il campo è diretto lungo la tangente alla linea di campo, in ogni punto.
2. Le linee sono disegnate in modo che il modulo del campo elettrico sia proporzionale al numero di linee che attraversano una superficie unitaria perpendicolare alle linee stesse.
    - Più le linee sono dense, più il campo è intenso
3. Le linee di campo elettrico partono da cariche positivie e terminano su cariche negative.
***
## Generalizzazione del campo elettrico per distribuzioni continue
Nella pratica, si ha a che fare con un numero di cariche tale che, utilizzare il formalismo per cariche discrete, diventa impraticabile.
Si introduce, quindi, il concetto di ==distribuzione continua di carica==, descritta da una *densità spaziale* $\rho$ definita dalla relazione:
$$dq = \rho (x, y, z) d\tau$$
in cui $d \tau = dx \ dy \ dz$.
Il campo elettrico si ottiene per generalizzazione, come segue:
$$\vec{E_o} \ (\vec{r}) = \frac{1}{4 \pi \varepsilon_0} \int \frac{\rho (x' , y', z')}{| \vec{r} - \vec{r'} |^3}(\vec{r} - \vec{r'}) \ dx' \ dy' \ dz'$$
***
## Campo elettrico da [[Potenziale elettrico]]
Il lavoro svolto dal campo elettrico sulla carica si può scrivere in due modi diversi:
$$\begin{cases}
dL = -q_0 dV
\\
dL = \vec{F} \cdot d\vec{s}
\end{cases}$$
