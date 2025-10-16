*Questo argomento è stato trattato in #algoritmi_StruttureDati*
***
# Puntatori
## Definizione
>[!TIP] Puntatori: definizione
>Un puntatore è una **variabile** il cui valore è l'indirizzo di un'altra variabile (nell'ambito dello stesso programma).

>[!warning] Puntatori: tipo
>Il puntatore può essere *tipato* o *non tipato*.
>Il tipo di un puntatore indica l'insieme dei possibili valori che può assumere (varia, pertanto, in base al problema).
***
## `Left Value` vs `Right Value`
* `Left Value`:  indica l'indirizzo della variabile;
* `Right Value`: indica il contenuto della variabile.
Con l'operazione di *assegnazione*, si pone il right value di un valore `x` nel left value (== posizione) di una variabile `y`.

![[leftValue_rightValue.png]]
 >[!info] `LeftValue` e `RightValue` con operazioni sulle variabili
 >Quando una variabile è a *sinistra*, allora la semantica operazione impone di trattarla per il suo `*left* value`; al contrario, quando è a *destra* del segno di assegnazione, la si tratta contando il `*right* value`.
  ***
 ## Operazioni coi puntatori
### Dichiarazione di un puntatore
 Assumendo che sia un certo puntatore `p` di tipo `T_pointer`, in modo che questo punti ad una variabile `x`. 
 La sua dichiarazione prevederà di assegnare a `p` il `leftValue` di `x `:
 ```
 T_pointer p
 p = LV(x)
 ``` 
 ***
### Indirezione (o *dereferenziazione*)
*Nei linguaggi `C-style`, viene indicato mediante il segno `*`.*
Mediante l'operazione di indirezione, è possibile accedere alla variabile puntata (==right value==) mediante il suo puntatore.
```
int i = 2
T_pointer p
p = LV(x)
print *p
\\ stampa il valore di x
```
**In linguaggio C**:
```clike
int x = 2;
int * p;
p = &v;
printf("%d", *p);
\\ stampa il valore di x
```

>[!Warning] Puntatori non tipati e casting
> Sebbene il loro uso sia sconsigliato, è possibile utilizzare i puntatori a `void` (non tipati).
> È importante ricordare che, in caso vengano usati, ad un certo punto nell'esecuzione del programma, sarà necessario effettuare un cast.
> Un esempio in cui è necessario effettuare il cast si ha quando si prova, mediante l'indirezione, ad assegnare un valore ad una variabile:
> ```
> void * p;
> int a;
> (...)
> a = *p; \\ No!
> a = (int *) p; \\ Sì!
> ```




