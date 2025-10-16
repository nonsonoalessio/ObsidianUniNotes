


# Appunti Lezione
*Simulazione di trasmissione digitale e valutazione delle performance.*

**Sorgente**: segnale da trasmettere, va recuperato a destinazione.

Per trasmettere si campiona (discretizzazione su asse tempo) e si quantizza.

🚨 **Urgente**: Rivedere teorema di Shannon, Trasformata di Fourier, operazioni di base 🚨

Frequenza di Nyquist: almeno due volte la banda massima, (Il passo è l'inverso della banda)

Durata finita -> banda infinita; banda finita -> durata infinita (troncamento & convuluzione). Si applica il teorema del campionamento perché, ad un certo punto, l'energia di un segnale diventa trascurabile.

Velocirà di variazione influenzata dalla massima frequenza, forma da tutte le frequenze.

`fft`: fast fourier transform. Poi si applica `fftshift`.

Trasformata delta di dirac: fasore infinito. Se si tronca il fasore, si ottiene una convuluzione; una convulazione per una delta si ottiene il segnale stesso.

Trasformata finestra rettangolare è una sync. Se la finestra si allunga, si converge ad una delta di dirac.

La banda si vede dal grafico (dove c'è il picco).

## Trasmetti su $m$ possibilità

Portante+Modulante

PAM: amplitude; più energia
PPM: Position; più banda

Si simula direttamente l'output

Alla ricezione di proietta sulle funzioni di base (processo di demodulazione)

==Implementare foto. (catena conversione analogico digitale)==

***

$dB = 10 \log x^{(2)}$ se energia, altrimenti $dB = 20 \log x$.



``` matlab
function PSKgen(M, Es)

% generare il segnale equivale ad assegnare le coordinate; i segnali sono spaziati di 2pi/m
for m=1:M
  S(m, 1) =  sqrt(Es) * cos((m - 1) * 2*pi/M); % xCoord - S è una matrice
  S(m, 2) =  sqtr(Es) * sin((m - 1) * 2*pi/M); % yCoord - 2*pi/M = theta
end

%% Il rumore ha lo stesso effetto su entrambe le stesse coordinate (guassiano, media 0, varianza 1, indipendente tra le due coordinate)
for m = 1:M
  for n = 1:N
    plot(S(m,1) + randn, S(m,2) + randn, 's', 'markersize', 10, 'markerface', 'r')
    hold on
  end
end

axis([-2 * sqrt(Es), 2 * sqrt(Es)], [-2 * sqrt(Es), 2 * sqrt(Es)])

for m = 1:M
  plot(S(m,1), S(m,2), 'o', 'markersize', 10, 'markerface', 'b')
  hold on
end

```

Se diminuisce il rapporto segnale rumore, il livello di indecisione aumenta. (SI ottiene aumentando il rumore o diminuendo l'energia del segnale)

==Disegnare PSK, QAM,  + un comando per generare un segnale ortogonale.==