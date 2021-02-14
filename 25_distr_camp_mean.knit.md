# Distribuzione campionaria 



Il problema che l'inferenza statistica si pone è quello di capire, sulla base di eventi osservati, quale possa essere la popolazione che li ha generati. Ci sono due approcci all'inferenza statistica: quello frequentista e quello Bayesiano. Considereremo qui l'approccio frequentista soltanto per metterne in evidenza i limiti, menre approfondiremo in seguito l'approccio Bayesiano.

L'approccio frequentista è basato sull'idea di probabilità come limite a cui tende la frequenza relativa, al tendere all'infinito del numero delle prove effettuate. È dunque centrale all'approccio frequentista l'idea di una ripetizione dell'esperimento casuale i cui esiti definiscono l'evento di interesse.

Per fornire un'intuizione del tipo di metodi statistici di cui fa uso l'approccio frequentista, esamineremo qui un concetto cruciale di tale approccio: quello di distribuzione campionaria.


## Distribuzione campionaria

In precedenza abbiamo presentato la Legge dei grandi numeri.La Legge dei grandi numeri è uno strumento molto potente, ma non è sufficiente per rispondere a tutte le nostre domande. Tutto ciò che ci offre è una "garanzia a lungo termine". Essa ci garantisce che, a lungo termine, le statistiche campionarie saranno corrette -- le statistiche
campionarie forniranno la risposta esatta se verrà raccolta una quantità
infinita di dati. Ma come ha affermato John Maynard Keynes (1923) in
economia, una garanzia a lungo termine è di scarsa utilità nella vita
reale:

> Il lungo periodo è una guida fuorviante per ciò che accade ora. Alla
> lunga saremo tutti morti. Gli economisti si sono dati un compito
> troppo facile, troppo inutile, se nelle stagioni tempestose possono
> solo dirci che, quando la tempesta sarà passata da un pezzo, l'oceano
> sarà di nuovo piatto.

Come in economia, così anche in psicologia e nella statistica. Non è
sufficiente sapere che, a lungo termine, arriveremo alla risposta
giusta. È di scarso conforto sapere che un campione di dati
infinitamente grande ci fornisce il valore esatto della media della
popolazione, quando il campione che possiamo ottenere in qualsiasi
situazione pratica non può che avere una numerosità modesta.
Nell'attività pratica della ricerca psicologica, quindi, è necessario
sapere qualcosa di più del comportamento delle statistiche campionarie
(per esempio, la media) quando esse vengono calcolate a partire da un
campione di dati molto più piccolo di quello ipotizzato dalla Legge dei
grandi numeri. Queste considerazioni portano l'approccio frequentista alla 
formulazione di un nuovo concetto: quello di *distribuzione campionaria*
(*sampling distribution*).

\BeginKnitrBlock{definition}\iffalse{-91-68-105-115-116-114-105-98-117-122-105-111-110-101-32-99-97-109-112-105-111-110-97-114-105-97-93-}\fi{}<div class="definition"><span class="definition" id="def:defsamplingdistr"><strong>(\#def:defsamplingdistr)  \iffalse (Distribuzione campionaria) \fi{} </strong></span>La distribuzione campionaria di una statistica basata su $n$
osservazioni è la distribuzione di frequenza dei valori che la
statistica assume. Tale distribuzione è generata teoricamente prendendo
infiniti campioni di dimensione $n$ e calcolando i valori della
statistica per ogni campione.</div>\EndKnitrBlock{definition}

### Simulazione

Tenendo a mente quanto detto nella sezione precedente, abbandoniamo
l'idea che i nostri campioni siano in grado di raggiungere numerosità
dell'ordine di grandezza delle decine o delle centinaia di migliaia di
osservazioni. Prendiamo invece in esame una situazione più vicina a
quella in cui gli psicologi si trovano ad operare. Consideriamo, quale
esempio, un'ampiezza campionaria di $n = 5$. Come in precedenza,
possiamo simulare questo esperimento casuale in R, usando la funzione
`rnorm()`:


```r
iq3 <- round(rnorm(n = 5, mean = 100, sd = 15))
iq3
#> [1]  79 104  63 100 109
```

Il QI medio in questo campione risulta pari a 91. Non sorprende che
questo risultato sia molto meno accurato rispetto all'esperimento casuale precedente.

Immaginiamo ora di replicare l'esperimento; immaginiamo cioè di ripetere nuovamente la procedura descritta sopra: estraiamo un nuovo campione casuale e misuriamo il QI di 5 persone. Ancora una volta utilizziamo R per effettuare la simulazione:


```r
iq4 <- round(rnorm(n = 5, mean = 100, sd = 15))
iq4
#> [1] 117  73  96  96  96
mean(iq4)
#> [1] 95.6
```

In quest altro campione casuale il QI medio è 95.6. Procediamo in
questo modo e simuliamo l'esperimento casuale dieci volte in maniera tale da ottenere i risultati seguenti.

Iniziamo creando una lista di 10 campioni di ampiezza $n = 5$.


```r
set.seed(123)
sample_list <- list()
for (i in 1:10) {
  sample_list[[i]] <- round(rnorm(5, 100, 15))
}
sample_list[[1]]
#> [1]  92  97 123 101 102
sample_list[[2]]
#> [1] 126 107  81  90  93
```

Trasformiamo la lista in un data.frame.


```r
df <- data.frame(matrix(unlist(sample_list), nrow=length(sample_list), byrow=TRUE))
df
#>     X1  X2  X3  X4  X5
#> 1   92  97 123 101 102
#> 2  126 107  81  90  93
#> 3  118 105 106 102  92
#> 4  127 107  71 111  93
#> 5   84  97  85  89  91
#> 6   75 113 102  83 119
#> 7  106  96 113 113 112
#> 8  110 108  99  95  94
#> 9   90  97  81 133 118
#> 10  83  94  93 112  99
```

Le medie di ciascuno dei 10 campioni di ampiezza $n = 5$ sono:


```r
rowMeans(df)
#>  [1] 103.0  99.4 104.6 101.8  89.2  98.4 108.0 101.2 103.8  96.2
```

Poniamoci ora il problema di replicare tante volte la procedura che ci porta a calcolare la media dei valori del QI di cinque persone prese a caso. Per ciascuna replica  dell'esperimento casuale salviamo il valore della media campionaria. Così facendo, generiamo tanti valori, ciascuno dei quali corrisponde alla media di un campione casuale di 5 osservazioni. Usando i poteri magici di R, possiamo eseguire una tale simulazione mediante le seguenti istruzioni:


```r
n_samples <- 10000
sample_size <- 5
sample_means <- rep(NA, n_samples)

for (i in 1:n_samples) {
	y <- round(rnorm(5, 100, 15))
	sample_means[i] <- mean(y)
}
```

Nella figura \@ref(fig:histmeaniq) sono riportati i risultati della simulazione. Come
illustrato dalla figura, la media dei 5 punteggi del QI è solitamente
compresa tra 80 e 120. Ma il risultato più importante di questa
simulazione è quello che ci fa capire che, se ripetiamo l'esperimento
casuale più e più volte, otteniamo una distribuzione di medie
campionarie. Un tale distribuzione ha un nome speciale in statistica: si
chiama *distribuzione campionaria della media*.


```r
data.frame(sample_means) %>% 
  ggplot(aes(x = sample_means)) +
  geom_histogram(aes(y = ..density..)) +
  labs(
    x = "Media del quoziente d'intelligenza in campioni di ampiezza n = 5",
    y = "Densità"
  )
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/histmeaniq-1.png" alt="Istogramma della distribuzione delle medie dei punteggi del QI calcolate su 10000 campioni casuali di ampiezza $n=5$." width="90%" />
<p class="caption">(\#fig:histmeaniq)Istogramma della distribuzione delle medie dei punteggi del QI calcolate su 10000 campioni casuali di ampiezza $n=5$.</p>
</div>



























