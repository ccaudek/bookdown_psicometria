# (PART\*) Inferenza frequentista {-}

# Distribuzione campionaria della media dei campioni 



L'inferenza statistica può essere descritta come un insieme di operazioni sui dati che producono delle stime e delle affermazioni sul grado di incertezza che il ricercatore attribuisce alle sue previsioni e ai parametri di processi e/o popolazioni. L'obiettivo di questo capitolo è quello di fornire un'introduzione alle basi teoriche della stima e dell'interpretazione che può essere fornita alle inferenze statistiche.

## Parametri e statistiche 

In statistica, per *popolazione* si intende un insieme di elementi che
presenta caratteristiche aleatorie, mentre per *campione* si intende un
sottoinsieme della popolazione. Ma a cosa corrisponde in pratica la
popolazione? Per uno psicologo la popolazione è un gruppo di individui.
Per un biologo marino la popolazione è un gruppo di delfini, ad esempio.
Nella maggior parte dei casi, le popolazioni oggetto di interesse per i
ricercatori sono insiemi di entità concrete che esistono nel mondo
reale. Dal punto di vista della statistica, invece, le popolazioni sono
delle entità astratte. Infatti, gli statistici operazionalizzano il
concetto di "popolazione" nei termini di un oggetto matematico che
consente di essere manipolato con facilità. In precedenza noi abbiamo
già incontrato questi oggetti matematici: sono le distribuzioni di
probabilità.

L'idea è semplice. Supponiamo di occuparci del quoziente di
intelligenza, QI. Abbiamo detto che, per uno psicologo, la popolazione
di interesse solitamente è un gruppo di individui, ciascuno dei quali è
dotato di uno specifico punteggio del QI. Uno statistico "semplifica"
tale situazione definendo in maniera operativa la popolazione come la
distribuzione di densità rappresentata nella
figura \@ref(fig:qidensity). In precedenza abbiamo visto infatti
come una distribuzione di densità non sia altro che la descrizione
matematica della "forma" di un istogramma che rappresenta un numero
molto alto di osservazioni.


```r
library("ggfortify")
ggdistribution(dnorm, seq(60, 140, 0.1), mean = 100, sd = 15) +
  labs(
    x = "Quoziente d'intelligenza",
    y = "Densità di probabilità"
  )
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/qidensity-1.png" alt="Grafico della distribuzione dei punteggi del QI nella popolazione." width="70%" />
<p class="caption">(\#fig:qidensity)Grafico della distribuzione dei punteggi del QI nella popolazione.</p>
</div>

I test di intelligenza sono progettati in modo che il QI medio sia pari
a 100, la deviazione standard dei punteggi QI sia uguale a 15 e la
distribuzione dei punteggi del QI sia normale. I valori riportati sopra
sono detti *parametri* in quanto descrivono le proprietà dell'intera
popolazione. Cioè, diciamo che la media della popolazione è $\mu = 100$
e la deviazione standard della popolazione è $\sigma = 15$. Dal punto di
vista statistico, dunque, possiamo rappresentare questa ipotetica
popolazione di valori del QI mediante l'oggetto matematico che
corrisponde a una particolare distribuzione Normale:

$$
QI \sim \mathcal{N}(\mu = 100, \sigma = 15).
$$
Supponiamo ora di eseguire un esperimento nel quale il test di
intelligenza viene somministrato a 100 persone selezionate a caso. Tale
campione casuale semplice consiste nel seguente insieme di 100 numeri:


```r
set.seed(123)
iq1 <- rnorm(100, 100, 15)
# i valori QI sono numeri interi!
iq1 <- round(iq1) 
iq1
#>   [1]  92  97 123 101 102 126 107  81  90  93 118 105 106 102  92 127 107  71
#>  [19] 111  93  84  97  85  89  91  75 113 102  83 119 106  96 113 113 112 110
#>  [37] 108  99  95  94  90  97  81 133 118  83  94  93 112  99 104 100  99 121
#>  [55]  97 123  77 109 102 103 106  92  95  85  84 105 107 101 114 131  93  65
#>  [73] 115  89  90 115  96  82 103  98 100 106  94 110  97 105 116 107  95 117
#>  [91] 115 108 104  91 120  91 133 123  96  85
```

Tali valori sono stati trovati utilizzando la funzione `rnorm()` che genera numeri casuali estratti da una distribuzione normale. Nello specifico, abbiamo estratto 100 valori casuali dalla distribuzione normale con media 100 e deviazione standard 15. Se costruiamo un istogramma con i dati di un tale campione otteniamo il grafico mostrato nella figura \@ref(fig:histogramqi).


```r
data.frame(iq1) %>% 
  ggplot(aes(x = iq1)) +
  geom_histogram(aes(y = ..density..)) +
  labs(
    x = "Quoziente d'intelligenza",
    y = "Densità"
  )
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/histogramqi-1.png" alt="Istogramma della distribuzione dei punteggi del QI in un campione di 100 osservazioni." width="70%" />
<p class="caption">(\#fig:histogramqi)Istogramma della distribuzione dei punteggi del QI in un campione di 100 osservazioni.</p>
</div>

Come possiamo vedere, l'istogramma ha approssimativamente la forma corretta, ma è un'approssimazione molto cruda della distribuzione della popolazione mostrata nella figura \@ref(fig:qidensity). Se calcoliamo la media del campione, otteniamo un numero abbastanza vicino alla media della popolazione di 100, ma non identico: nel campione considerato la media e la deviazione standard sono uguali a:


```r
mean(iq1)
#> [1] 101.42
sd(iq1)
#> [1] 13.66643
```

Queste *statistiche campionarie* descrivono le proprietà di uno specifico campione che è stato osservato e, sebbene siano abbastanza simili ai parametri della popolazione, non
sono uguali ad essi. In generale, le statistiche campionarie sono ciò
che è possibile calcolare a partire dai dati osservati sul campione
mentre i parametri della popolazione sono ciò che vorremmo conoscere.

## La legge dei grandi numeri

Nella sezione [Parametri e statistiche](#sec:pars_and_sample_stats) abbiamo considerato i risultati di un esperimento casuale nel quale sono stati osservati i valori
fittizi del QI di un campione di ampiezza $n = 100$. I risultati sono
incoraggianti: la media campionaria di 101.42 ci fornisce
un'approssimazione ragionevole della media della popolazione
$\mu = 100$. In molti studi un tale livello di precisione è accettabile,
ma in altre situazioni è necessario essere più precisi.

Cosa dobbiamo fare se vogliamo che le statistiche campionarie siano più
vicine ai parametri della popolazione? La risposta è ovvia: dobbiamo
raccogliere più dati. Supponiamo dunque di condurre un nuovo esperimento
nel quale misuriamo il QI di 10000 persone. Possiamo simulare i
risultati di questo esperimento usando R:


```r
set.seed(123)
iq2 <- rnorm(n = 10000, mean = 100, sd = 15) 
iq2 <- round(iq2) 
head(iq2)
#> [1]  92  97 123 101 102 126
```

Nella figura \@ref(fig:histogramqi2) è riportato l'istogramma dei valori del QI di
questo campione più numeroso. È chiaro che, in questo secondo caso,
otteniamo un'approssimazione migliore rispetto al precedente campione
più piccolo. Ciò si riflette anche nelle statistiche del campione: 


```r
mean(iq2)
#> [1] 99.9671
sd(iq2)
#> [1] 14.9855
```

Questi valori sono molto vicini ai parametri della popolazione.


```r
data.frame(iq2) %>% 
  ggplot(aes(x = iq2)) +
  geom_histogram(aes(y = ..density..)) +
  labs(
    x = "Quoziente d'intelligenza",
    y = "Densità"
  )
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/histogramqi2-1.png" alt="Istogramma della distribuzione dei punteggi del QI in un campione di 10000 osservazioni." width="70%" />
<p class="caption">(\#fig:histogramqi2)Istogramma della distribuzione dei punteggi del QI in un campione di 10000 osservazioni.</p>
</div>

Il messaggio, un po' banale, che ricaviamo a questa simulazione è che,
generalmente, i campioni di dimensioni maggiori forniscono informazioni
migliori. Ho chiamato "banali" i risultati di questa simulazione perché
dovrebbe essere evidente a tutti che le cose stanno così. Infatti,
questo punto è talmente ovvio che, quando Jacob Bernoulli -- uno dei
fondatori della teoria della probabilità -- formalizzò questa idea nel
1713, commentò il risultato nel modo seguente:

> Perché anche il più stupido degli uomini, basandosi soltanto sul suo istinto, da solo e senza alcuna istruzione (il che è notevole), è convinto che maggiore è il numero di osservazioni, minore è il pericolo di sbagliare.

In statistica questa intuizione va sotto il nome di *Legge dei grandi
numeri*. La Legge dei grandi numeri ci dice che la media aritmetica di
un campione di $n$ osservazioni (in termini tecnici: di $n$ variabili
aleatorie $X_i$ indipendenti e identicamente distribuite), ovvero
$\frac{1}{n}\sum_{i=1}^nX_i$, per $n$ crescente tende o converge al
valore atteso teorico $\mu$. La Legge dei grandi numeri è uno degli
strumenti più importanti della statistica.

\BeginKnitrBlock{rmdnote}<div class="rmdnote">Si noti che la Legge dei grandi numeri non può dirci se lo strumento o l'esperimento considerati stiano producendo dei dati utili o dei dati che è sensato riassumere tramite la media. Ad esempio, se il dispositivo di misurazione è difettoso, la media di molte misurazioni sarà una stima molto accurata della cosa sbagliata! Questo è un esempio di errore sistematico, o errore di campionamento, che sono qualcosa di molto diverso dal fenomeno di fluttuazione casuale che viene descritto dalla Legge dei grandi numeri.</div>\EndKnitrBlock{rmdnote}

## Distribuzione campionaria

La Legge dei grandi numeri è uno strumento molto potente, ma non è
sufficiente per rispondere a tutte le nostre domande. Tutto ciò che ci
offre è una "garanzia a lungo termine". Essa ci garantisce che, a lungo
termine, le statistiche campionarie saranno corrette -- le statistiche
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
grandi numeri. Queste considerazioni ci portano alla necessità di
formulare un nuovo concetto: quello di *distribuzione campionaria*
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
#> [1] 136  97 114  91 103
```

Il QI medio in questo campione risulta pari a 108.2. Non sorprende che
questo risultato sia molto meno accurato rispetto all'esperimento casuale precedente.

Immaginiamo ora di replicare l'esperimento; immaginiamo cioè di ripetere nuovamente la procedura descritta sopra: estraiamo un nuovo campione casuale e misuriamo il QI di 5 persone. Ancora una volta utilizziamo R per effettuare la simulazione:


```r
iq4 <- round(rnorm(n = 5, mean = 100, sd = 15))
iq4
#> [1] 117 121  97  76  96
mean(iq4)
#> [1] 101.4
```

In quest altro campione casuale il QI medio è 101.4. Procediamo in
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
<img src="25_distr_camp_mean_files/figure-html/histmeaniq-1.png" alt="Istogramma della distribuzione delle medie dei punteggi del QI calcolate su 10000 campioni casuali di ampiezza $n=5$." width="70%" />
<p class="caption">(\#fig:histmeaniq)Istogramma della distribuzione delle medie dei punteggi del QI calcolate su 10000 campioni casuali di ampiezza $n=5$.</p>
</div>

La "distribuzione campionaria" è un importante concetto della statistica
ed è fondamentale per comprendere il comportamento dei piccoli campioni.
Quando abbiamo eseguito per la prima volta l'esperimento casuale
relativo all'estrazione di cinque punteggi IQ dalla popolazione, abbiamo
trovato una media campionaria pari a 101.42. Quello che impariamo dalla
distribuzione campionaria delle medie di campioni di ampiezza $n = 5$ della 
figura \@ref(fig:histmeaniq) è che un tale esperimento casuale è poco
accurato. Infatti, la distribuzione campionaria della media dei campioni
di ampiezza $n=5$ ci fa capire che, se ripetendo un tale esperimento
casuale tante volte, otteniamo delle medie campionarie con valori che
possono essere compresi nell'intervallo tra 80 e 120. In altre parole,
la distribuzione campionaria della media di campioni di ampiezza 5 ci
dice che il risultato dell'esperimento casuale (ovvero, la media
osservata in un singolo campione) varia di molto tra i diversi campioni
che possono essere estratti dalla popolazione. Di conseguenza, se il
nostro obiettivo è quello di stimare la media della popolazione, allora
non dobbiamo fidarci troppo del risultato ottenuto *per caso* da un
singolo campione di numerosità $n$ = 5. Nella discussione seguente mostreremo come sia possibile utilizzare la stima della distribuzione campionaria per descrivere le proprietà statistiche delle stime (ovvero, il grado di incertezza che è associato alle stime che otteniamo).

\BeginKnitrBlock{rmdtip}<div class="rmdtip">**La distribuzione campionaria può essere solo stimata**
  
In generale, la distribuzione campionaria non è nota, poiché dipende dalle caratteristiche della popolazione e non solo dai dati osservati nel campione. In pratica, quindi, non possiamo mai conoscere le caratteristiche esatte della distribuzione campionaria di una statistica; tali caratteristiche possono solo essere stimate. </div>\EndKnitrBlock{rmdtip}

## Distribuzione campionaria della media

Consideriamo ora l'inferenza statistica nel caso della statistica campionaria corrispondente alla media del campione. Denotiamo con $\bar{X}_n$ la media calcolata su un campione di $n$ osservazioni. Abbiamo detto che, ogni volta che osserviamo un nuovo campione di ampiezza $n$, la statistica $\bar{X}_n$ assumerà un valore diverso. In termini tecnici diciamo che $\bar{X}_n$ è una variabile aleatoria, ovvero è una variabile che assume un nuovo valore ogni qualvolta l'esperimento casuale viene ripetuto (nel caso presente l'esperimento casuale corrisponde all'estrazione di un campione casuale dalla
popolazione e al calcolo della media delle osservazioni campionarie). L'insieme dei valori che $\bar{X}_n$ può assumere in tutti i campioni casuali di ampiezza $n$ che possono essere estratti dalla popolazione è detto *distribuzione campionaria della media*.

### Valore atteso della media campionaria

Qual è la media (valore atteso) della distribuzione campionaria della
media? È facile mostrare che $\mu_{\bar{X}_n}$ coincide con il valore
medio $\mu$ della popolazione da cui i campioni di ampiezza $n$ sono
stati estratti.

::: {.proof}
Ponendo $\bar{X}_n = S_n/n$, dove $S_n = X_1 + X_2 + \dots + X_n$ è la somma di $n$ variabili aleatorie iid, ne segue che:
$$
\mathbb{E}(\bar{X}_n) = \frac{1}{n} \mathbb{E}(S_n) = \frac{1}{n} \mathbb{E}(X_1 + X_2 + \dots + X_n ) =  \frac{1}{n} n \mu = \mu.
$$
:::
<br/>

### Varianza della media campionaria

Qual è la varianza della distribuzione campionaria della media? Anche in
questo caso si può facilmente mostrare come la varianza della
distribuzione delle medie campionarie è legata alla varianza $\sigma^2$
della popolazione dalla seguente relazione:

$$
var(\bar{X}_n) = \frac{\sigma^2}{n},
(\#eq:varmedia)
$$ 
dove $n$ è la numerosità dei campioni casuali.

Prima di presentare la dimostrazione dell'eq. \@ref(eq:varmedia) è necessario ricordare la seguente proprietà della varianza: se una variabile aleatoria $X$ viene moltiplicata per una costante $a$, la varianza della variabile aleatoria $aX$ diventa
$$
var(a X) = a^2 var(X).
$$
Possiamo ora comprendere la dimostrazione seguente.

::: {.proof}
$$
var(\bar{X}_n) = \frac{1}{n^2} var(S_n) = \frac{1}{n^2} n \sigma^2 
= \frac{\sigma^2}{n}.
$$
:::
<br/>

I due risultati che abbiamo ottenuto sopra sono molto importanti. Il primo ci dice che la media campionaria è uno stimatore corretto (ovvero, non distorto) della media della popolazione. Il secondo quantifica l'errore medio che compiamo usando usiamo la media del campione quale stima della media della popolazione.

### Errore standard

La radice quadrata della varianza della distribuzione campionaria della
media si chiama *errore standard* della media campionaria. Questa è una
quantità molto importante perché ci informa sul livello di incertezza
della nostra stima fornendoci un valore che ha la stessa unità di misura
delle osservazioni. Se vogliamo stimare la media della popolazione
utilizzando la media del campione quale stimatore ci possiamo aspettare
di compiere un errore medio pari a $\frac{\hat{\sigma}_n}{\sqrt{n}},$
laddove $\hat{\sigma}_n$ è la deviazione standard del campione
utilizzata quale stima della deviazione standard della popolazione.

#### Simulazione

Per chiarire le due conclusioni precedenti, utilizziamo nuovamente la simulazione che abbiamo eseguito in precedenza, quando abbiamo generato 10000 medie campionarie per campioni di ampiezza $n = 5$ estratti dalla popolazione $\mathcal{N}(\mu = 100, \sigma = 15$). La distribuzione di tali medie è rappresentata nella figura \@ref(fig:histmeaniq). In realtà, quella fornita dalla figura \@ref(fig:histmeaniq) *non è* esattamente la distribuzione campionaria delle medie di campioni casuali di ampiezza $n=5$ estratti dalla popolazione $\mathcal{N}(\mu = 100, \sigma = 15$): la vera distribuzione campionaria della media si otterrebbe estraendo *infiniti* campioni di ampiezza $n = 5$ dalla popolazione. Tuttavia, avendo a disposizione le medie di 10000 campioni, ci possiamo aspettare un risultato empirico non troppo diverso da quello teorico. Verifichiamo dunque le due conclusioni a cui siamo giunti sopra.

Sappiamo che la media delle 10000 medie di campioni di ampiezza $n=5$ dovrà essere molto simile (anche se non identica, dato che il numero dei campioni è grande, ma non infinito) alla media della popolazione. Infatti, in questa simulazione, abbiamo che $\hat{\mu}_{\bar{X}_n} =$ 99.97 contro un valore teorico $\mu=100$. All'aumentare del numero di campioni estratti $\mu_{\bar{X}_n}$ diventa sempre più simile a $\mu$.

Calcoliamo ora la deviazione standard (detta *errore standard*) delle 10000 medie campionarie che abbiamo trovato. Nella simulazione, tale valore è pari a 6.663 mentre il valore teorico è $\sigma_{\bar{X}} = \frac{\sigma}{\sqrt{n}} = \frac{15}{\sqrt{5}} = 6.708$. Possiamo dunque dire che, con 10000 medie campionarie le proprietà della distribuzione campionaria della media vengono approssimate molto bene.

Si noti che possiamo attribuire a $\sigma_{\bar{X}}$ la stessa interpretazione che è possibile fornire, in generale, alla deviazione standard. Nel caso di un campione, la deviazione standard $\sigma$ ci dice di quanto, in media, i valori osservati sono lontani dalla media. Nel caso della distribuzione campionaria delle medie dei campioni, $\sigma_{\bar{X}}$ ci dice quale errore medio compiamo stimando $\mu$ con $\bar{X}$. In altre parole, ci dice che, se considerassimo *tutte* le medie $\bar{X}$ che si possono calcolare sulla base degli infiniti campioni di dimensioni $n$ che possiamo estrarre dalla popolazione, la distanza media tra ciascuna di queste medie e la media della distribuzione (che corrisponde alla media della popolazione) è pari a $\sigma_{\bar{X}}$. La quantità $\sigma_{\bar{X}}$ può dunque essere considerata come una misura di errore nella stima di $\mu$ mediante $\bar{X}$.

### Distribuzioni delle statistiche campionarie

Qualunque statistica campionaria ha una sua distribuzione teorica. Consideriamo, ad esempio, il massimo del campione quale statistica campionaria di interesse. Ripetiamo la simulazione che abbiamo descritto sopra calcolando, questa volta, il valore massimo del campione. 


```r
set.seed(123)
n_samples <- 10000
sample_size <- 5
sample_max <- rep(NA, n_samples)

for (i in 1:n_samples) {
	y <- round(rnorm(5, 100, 15))
	sample_max[i] <- max(y)
}
```

I risultati di questa simulazione sono riportati nella figura \@ref(fig:histmaxiq). 


```r
data.frame(sample_max) %>% 
  ggplot(aes(x = sample_max)) +
  geom_histogram(aes(y = ..density..)) +
  labs(
    x = "Valore massimo del QI in campioni di ampiezza n = 5",
    y = "Densità"
  )
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/histmaxiq-1.png" alt="Istogramma della distribuzione del QI massimo osservato in ciascun campione casuali di ampiezza $n=5$. Per creare la figura sono stati considerati 10000 campioni casuali." width="70%" />
<p class="caption">(\#fig:histmaxiq)Istogramma della distribuzione del QI massimo osservato in ciascun campione casuali di ampiezza $n=5$. Per creare la figura sono stati considerati 10000 campioni casuali.</p>
</div>

Non dovrebbe sorprenderci che, prendendo 5 persone a caso per poi selezionare la persona con il punteggio QI più alto, otteniamo una distribuzione che, rispetto alla distribuzione della figura \@ref(fig:histmaxiq), è traslata verso destra. Nella presente simulazione, la distribuzione del QI massimo di un campione casuale di ampiezza $n = 5$ si situa approssimativamente nell'intervallo compreso tra 90 e 150.


## Teorema del limite centrale {#sec:tlc}

Chiediamoci ora quale sia la relazione che intercorre tra la distribuzione campionaria della media e l'ampiezza $n$ dei campioni. In ciascun pannello della figura  \@ref(fig:tlcnavarro) sono riportati i risultati di una simulazione nella quale sono stati generati 10000 campioni di ampiezza $n$ per poi calcolare il QI medio in ciascun campione. 


```r
par(mfrow=c(2, 3))

mu <- 100
sigma <- 15
nrep <- 1e5

qi <- rep(NA, nrep)

get_mean <- function(nobs, mu, sigma) {
  x <- round(rnorm(n = nobs, mean = mu, sd = sigma))
  mean(x) 
}

ymax <- 0.14

nobs <- 1
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 1")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

nobs <- 2
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 2")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

nobs <- 3
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 3")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

nobs <- 5
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 5")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

nobs <- 15
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 15")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

nobs <- 30
qi <- replicate(nrep, get_mean(nobs, mu, sigma))
hist(qi, freq=FALSE,
     yaxt='n', 
     ylim=c(0, ymax),
     xlim = c(40, 160),
     ylab = "", xlab = "QI", main = "n = 30")
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, yaxt="n")

par(mfrow=c(1, 1))
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/tlcnavarro-1.png" alt="Nel primo pannello in alto a sinistra ciascun campione contiene una sola osservazione, per cui la media del campione è identica al valore del QI di una persona. Di conseguenza, la distribuzione campionaria della media è identica alla distribuzione dei valori del QI nella popolazione. Quando $n=2$ la media di ciascun campione tende ad essere più simile alla media della popolazione di quanto lo sia ciascuna singola osservazione della popolazione. Quindi anche l'ampiezza dell'istogramma (ovvero, la distribuzione campionaria della media) diminuisce, se confrontata con la dispersione della popolazione. Quando giungiamo ad una numerosità campionaria pari a $n=30$ vediamo che la maggior parte delle medie campionarie tende ad addensarsi intorno alla media della popolazione." width="190%" />
<p class="caption">(\#fig:tlcnavarro)Nel primo pannello in alto a sinistra ciascun campione contiene una sola osservazione, per cui la media del campione è identica al valore del QI di una persona. Di conseguenza, la distribuzione campionaria della media è identica alla distribuzione dei valori del QI nella popolazione. Quando $n=2$ la media di ciascun campione tende ad essere più simile alla media della popolazione di quanto lo sia ciascuna singola osservazione della popolazione. Quindi anche l'ampiezza dell'istogramma (ovvero, la distribuzione campionaria della media) diminuisce, se confrontata con la dispersione della popolazione. Quando giungiamo ad una numerosità campionaria pari a $n=30$ vediamo che la maggior parte delle medie campionarie tende ad addensarsi intorno alla media della popolazione.</p>
</div>

Gli istogrammi mostrano la distribuzione delle medie così ottenute, cioè ci forniscono una
rappresentazione grafica della distribuzione campionaria della media al variare dell'ampiezza campionaria $n$. I punteggi del QI sono stati ricavati da una distribuzione normale con media 100 e deviazione standard 15 e tale distribuzione viene visualizzata con una linea nera continua in ciascun pannello della figura \@ref(fig:tlcnavarro).

Quello che ci chiediamo è come varia la distribuzione campionaria della
media in funzione dell'ampiezza del campione. Intuitivamente, conosciamo
già parte della risposta. Se abbiamo a disposizione solo poche
osservazioni, è probabile che la media campionaria sia abbastanza
imprecisa: se ripetiamo l'esperimento casuale del campionamento e
ricalcoliamo la media del campione, otteniamo una risposta molto diversa
ad ogni ripetizione dell'esperimento casuale. Di conseguenza, la
distribuzione campionaria della media comprenderà una gamma di valori
molto grande. Invece, si ottengono risultati molto simili tra loro se
ripetiamo l'esperimento del campionamento utilizzando campioni di grandi
dimensioni. In questo secondo caso, la distribuzione campionaria
includerà una gamma di valori delle medie molto minore che in
precedenza. Questo andamento si può notare nei pannelli della
figura \@ref(fig:tlcnavarro): l'errore standard della media campionaria diminuisce all'aumentare dell'ampiezza del campione.

Ciò che abbiamo descritto finora, tuttavia, riguarda solo un aspetto di
quello che accade alla distribuzione campionaria di $\bar{X}$
all'aumentare di $n$. Gli esempi discussi finora erano relativi al caso
di campioni casuali del QI. Poiché i punteggi del QI seguono
approssimativamente una distribuzione normale, abbiamo assunto che anche
la popolazione abbia una distribuzione normale. Tuttavia, si presentano
spesso casi in cui la distribuzione della popolazione non è normale. In
queste circostanze, cosa succede alla distribuzione campionaria della
media? La cosa straordinaria è questa: non importa quale sia la forma
della distribuzione della popolazione, all'aumentare della dimensione
campionaria $n$, la distribuzione di frequenza delle medie campionarie
si approssima sempre più alla tipica forma a campana di una
distribuzione normale.

Per farci un'idea di quello che succede, eseguiamo alcune simulazioni usando R.


```r
# needed for printing
width <- 6
height <- 6

# parameters of the beta
a <- 2
b <- 1

# mean and standard deviation of the beta
s <- sqrt(a * b / (a + b)^2 / (a + b + 1))
m <- a / (a + b)

# define function to draw a plot
plot_one <- function(n, N = 50000) {

  # generate N random sample means of size n
  X <- matrix(rbeta(n * N, a, b), n, N)
  X <- colMeans(X)

  # plot the data
  hist(
    X,
    breaks = seq(0, 1, .025), border = "white", freq = FALSE,
    #col = ifelse(colour, emphColLight, emphGrey),
    col = "gray",
    xlab = "Media campionaria", ylab = "", xlim = c(0, 1.2),
    main = paste("n =", n), axes = FALSE,
    font.main = 1, ylim = c(0, 5)
  )
  #box()
  axis(1)
  # axis(2)

  # plot the theoretical distribution
  lines(x <- seq(0, 1.2, .01), dnorm(x, m, s / sqrt(n)),
    lwd = 2, col = "black", type = "l"
  )
}
```

Consideriamo la distribuzione della popolazione rappresentata dall'istogramma riportato nella figura \@ref(fig:tlctriangle1). Confrontando l'istogramma triangolare con la curva a campana tracciata dalla linea nera risulta chiaro che la distribuzione della popolazione non assomiglia affatto a una distribuzione normale.


```r
plot_one(1)
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/tlctriangle1-1.png" alt="Dimostrazione del Teorema del limite centrale. Consideriamo una popolazione che non segue la distribuzione normale. La distribuzione di tale popolazione è rappresentata dall'istogramma grigio." width="70%" />
<p class="caption">(\#fig:tlctriangle1)Dimostrazione del Teorema del limite centrale. Consideriamo una popolazione che non segue la distribuzione normale. La distribuzione di tale popolazione è rappresentata dall'istogramma grigio.</p>
</div>

In una prima simulazione, ho estratto 50000 campioni di ampiezza $n=2$ da questa distribuzione e, per ciascuno di essi ho calcolato la media campionaria. Come si può vedere nella figura \@ref(fig:tlctriangle2), la distribuzione campionaria non è triangolare. Certamente non è Normale, ma assomiglia di più ad una distribuzione campanulare di quanto assomigli alla distribuzione della popolazione raffigurata nella figura \@ref(fig:tlctriangle1).


```r
plot_one(2)
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/tlctriangle2-1.png" alt="Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=2$ estratti dalla popolazione rappresentata nella figura 1.7." width="70%" />
<p class="caption">(\#fig:tlctriangle2)Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=2$ estratti dalla popolazione rappresentata nella figura 1.7.</p>
</div>

Quando aumento la numerosità del campione a $n=4$ la distribuzione campionaria della media si approssima abbastanza bene alla normale, figura \@ref(fig:tlctriangle4).


```r
plot_one(4)
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/tlctriangle4-1.png" alt="Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=4$ estratti dalla popolazione rappresentata nella figura 1.7." width="70%" />
<p class="caption">(\#fig:tlctriangle4)Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=4$ estratti dalla popolazione rappresentata nella figura 1.7.</p>
</div>

Già con $n=8$ l'approssimazione diventa molto buona, come indicato nella figura \@ref(fig:tlctriangle8). 


```r
plot_one(8)
```

<div class="figure" style="text-align: center">
<img src="25_distr_camp_mean_files/figure-html/tlctriangle8-1.png" alt="Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=8$ estratti dalla popolazione rappresentata nella figura 1.7." width="70%" />
<p class="caption">(\#fig:tlctriangle8)Distribuzione campionaria di $ar{X}$ per campioni casuali di ampiezza $n=8$ estratti dalla popolazione rappresentata nella figura 1.7.</p>
</div>

In altre parole, se la dimensione del campione non è piccola, allora la distribuzione campionaria della media sarà approssimativamente normale indipendentemente dalla distribuzione della popolazione! Questo comportamento della distribuzione campionaria di $\bar{X}$ al variare di $n$ viene descritto in maniera formale dal Teorema del limite centrale.

\BeginKnitrBlock{theorem}\iffalse{-91-84-101-111-114-101-109-97-32-100-101-108-32-108-105-109-105-116-101-32-99-101-110-116-114-97-108-101-46-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:theotlc"><strong>(\#thm:theotlc)  \iffalse (Teorema del limite centrale.) \fi{} </strong></span>Siano $X_1, X_2, \dots$ variabili aleatorie i.i.d., tutte con lo stesso
valore atteso $\mu$ e la stessa varianza $\sigma^2$. Allora,
$$\lim_{n \rightarrow +\infty} P\left(a \leq \bar{X}_n \leq b \right) = P(a \leq Y \leq b),
\label{theo:tlc}$$ dove
$Y \sim \mathcal{N}\left(\mu, \frac{\sigma}{\sqrt{n}}\right)$.</div>\EndKnitrBlock{theorem}
<br/>

Il Teorema del limite centrale ci dice che, se vengono selezionati campioni sufficientemente grandi (tipicamente è sufficiente che $n > 30$ purché il carattere osservato non sia troppo asimmetrico), allora la media campionaria $\bar{X}$ di $n$ variabili aleatorie indipendenti $X_1, X_2, \dots$ converge in distribuzione ad una variabile aleatoria normale di media $\mu$ e varianza $\sigma^2/n$.

È altresì molto importante notare che, se le variabili di partenza $X_1$, $X_2$, ...$X_n$ sono esse stesse Normali, tutte con lo stesso valore atteso $\mu$ e la stessa varianza $\sigma^2$, allora il Teoremadel limite centrale è *esatto*. Ovvero per ogni $n$,

$$
\bar{X}_n \sim \mathcal{N}\left(\mu, \frac{\sigma}{\sqrt{n}}\right).
$$
Questa proprietà discende dal seguente teorema.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:theotlc2"><strong>(\#thm:theotlc2) </strong></span>Se $X_1, X_2, \dots, X_n$ sono $n$ variabili aleatorie Normali tra di loro indipendenti, ciascuna con valore atteso $\mu$ e varianza $\sigma^2$, allora la variabile aleatoria $X_1 + X_2 + \dots + X_n$ è a sua volta una variabile aleatoria Normale con valore atteso $n \mu$ e varianza $n \sigma^2$.</div>\EndKnitrBlock{theorem}
<br/>

In conclusione, il Teorema del limite centrale ci consente di specificare completamente le proprietà della distribuzione campionaria di $\bar{X}_n$.

1.  Se la popolazione è normale, allora $\bar{X}_n \sim \mathcal{N}\left(\mu, \frac{\sigma}{\sqrt{n}}\right)$ indipendentemente da $n$.

2.  Se invece la popolazione *non* è normale, allora la distribuzione di $\bar{X}_n$ tende a $\mathcal{N}\left(\mu, \frac{\sigma}{\sqrt{n}}\right)$ al crescere di $n$.

<br/>

Esaminiamo ora un esercizio in cui viene applicato il TLC.

Supponiamo di misurare un oggetto con una bilancia non molto precisa. Supponiamo inoltre che l'errore di misura $E$ della bilancia si distribuisca in maniera Normale con media $0$ e deviazione standard $\sigma = 2$ grammi. Se l'oggetto considerato ha un peso uguale a $w$, il peso osservato $X$ sarà dato dalla somma del suo peso vero e l'errore di misurazione: $X = w + E$. Dato che $w$ è una costante, $X$ seguirà la distribuzione normale con media $\mathbb{E}(X) = \mathbb{E}(w + E) = w + \mathbb{E}(E) = w$ e varianza $var(X) = var(w + E) = var(E) = 4$. Qual è la probabilità di ottenere una misurazione che non differisce di più di un grammo dal peso vero?

Dobbiamo trovare la probabilità 

$$
\begin{aligned}
P(-1 \leq X - w \leq 1)  &= P\bigg(-\frac{1}{2} \leq \frac{X - w}{\sigma} \leq \frac{1}{2}\bigg)\notag\\ &= P\bigg(-\frac{1}{2} \leq Z \leq \frac{1}{2}\bigg)\notag
\end{aligned}
$$
ovvero


```r
pnorm(0.5, 0, 1) - pnorm(-0.5, 0, 1)
#> [1] 0.3829249
```

Considerando l'evento complementare, possiamo dunque dire che c'è una probabilità maggiore di $0.6$ che la bilancia produca un valore che differisce di almeno un grammo dal peso vero.

Chiediamoci ora cosa succede se, invece di accontentarci di una singola misurazione, calcoliamo la media di $n = 10$ misurazioni. In questo secondo caso, 

$$
\begin{aligned}
P\left(-1 \leq \frac{S_{10}}{10} - w \leq 1\right) 
&= P\bigg(-\frac{1}{\sqrt{4/10}} \leq \frac{\frac{S_{10}}{10} - w}{\sigma/\sqrt{10}} \leq \frac{1}{\sqrt{4/10}}\bigg)\notag\\ 
&= P\bigg(-\frac{\sqrt{10}}{2} \leq Z \leq \frac{\sqrt{10}}{2}\bigg)\notag
\end{aligned}
$$
ovvero


```r
pnorm(sqrt(10)/2, 0, 1) - pnorm(-sqrt(10)/2, 0, 1)
#> [1] 0.8861537
```

Considerando l'evento complementare, possiamo concludere che c'è una probabilità pari a solo 0.114 che la media di 10 misurazioni assuma un valore che differisce di più di un grammo dal peso vero. È dunque ovvio che le medie di misurazioni ripetute sono migliori delle singole misure.


## Intervalli di confidenza

### Parametri di un modello statistico

Nel gergo statistico, i parametri sono i valori sconosciuti che determinano un modello statistico. Si consideri il modello statistico $Y \sim \mathcal{N}(\mu, \sigma)$. Il modello statistico precedente ci dice che $Y$ è una v.a. distribuita come una normale di parametri $\mu$ e $\sigma$. Supponiamo che la $Y$ sia il QI. In questo caso è facile capire cosa sono i parametri $\mu$ e $\sigma$. Quello del QI, infatti, è un caso particolare perché il test di intelligenza *Wechsler Adult Intelligence Scale* (WAIS) è stato costruito in modo tale da produrre dei dati che si distribuiscono in un modo noto: il QI segue la distribuzione normale di parametri $\mu = 100$ e $\sigma = 15$. In generale, però, i parametri di un modello statistico sono sconosciuti.

### L'incertezza della stima

Dato che i parametri sono, in genere, sconosciuti, è necessario stimarli. Non è sufficiente, però, ottenere una stima puntuale di un parametro. È anche necessario quantificare l'incertezza della stima. L'incertezza della stima viene descritta dall'approccio frequentista nei termini di un _intervallo di confidenza_. L'intervallo di confidenza si costruisce mediante l'errore standard.

L'errore standard è la deviazione standard stimata della stima di un parametro e quantifica il grado della nostra incertezza sulla quantità di interesse. Chiariamo questa idea facendo riferimento alla la figura \@ref(fig:histmeaniq). Tale figura riporta la distribuzione di un grande numero di medie campionarie, laddove la media di ciascun campione può essere considerata come una stima della media $\mu$ della popolazione. La deviazione standard di queste stime, chiamata _errore standard_, ci fornisce una misura dell'incertezza della nostra stima. In altre parole, quantifica la variabilità dei valori delle stime del parametro $\mu$ che sono calcolate sulla base di campioni diversi. Come abbiamo visto nella simulazione del TLC, l'errore standard ha la proprietà di diminuire all'aumentare della dimensione del campione.

L'errore standard viene utilizzato per calcolare l'intervallo di confidenza. L'_intervallo di confidenza_ rappresenta un intervallo di valori di un parametro o quantità di interesse che sono approssimativamente coerenti con i dati, data la distribuzione campionaria presunta. All'intervallo di confidenza possiamo dunque assegnare la seguente interpretazione. Supponiamo che il modello statistico sia corretto e supponiamo di ripetere tante volte il processo di campionamento. Se per ogni campione estratto dalla popolazione calcoliamo una stima del parametro, allora gli intervalli di confidenza del 50% e del 95% includeranno il vero valore del parametro il 50% e il 95% delle volte.

Sotto l'ipotesi che la distribuzione campionaria segua la distribuzione normale, per campioni di grandi dimensioni l'intervallo di confidenza al 95% si costruisce nel modo seguente:
$$
\text{stima del parametro} \pm 2 \text{ errori standard.}
$$ 
Dalla distribuzione normale sappiamo che una stima del parametro $\pm$ 1 errore standard corrisponde ad un intervallo del 68% e una stima del parametro $\pm$ $\frac{2}{3}$ di un errore standard corrisponde ad un intervallo del 50%. Un intervallo del 50% è particolarmente facile da interpretare dato che il vero valore del parametro ha la stessa probabilità di essere incluso o escluso dall'intervallo. Un intervallo del 95% basato sulla distribuzione normale è circa tre volte più ampio di un intervallo del 50%.

## Conclusioni {-}

I risultati precedenti consentono le seguenti conclusioni. Se $X_1, \dots, X_n$ è un insieme di variabili aleatorie i.i.d., tutte con media $\mu$ e varianza $\sigma^2$, allora
$$
\mathbb{E}(\bar{X}) = \mu, \quad var(\bar{X}) = \frac{\sigma^2}{n}.
$$
Se le $X_i$ seguono la distribuzione normale, ne segue che $\bar{X} \sim \mathcal{N}(\mu, \sigma/\sqrt{n})$, in quanto qualunque combinazione lineare di variabili aleatorie Normali è ancora una variabile aleatoria Normale. Invece, se le $X_i$ non seguono la distribuzione normale, il Teorema del limite centrale ci consente comunque di dire che $\bar{X}$ tende a $\mathcal{N}(\mu, \sigma/\sqrt{n})$ al crescere di $n$. I risultati precedenti sono estremamente importanti perché specificano completamente la distribuzione della media campionaria e vengono utilizzati dall'approccio frequentista per l'inferenza sulla media di una popolazione.

