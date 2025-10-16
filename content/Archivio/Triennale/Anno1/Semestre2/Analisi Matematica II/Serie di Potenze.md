*Argomento di afferenza: [[Serie di funzioni]].*
***
# Serie di potenze
Una serie di potenze di centro $x_0$ è una serie del tipo:
$$\sum^{+ \infty}_{k=0} a_k (x - x_0)^k = a_0 + a_1 (x - x_0) + a_2 (x - x_0)^2 + ... + a_k (x - x_0) ^ k + ...$$
>[!tip] Osservazione
>Se $x = x_0$ si ha $\displaystyle \sum^{+ \infty}_{k=0} a_k (x - x_0)^k = a_0$ e quindi la serie di potenze di centro $x_0$ **converge** almeno in $x = x_0$.

>[!tip] Osservazione
> Data $\displaystyle \sum^{+ \infty}_{k=0} a_k (x-x_0)^k$, ponendo $x - x_0 = y$ otteniamo una serie di potenze centrata in 0:
> $$\displaystyle \sum^{+ \infty}_{k=0} a_k y^k$$

>[!bug] Teorema
>*Se la serie di potenze $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k$ converge in $\eta \neq 0$, allora [[Convergenza di Serie di Funzioni#^675e67|converge totalmente]] in ogni intervallo $\displaystyle [a,b] \subset ]- |\eta|, |\eta|[$ e [[Convergenza di Serie di Funzioni#^730c57^|assolutamente]] in $]- |\eta|, |\eta| [$.*


>[!tip] Osservazione
>Se la serie di potenze $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k$ non converge assolutamente $\forall x \neq 0$, allora non converge puntalente $\forall 
x \neq 0$.

***
## Raggio di convergenza
> [!bug] Teorema
> Sia $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k$ serie di potenze con raggio di convergenza $\rho > 0$. Allora la serie [[Convergenza di Serie di Funzioni#^defad2|converge uniformemente]] in:
> * $[-r , r] \ \subset \ ]- \rho , \rho[$, con $\rho>0$ finito e $0 < r < \rho$;
> * $[-r, r] \  \forall r > 0$ se $\rho = + \infty$

***

>[!bug] Teorema di derivazione e integrazione per le serie di potenze
>Sia $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k$ serie di potenze con raggio di convergenza $\rho \neq 0$ e sia $f(x)$ la sua somma $\displaystyle \sum^{+ \infty}_{k=0} a_k x^k = f(x) \ \forall x: |x| < \rho$.
>Allora $f(x)$ è **derivabile** e:
>* $\displaystyle f'(x) = \sum^{+ \infty}_{k=1} k a_k x^{k-1} \ \forall x : |x| < \rho$;
>* $\displaystyle \int^x_0 f(t) dt = \sum^{+ \infty}_{k=0} \frac{ak}{k+1} x^{k+1} \ \forall x : |x| < \rho$




