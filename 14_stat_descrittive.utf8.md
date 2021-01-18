# (PART\*) Descrizione {-}

# Statistica descrittiva 



Nel 1907 Francis Galton, cugino di Charles Darwin, matematico e
statistico autodidatta, geografo, esploratore, teorico della
dattiloscopia (ovvero, dell'uso delle impronte digitali a fini
identificativi) e dell'eugenetica, scrisse una lettera alla rivista
scientifica Nature sulla sua visita alla *Fat Stock and Poultry
Exhibition* di Plymouth. Lì vide alcuni membri del pubblico partecipare
ad un gioco il cui scopo era quello di indovinare il peso della carcassa
di un grande bue che era appena stato scuoiato. Galton si procurò i 787
dei biglietti che erano stati compilati dal pubblico e considerò il
valore medio di 547 kg come la "scelta democratica" dei partecipanti, in
quanto "ogni altra stima era stata giudicata troppo alta o troppo bassa
dalla maggioranza dei votanti". Il punto interessante è che il peso
corretto di 543 kg si dimostrò essere molto simile alla "scelta
democratica" basata sulle stime dei 787 partecipanti. Galton intitolò la
sua lettera a Nature *Vox Populi* (voce del popolo), ma questo processo
decisionale è ora meglio conosciuto come la "saggezza delle folle"
(*wisdom of crowds*). Possiamo dire che, nel suo articolo del 1907,
Galton effettuò quello che ora chiamiamo un riepilogo dei dati, ovvero
calcolò un indice sintetico a partire da un insieme di dati. In questo
capitolo esamineremo le tecniche che sono state sviluppate nel secolo
successivo per riassumere le grandi masse di dati con cui sempre più
spesso ci dobbiamo confrontare. Vedremo come calcolare e interpretare
gli indici di posizione e di dispersione, discuteremo le distribuzioni
di frequenze e le relazioni tra variabili. Vedremo inoltre quali sono le
tecniche di visualizzazione che ci consentono di rappresentare questi
sommari dei dati mediante dei grafici. Ma prima di entrare nei dettagli,
prendiamoci un momento per capire perché abbiamo bisogno della
statistica descrittiva.

## Perché riassumere i dati?

Quando riassumiamo i dati, necessariamente buttiamo via delle
informazioni. Ma è una buona idea procedere in questo modo? Non sarebbe
meglio conservare le informazioni specifiche di ciascun soggetto che
partecipa ad un esperimento psicologico, al di là di ciò che viene
trasmesso dagli indici riassuntivi della statistica descrittiva? Che
dire delle informazioni che descrivono come sono stati raccolti i dati,
come l'ora del giorno o l'umore del partecipante? Tutte queste
informazioni vengono perdute quando riassumiamo i dati. La risposta alla
domanda che ci siamo posti è che, in generale, non è una buona idea
conservare tutti i dettagli di ciò che sappiamo. È molto più utile
riassumere le informazioni perché la semplificazione risultante consente
i processi di __generalizzazione__.

In un contesto letterario, l'importanza della generalizzazione è stata
sottolineata da Jorge Luis Borges nel suo racconto "Funes o della
memoria", che descrive un individuo che perde la capacità di
dimenticare. Borges si concentra sulla relazione tra generalizzazione e
pensiero: 

> Pensare è dimenticare una differenza, generalizzare, astrarre. Nel mondo troppo pieno di Funes, c'erano solo dettagli. 

Come possiamo ben capire, la vita di Funes non è facile. Se facciamo
riferimento alla psicologia possiamo dire che gli psicologi hanno
studiato a lungo l'utilità della generalizzazione per il pensiero. Un
esempio è fornito dal fenomeno della formazione dei concetti e lo
psicologo che viene in mente a questo proposito è sicuramente Eleanor
Rosch, la quale ha studiato i principi di base della categorizzazione. I
concetti ci forniscono uno strumento potente per organizzare le
conoscenze. Noi siamo in grado di riconoscere facilmente i diversi
esemplare di un concetto -- per esempio, "gli uccelli" -- anche se i
singoli esemplari che fanno parte di una categoria sono molto diversi
tra loro (l'aquila, la gallina, il pettirosso). L'uso dei concetti, cioè
la generalizzazione, è utile perché ci consente di fare previsioni sulle
proprietà dei singoli esemplari che appartengono ad una categoria, anche
se non abbiamo mai avuto esperienza diretta con essi -- per esempio,
possiamo fare la predizione che tutti gli uccelli possono volare e
mangiare vermi, ma non possono guidare un'automobile o parlare in
inglese. Queste previsioni non sono sempre corrette, ma sono utili.

Le statistiche descrittive, in un certo senso, ci fornisco l'analogo dei
"prototipi" che, secondo Eleanor Rosch, stanno alla base del processo
psicologico di creazione dei concetti. Un prototipo è l'esemplare più
rappresentativo di una categoria. In maniera simile, una statistica
descrittiva come la media, ad esempio, potrebbe essere intesa come
l'osservazione "tipica".

La statistica descrittiva ci fornisce gli strumenti per riassumere i
dati che abbiamo a disposizione in una forma visiva o numerica. Le
rappresentazioni grafiche più usate della statistica descrittiva sono
gli istogrammi, i diagrammi a dispersione o i box-plot, e gli indici
sintetici più comuni sono la media, la mediana, la varianza e la
deviazione standard.

## Distribuzioni di frequenze 

Per introdurre i principali strumenti della statistica descrittiva
considereremo qui i dati raccolti da @zetsche_future_2019. Questi autori
hanno studiato le aspettative negative le quali sono state evidenziate
come un meccanismo chiave nel mantenimento e nella reiterazione della
depressione. @zetsche_future_2019 hanno valutato le aspettative di
individui depressi circa il loro umore futuro ed si sono chiesti se
queste aspettative fossero accurate oppure distorte negativamente. 

In uno degli studi descritti viene esaminato un campione costituito da 30
soggetti con almeno un episodio depressivo maggiore e da 37 controlli
sani. Gli autori hanno misurato il livello depressivo con il *Beck
Depression Inventory* (BDI-II). Ma qual è la la gravità della
depressione riportata dai soggetti nel campione esaminato da
@zetsche_future_2019? 

Dei 67 soggetti considerati, uno non ha completato il BDI-II e quindi abbiamo a disposizione 66 valori del BDI-II. 
I dati sono riportati nella tabella [tab:bdi2_values]. 
Per semplicità i dati sono stati ordinati in
ordine crescente. È chiaro che i dati grezzi sono di difficile lettura.
Poniamoci dunque il problema di creare una rappresentazione sintetica e
comprensibile di questo insieme di valori.

Uno dei modi che ci consentono di effettuare una sintesi dei dati è
quello di generare una *distribuzione di frequenze*.
Una distribuzione di frequenze è un riepilogo del conteggio della
frequenza con cui le modalità osservate in un insieme di dati si
verificano in un intervallo di valori.

Per creare una distribuzione di frequenze possiamo procedere effettuando
una partizione delle modalità della variabile di interesse in $m$ classi
(denotate con $\Delta_i$) tra loro disgiunte. In tale partizione, la
classe $i$-esima coincide con un intervallo di valori aperto a destra
$[a_i, b_i)$ o aperto a sinistra $(a_i, b_i]$. Ad ogni classe
$\Delta_i$ avente $a_i$ e $b_i$ come limite inferiore e superiore
associamo l'ampiezza $b_i - a_i$ (non necessariamente uguale per ogni
classe) e il valore centrale $\bar{x}_i$. La scelta delle classi è
arbitraria, ma è buona norma non definire classi con un numero troppo
piccolo (\< 5) di osservazioni. Poiché ogni elemento dell'insieme
$\{x_i\}_{i=1}^n$ appartiene ad una ed una sola classe $\Delta_i$,
possiamo calcolare le quantità elencate di seguito.

* La __frequenza assoluta__  $n_i$ di ciascuna classe, ovvero il numero di osservazioni che ricadono nella classe $\Delta_i$. 
Proprietà: $n_1 + n_2 + \dots + n_m = n$.

* La __frequenza relativa__ $f_i = n_i/n$ di ciascuna classe. Proprietà: $f_1+f_2+\dots+f_m =1$.

* La __frequenza cumulata__ $N_i$, ovvero il numero totale delle osservazioni che ricadono nelle classi fino alla $i$-esima compresa: $N_i = \sum_{i=1}^m n_i.$

* La __frequenza cumulata relativa__ $F_i$, ovvero 
$F_i = f_1+f_2+\dots+f_m = \frac{N_i}{n} = \frac{1}{n} \sum_{i=1}^m f_i.$

Calcoliamo ora la distribuzione di frequenza assoluta e la distribuzione di frequenza relativa per i valori del BDI-II del campione clinico di @zetsche_future_2019. 
Per costruire una distribuzione di frequenza è innanzitutto necessario scegliere gli
intervalli delle classi. Facendo riferimento ai cut-off usati per l'interpretazione del BDI-II, definiamo i seguenti __intervalli aperti a destra__: 

* depressione minima: \[0, 13.5), 
* depressione lieve: \[13.5, 19.5), 
* depressione moderata: \[19.5, 28.5), 
* depressione severa: \[28.5, 63).

La distribuzione di frequenza della variabile `bdi2` è riportata nella
tabella seguente. Questa distribuzione di frequenza ci aiuta a capire meglio cosa sta succedendo. Se consideriamo la frequenza relativa, ad esempio, possiamo notare che ci sono due valori maggiormente ricorrenti e tali valori corrispondono alle due classi più estreme. Questo ha senso nel caso presente, in quanto il campione esaminato da @zetsche_future_2019 includeva due gruppi di
soggetti: soggetti sani (con valori BDI-II bassi) e soggetti depressi
(con valori BDI-II alti). In una distribuzione di frequenza tali valori
tipici vanno sotto il nome di __mode__ della distribuzione.


   Limiti delle classi   Freq. ass.   Freq. rel.   Freq. ass. cum.   Freq. rel. cum.
  --------------------- ------------ ------------ ----------------- -----------------
       $[0, 13.5)$           36         36/66            36               36/66
     $[13.5, 19.5)$          1           1/66            37               37/66
     $[19.5, 28.5)$          12         12/66            49               49/66
      $[28.5, 63)$           17         17/66            66               66/66

### Esercizio con R

Poniamoci ora il problema di costruire la tabella precedente partendo dai dati grezzi messi a disposizione da @zetsche_future_2019. 
Leggiamo i dati assumendo che il file `data.mood.csv` si trovi nella cartella `data` contenuta nella _working directory_.


```r
df <- read.csv(
  here("data", "data.mood.csv"), 
  header=TRUE
) 
```

C'è un solo valore di depressione per ciascun soggetto ma tale valore viene ripetuto tante volte quante volte sono le righe del `data.frame` associate ad ogni soggetto (ciascuna riga corrispondente ad una prova diversa). È dunque necessario trasformare il `data.frame` in modo tale da avere un'unica riga per ciascun soggetto, ovvero un unico valore BDI-II per soggetto.


```r
bysubj <- df %>% 
  group_by(esm_id) %>% 
  summarise(
    bdi = mean(bdi)
  ) %>% 
  na.omit()
#> `summarise()` ungrouping output (override with `.groups` argument)
```

Ci sono dunque 66 soggetti i quali hanno ottenuto i valori sulla scala del BDI-II stampati di seguito (li presento ordinati dal più piccolo al più grande).


```r
sort(bysubj$bdi)
#>  [1]  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1
#> [26]  2  2  2  2  3  3  3  5  7  9 12 19 22 22 24 25 25 26 26 26 27 27 28 28 30
#> [51] 30 30 31 31 33 33 34 35 35 35 36 39 41 43 43 44
```

Calcolo ora le frequenze assolute per i seguenti intervalli aperti a destra: [0, 13.5), [13.5, 19.5), [19.5, 28.5), [28.5, 63). Esaminando i dati, possiamo notare  che 36 soggetti cadono nella prima classe. È però necessario eseguire quest'operazione di conteggio utilizzando R. 

Uno dei modi possibili per calcolare le frequenze assolute è quello di usare la funzione `cut()`. Mediante tal funzione è possibile dividere il *campo di variazione* (ovvero, la differenza tra il valore massimo di una distribuzione ed il valore minimo) di una variabile continua `x` in intervalli e codificare ciascun valore `x` nei termini dell'intervallo a cui appartiene. Tale risultato si ottiene nel modo seguente.


```r
bysubj$bdi_level <- cut(
  bysubj$bdi,
  breaks = c(0, 13.5, 19.5, 28.5, 63),
  include.lowest = TRUE,
  labels = c(
    "minimal", "mild", "moderate", "severe"
  )
)

bysubj$bdi_level
#>  [1] moderate severe   severe   moderate severe   severe   severe   severe  
#>  [9] moderate severe   moderate mild     severe   minimal  minimal  minimal 
#> [17] severe   moderate minimal  minimal  minimal  minimal  minimal  moderate
#> [25] minimal  minimal  minimal  minimal  minimal  minimal  minimal  severe  
#> [33] minimal  minimal  severe   minimal  moderate minimal  minimal  minimal 
#> [41] severe   minimal  minimal  severe   severe   moderate severe   severe  
#> [49] minimal  moderate minimal  moderate severe   moderate moderate minimal 
#> [57] minimal  minimal  minimal  minimal  minimal  minimal  minimal  minimal 
#> [65] minimal  minimal 
#> Levels: minimal mild moderate severe
```

Possiamo ora usare la funzione `table()` la quale ritorna un elenco che associa la frequenza assoluta a ciascuna modalità della variabile in input -- ovvero, la distribuzione di frequenza assoluta.


```r
table(bysubj$bdi_level)
#> 
#>  minimal     mild moderate   severe 
#>       36        1       12       17
```

Per ottenere la distribuzione di frequenza relativa è sufficiente dividere ciascuna frequenza assoluta per il numero totale di osservazioni:


```r
table(bysubj$bdi_level) / sum(table(bysubj$bdi_level))
#> 
#>    minimal       mild   moderate     severe 
#> 0.54545455 0.01515152 0.18181818 0.25757576
```

In questo modo abbiamo ottenuto le distribuzioni di frequenza assoluta e relativa per i valori del BDI-II dei soggetti di @zetsche_future_2019:

Limiti delle classi Frequenza assoluta Frequenza relativa 
------------------- ------------------ ------------------
[0, 13.5)              36                    36/66
[13.5, 19.5)           1                     1/66
[19.5, 28.5)           12                    12/66
[28.5, 63]             17                    17/66


## Istogramma

I dati che sono stati sintetizzati in una distribuzione di frequenze
possono essere rappresentati graficamente in un istogramma. 
Un istogramma si costruisce riportando sulle ascisse i limiti delle
classi $\Delta_i$ e sulle ordinate i valori della funzione costante a
tratti
$$\varphi_n(x)= \frac{f_i}{b_i-a_i}, \quad x\in \Delta_i,\, i=1, \dots, m$$
che misura la __densità della frequenza relativa__ della variabile $X$
nella classe $\Delta_i$, ovvero il rapporto fra la frequenza relativa
$f_i$ e l'ampiezza ($b_i - a_i$) della classe. In questo modo il
rettangolo dell'istogramma associato alla classe $\Delta_i$ avrà un'area
proporzionale alla frequenza relativa $f_i$. Si noti che l'area totale
dell'istogramma delle frequenze relative è data della somma delle aree
dei singoli rettangoli e quindi vale 1.0.


### Esercizio con R

Poniamoci il problema di costruire un istogramma per i dati del BDI-II.
Nell'istogramma viene rappresentata la frequenza relativa delle classi: l'area di ogni barra dell'istogramma è proporzionale alla frequenza relativa della classe che la barra rappresenta. 
Come si trova l'altezza delle barre dell'istogramma? Per la classe [0, 13.5), ad esempio, la frequenza relativa è 36/66. Tale valore corrisponde all'__area__ del rettangolo.  Dato che la base del rettangolo è 13.5, l'altezza sarà 36/66 / 13.5, ovvero 0.0404. E così via per le altre barre dell'istogramma.

Una rappresentazione grafica dell'istogramma delle frequenze relative si può ottenere con R utilizzando le funzioni di `ggplot2`. Il pacchetto `ggplot2` è un potente strumento per rappresentare graficamente i dati. Le iniziali del nome, `gg`, si riferiscono alla ''Grammar of Graphics'', che è un modo di pensare le figure come una serie di layer stratificati. Originariamente descritta da Leland Wilkinson, la grammatica dei grafici è stata aggiornata e applicata in R da Hadley Wickham, il creatore del pacchetto. Per chiarezza, precisiamo che la funzione `ggplot()` utilizza intervalli aperti a destra.


```r
p1 <- bysubj %>%
  ggplot(aes(x = bdi)) +
  geom_histogram(
    aes(y = ..density..),
    breaks = c(0, 13.5, 19.5, 28.5, 44.1) # il valore BDI-II massimo è 44
  ) +
  scale_x_continuous(breaks=c(0, 13.5, 19.5, 28.5, 44.1)) +
  labs(
    x = "BDI-II",
    y = "Densità di frequenza"
  ) +
  theme_apa()
p1
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/hist1zetsche-1.png" alt="Istogramma per i valori BDI-II riportati da @zetsche_future_2019." width="80%" />
<p class="caption">(\#fig:hist1zetsche)Istogramma per i valori BDI-II riportati da @zetsche_future_2019.</p>
</div>

Con i quattro intervalli individuati dai cut-off del BDI-II otteniamo la
rappresentazione riportata nella figura \@ref(fig:hist1zetsche). Nel caso della prima barra dell'istogramma a sinistra, l'ampiezza dell'intervallo è pari a 13.5 e
l'area della barra (ovvero, la frequenza relativa) è uguale a 36/66.
Dunque l'altezza della barra è uguale a (36 / 66) / 13.5 = 0.040. Lo
stesso procedimento si applica per il calcolo dell'altezza degli altri
rettangoli.

Anche se nel caso presente è sensato usare ampiezze diverse per gli intervalli delle classi, in generale gli istogrammi si costruiscono utilizzando intervalli riportati sulle ascisse con un'ampiezza uguale.
Questo è il caso dell'istogramma seguente il quale è stato generato a partire dagli stessi dati.


```r
p2 <- bysubj %>%
  ggplot(aes(x = bdi)) +
  geom_histogram(
    aes(y = ..density..),
    breaks = seq(0, 44.1, length.out = 7)
  ) +
  scale_x_continuous(breaks=c(0.00,  7.35, 14.70, 22.05, 29.40, 36.75, 44.10)) +
  labs(
    x = "BDI-II",
    y = "Densità di frequanza"
  ) +
  theme_apa()
p2
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/hist2zetsche-1.png" alt="Una rappresentazione più comune per l'istogramma dei valori BDI-II di @zetsche_future_2019 nella quale gli intervalli delle classi hanno ampiezze uguali." width="80%" />
<p class="caption">(\#fig:hist2zetsche)Una rappresentazione più comune per l'istogramma dei valori BDI-II di @zetsche_future_2019 nella quale gli intervalli delle classi hanno ampiezze uguali.</p>
</div>


## Funzione di densità empirica

Il confronto tra le figure \@ref(fig:hist1zetsche) e \@ref(fig:hist2zetsche) rende chiaro un limite degli istogrammi. È infatti ovvio che il profilo dell'istogramma è arbitrario: a seconda del numero e dei limiti delle classi che vengono scelte,
cambiano sia il numero che la forma delle barre dell'istogramma. Questo rende difficile fornire un'interpretazione alle informazioni fornite da un istogramma.

Il problema precedente può essere alleviato utilizzando una
rappresentazione alternativa della distribuzione di frequenza, ovvero la
stima della densità della frequenza dei dati (detta anche stima _kernel
di densità_). Un modo semplice per pensare a tale rappresentazione, che
in inglese va sotto il nome di _density plot_, è quello di immaginare un
grande campione di dati, in modo che diventi possibile definire un
enorme numero di classi di equivalenza di ampiezza molto piccola, le
quali non risultino vuote. In tali circostanze, la funzione di densità
empirica non è altro che il profilo _lisciato_ dell'istogramma. La
stessa idea si applica anche quando il campione è più piccolo. 

### Esercizio con R

Nel caso dei dati del BDI-II otteniamo la reppresentazione fornita dalla figura seguente.


```r
p3 <- bysubj %>% 
  ggplot(aes(x = bdi)) +
  geom_histogram(
    aes(y = ..density..), 
    breaks = seq(0, 44.1, length.out = 7)
  ) +
  geom_density(
    aes(x = bdi), 
    adjust = 0.5, 
    size = 0.8, 
    fill = "steelblue3", 
    alpha = 0.5
  ) +
  labs(
    x = "BDI-II",
    y = "Densità di frequenza"
  ) +
  theme_apa()
p3
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/zetschehist3-1.png" alt="Funzione di densità empirica per i valori BDI-II di @zetsche_future_2019." width="80%" />
<p class="caption">(\#fig:zetschehist3)Funzione di densità empirica per i valori BDI-II di @zetsche_future_2019.</p>
</div>

Che interpretazione possiamo attribuire alla funzione di densità empirica rappresentata nella figura \@ref(fig:zetschehist3)?
La interpretiamo come abbiamo fatto con gli istogrammi: l'area sottesa al grafico della funzione di densità empirica in un certo intervallo rappresenta la proporzione dei casi della distribuzione che hanno valori compresi nell'intervallo considerato.


## Forma di una distribuzione

In generale, la forma di una distribuzione descrive come i dati si
distribuiscono intorno ai valori centrali. Distinguiamo tra
distribuzioni simmetriche e asimmetriche, e tra distribuzioni unimodali
o multimodali. Un'illustrazione grafica è fornita nella
figura seguente.

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/unnamed-chunk-8-1.png" alt="1: Asimmetria negativa. 2: Asimmetria positiva. 3: Distribuzione unimodale. 4: Distribuzione bimodale." width="70%" />
<p class="caption">(\#fig:unnamed-chunk-8)1: Asimmetria negativa. 2: Asimmetria positiva. 3: Distribuzione unimodale. 4: Distribuzione bimodale.</p>
</div>

Nel pannello 1 la distribuzione è unimodadle con asimmetria negativa; nel pannello 2 la distribuzione è unimodadle con asimmetria positiva; nel pannello 3 la distribuzione è simmetrica e unimodale; nel pannello 4 la distribuzione è bimodale. 

Se consideriamo nuovamente la figura \@ref(fig:zetschehist3) possiamo dire che la distribuzione dei valori del BDI-II nel campione considerato da @zetsche_future_2019 è bimodale.


## Indici di posizione

### Quantili

La descrizione della distribuzione dei valori BDI-II di
@zetsche_future_2019 può essere facilitata dalla determinazione di
alcuni valori caratteristici che sintetizzano le informazioni contenute
nella distribuzione di frequenze. Si dicono *quantili* (o *frattili*)
quei valori caratteristici che hanno le seguenti proprietà. I *quartili*
sono quei valori che ripartiscono i dati $x_i$ in quattro parti
ugualmente numerose (pari ciascuna al 25% del totale). Il primo
quartile, $q_1$, lascia alla sua sinistra il 25% del campione pensato
come una fila ordinata (a destra quindi il 75%). Il secondo quartile
$q_2$ lascia a sinistra il 50% del campione (a destra quindi il 50%).
Esso viene anche chiamato *mediana*. Il terzo quartile lascia a sinistra
il 75% del campione (a destra quindi il 25%). Secondo lo stesso
criterio, si dicono *decili* i quantili di ordine $p$ multiplo di 0.10 e
*percentili* i quantili di ordine $p$ multiplo di 0.01.

Come si calcolano i quantili? Consideriamo la definizione di quantile
*non interpolato* di ordine $p$ $(0 < p < 1)$. Si procede innanzitutto
ordinando i dati in ordine crescente, $\{x_1, x_2, \dots, x_n\}$. Ci
sono poi due possibilità. Se il valore $np$ non è intero, sia $k$
l'intero tale che $k < np < k + 1$ -- ovvero, la parte intera di $np$.
Allora $q_p = x_{k+1}.$ Se $np = k$ con $k$ intero, allora
$q_p = \frac{1}{2}(x_{k} + x_{k+1}).$ Se vogliamo calcolare il primo
quartile $q_1$, ad esempio, utilizziamo $p = 0.25$. Dovendo calcolare
gli altri quantili basta sostituire a $p$ il valore appropriato[^2].

Gli indici di posizione, tra le altre cose, hanno un ruolo importante,
ovvero vengono utilizzati per creare una rappresentazione grafica di una
distribuzione di valori che è molto popolare e può essere usata in
alternativa ad un istogramma (in realtà vedremo poi come possa essere
combinata con un istogramma). Tale rappresentazione va sotto il nome di
box-plot.

Per fare un esempio, consideriamo i nove soggetti del campione clinico di @zetsche_future_2019 che hanno riportato un unico episodio di depressione maggiore. Per tali soggetti i valori ordinati del BDI-II (per semplicità li chiameremo $x$) sono i seguenti: 19, 26, 27, 28, 28, 33, 33, 41, 43. 
Per il calcolo del secondo quartile (non interpolato), ovvero per il calcolo della mediana, dobbiamo considerare la quantità $np = 9 \cdot 0.5 = 4.5$, non intero. Quindi, $q_1 = x_{4 + 1} = 27$. 
Per il calcolo del quantile (non interpolato) di ordine $p = 2/3$ dobbiamo considerare la quantità $np = 9 \cdot 2/3 = 6$, intero. Quindi, $q_{\frac{2}{3}} = \frac{1}{2} (x_{6} + x_{7}) = \frac{1}{2} (33 + 33) = 33$.


### Box-plot

Il *box-plot* (o diagramma a scatola) è uno strumento grafico utile al
fine di ottenere informazioni circa la dispersione e l'eventuale
simmetria o asimmetria di una distribuzione. Per costruire un box-plot
si rappresenta sul piano cartesiano un rettangolo (cioè la "scatola") di
altezza arbitraria la cui base corrisponde alla dist intanza
interquartile (IQR = $q_{0.75} - q_{0.25}$). La linea interna alla
scatola rappresenta la mediana $q_{0.5}$. Si tracciano poi ai lati della
scatola due segmenti di retta i cui estremi sono detti "valore
adiacente" inferiore e superiore. Il valore adiacente inferiore è il
valore più piccolo tra le osservazioni che risulta maggiore o uguale al
primo quartile meno la distanza corrispondente a 1.5 volte la distanza
interquartile. 
Il valore adiacente superiore è il valore più grande tra le osservazioni che risulta minore o uguale a $Q_3+1.5$ IQR. I valori esterni ai valori adiacenti (chiamati *valori anomali*) vengono rappresentati individualmente nel box-plot per meglio evidenziarne la presenza e la posizione.

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/unnamed-chunk-9-1.png" alt="Box-plot: $M$ è la mediana, $\bar{x}$ è la media aritmetica e IQR è la distanza interquartile (~$Q_3 - Q_1$~)." width="70%" />
<p class="caption">(\#fig:unnamed-chunk-9)Box-plot: $M$ è la mediana, $\bar{x}$ è la media aritmetica e IQR è la distanza interquartile (~$Q_3 - Q_1$~).</p>
</div>

Consideriamo ora un caso concreto nel quale viene utilizzato un box-plot.
Nel caso dei dati di @zetsche_future_2019 ci chiediamo in che modo si differenziano le distribuzioni del BDI-II tra i due gruppi considerati, ovvero tra il gruppo dei pazienti e il gruppo di controllo.


```r
bysubj <- df %>% 
  group_by(esm_id, group) %>% 
  summarise(
    bdi = mean(bdi),
    nr_of_episodes = mean(nr_of_episodes, na.rm = TRUE)
  ) %>% 
  na.omit()
#> `summarise()` regrouping output by 'esm_id' (override with `.groups` argument)

bysubj %>% 
  ggplot(aes(x=group, y=bdi)) + 
  geom_boxplot() +
  labs(
    x = "Gruppo",
    y = "BDI-II"
  ) +
  theme_apa()
```

<img src="14_stat_descrittive_files/figure-html/unnamed-chunk-10-1.png" width="80%" style="display: block; margin: auto;" />

La figura \@ref(fig:violin-zetsche) fornisce due rappresentazioni grafiche che possono essere utilizzate per rispondere a questa domanda.


```r
library("patchwork")

bysubj <- df %>% 
  group_by(esm_id, group) %>% 
  summarise(
    bdi = mean(bdi),
    nr_of_episodes = mean(nr_of_episodes, na.rm = TRUE)
  ) %>% 
  na.omit()
#> `summarise()` regrouping output by 'esm_id' (override with `.groups` argument)

p1 <- bysubj %>% 
  ggplot(aes(x=group, y=bdi)) + 
  geom_violin(trim=FALSE) +
  geom_dotplot(binaxis='y', stackdir='center', dotsize=0.7) +
  labs(
    x = "Gruppo",
    y = "BDI-II"
    #, caption = "Fonte: Zetsche, Buerkner, & Renneberg (2020)"
  ) 

p2 <- bysubj %>% 
  ggplot(aes(x=group, y=bdi)) + 
  geom_violin(trim=FALSE) +
  geom_boxplot(width=0.05) +
  labs(
    x = "Gruppo",
    y = "BDI-II"
    #, caption = "Fonte: Zetsche, Buerkner, & Renneberg (2020)"
  ) 

p1 + p2
#> `stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/violin-zetsche-1.png" alt="Due versioni di un violin plot per i valori BDI-II di ciascuno dei due gruppi di soggetti esaminati da @zetsche_future_2019." width="95%" />
<p class="caption">(\#fig:violin-zetsche)Due versioni di un violin plot per i valori BDI-II di ciascuno dei due gruppi di soggetti esaminati da @zetsche_future_2019.</p>
</div>

Nella figura \@ref(fig:violin-zetsche) sinistra sono rappresentati i dati grezzi: questa è la pratica migliore quando il numero di osservazioni è piccolo. La linea curva che circonda (simmetricamente) le osservazioni è l'__istogramma lisciato__ che abbiamo descritto in precedenza. Nella figura \@ref(fig:violin-zetsche) destra sono rappresentanti gli stessi dati: la funzione di densità empirica è la stessa di prima, ma al suo interno viene collocato un box-plot. Questa seconda rappresentazione è da preferirsi quando ci sono molte osservazioni e non è utile rappresentare singolarmente ciascun dato. Entrambe le rappresentazioni suggeriscono che la distribuzione dei dati è all'incirca simmetrica nel gruppo clinico (codificato come `mdd`). Il gruppo di controllo (`ctl`) mostra invece un'asimmetria positiva, con tre osservazioni evidenziate nel boxplot come dei "valori anomali", dato che si discostano dalla mediana di una quantità maggiore di 1.5 IQR.


### L'eccellenza grafica

Non c'è un modo "corretto" per rappresentare in forma grafica un insieme
di dati. Ciascuno dei grafici che abbiamo discusso ha i suoi pregi e i
suoi difetti. Un ricercatore che ha influenzato molto il modo in cui
viene realizzata la visualizzazione dei dati scientifici è Edward Tufte,
soprannominato dal New York Times il "Leonardo da Vinci dei dati."
Secondo Tufte, "l'eccellenza nella grafica consiste nel comunicare idee
complesse in modo chiaro, preciso ed efficiente". Nella visualizzazione
delle informazioni, l'"eccellenza grafica" ha l'obiettivo di comunicare
al lettore il maggior numero di idee nel minor tempo possibile, con meno
inchiostro possibile, usando il minor spazio possibile. Secondo
@tufte_visual_display, le rappresentazioni grafiche dovrebbero:

1.  mostrare i dati;
2.  indurre l'osservatore a riflettere sulla sostanza piuttosto che
    sulla progettazione grafica, o qualcos'altro;
3.  evitare di distorcere quanto i dati stanno comunicando ("integrità
    grafica");
4.  presentare molte informazioni in forma succinta;
5.  rivelare la coerenza tra le molte dimensioni dei dati;
6.  incoraggiare l'osservatore a comparare differenti porzioni di dati;
7.  rivelare i dati a diversi livelli di dettaglio, da una visione ampia
    alla struttura di base;
8.  servire ad uno scopo preciso (descrizione, esplorazione, o la
    risposta a qualche domanda);
9.  essere fortemente integrate con le descrizioni statistiche e verbali
    dei dati fornite nel testo.

In base a questi principi, la funzione di densità empirica fornisce una
rappresentazione migliore dei dati di @zetsche_future_2019 di quanto lo faccia un istogramma. Inoltre, se oltre al grupppo di appartenenza non ci sono altre dimensioni importanti da mettere in evidenza, allora la nostra scelta dovrebbe
ricadere sul pannello di sinistra della figura \@ref(fig:violin-zetsche).


## Indici di tendenza centrale

L'analisi grafica, esaminata in precedenza, costituisce la base di
partenza di qualsivoglia analisi quantitativa dei dati. Tramite
l'analisi grafica possiamo capire alcune caratteristiche importanti di
una distribuzione: per esempio, se è simmetrica o asimmetrica; oppure se
è unimodale o multimodale. Successivamente, possiamo calcolare degli
indici numerici che descrivono in modo sintetico le caratteristiche di
base dei dati esaminati. Tra le misure di tendenza centrale, ovvero tra
gli indici che forniscono un'idea dei valori attorno ai quali sono
prevalentemente concentrati i dati di un campione, quella più
comunemente usata è la media.

### Media

Tutti conosciamo la media aritmetica di $\{x_1, x_2, \dots, x_n\}$,
ovvero il numero reale $\bar{x}$ definito da
\begin{equation}
\bar{x}=\frac{1}{n}\sum_{i=1}^n x_i.
(\#eq:mean)
\end{equation}
Nell'eq. \@ref(eq:mean) abbiamo usato la notazione delle sommatorie
per descrivere una somma di valori. Questa notazione è molto usata in
statistica e viene descritta in Appendice.

La media gode della seguente importante proprietà: la somma degli scarti
tra ciascuna modalità $x_i$ e la media aritmetica $\bar{x}$ è nulla,
cioè 
$$
\sum_{i=1}^n (x_i - \bar{x}) = 0.\notag
\label{eq:diffmeansumzero}$$ Infatti, $$\begin{aligned}
\sum_{i=1}^n (x_i - \bar{x}) &= \sum_i x_i - \sum_i \bar{x}\notag\\
&= \sum_i x_i - n \bar{x}\notag\\
&= \sum_i x_i - \sum_i x_i = 0.\notag\end{aligned}
$$ 

Ciò ci consente di pensare alla media come al baricentro della distribuzione.

Un'altra proprietà della media è la seguente. La somma dei quadrati
degli scarti tra ciascuna modalità $x_i$ e una costante arbitraria
$a \in \Re$, cioè $$\varphi(a) = \sum_{i=1}^n (x_i - a)^2,\notag$$ è
minima per $a = \bar{x}$.

Il concetto statistico di media ha suscitato molte battute. Per esempio,
il fatto che, in media, ciascuno di noi ha un numero di gambe circa pari
a 1.9999999. Oppure, il fatto che, in media, ciascuno di noi ha un
testicolo. Ma la media ha altri problemi, oltre al fatto di ispirare
battute simili alle precedenti. In particolare, dobbiamo notare che la
media non è sempre l'indice che meglio rappresenta la tendenza centrale
di una distribuzione. In particolare, ciò non accade quando la
distribuzione è asimmetrica, o in presenza di valori anomali (_outlier_)
-- si veda il pannello di destra della figura \@ref(fig:violin-zetsche). In tali circostanze, la tendenza centrale della distribuzione è meglio rappresentata dalla mediana o dalla media spuntata.

#### Esercizio con R

Calcoliamo la media dei valori BDI-II per i due gruppi di soggetti di @zetsche_future_2019.


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    avg_bdi = mean(bdi)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group avg_bdi
#>   <fct>   <dbl>
#> 1 ctl      1.69
#> 2 mdd     30.9
```


### Media spuntata

La _media spuntata_ $\bar{x}_t$ (_trimmed mean_) non è altro che la
media dei dati calcolata considerando solo il 90% (o altra percentuale)
dei dati centrali. Per calcolare $\bar{x}_t$ si ordinando i dati secondo
una sequenza crescente, $x_1 \leq x_2 \leq x_3 \leq \dots \leq x_n$, per
poi eliminare il primo 5% e l'ultimo 5% dei dati della serie così
ordinata. La media spuntata è data dalla media aritmetica dei dati rimanenti.

#### Esercizio con R

Calcoliamo la media spuntata dei valori BDI-II per i due gruppi di soggetti di @zetsche_future_2019 escludendo il 10% dei valori più estremi in ciascun gruppo.


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    avg_trim_bdi = mean(bdi, trim = 0.1)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group avg_trim_bdi
#>   <fct>        <dbl>
#> 1 ctl            1  
#> 2 mdd           30.6
```


### Moda e mediana

In precedenza abbiamo già incontrato altri due popolari indici di
tendenza centrale: la *moda* (*Mo*), ovvero il valore centrale della
classe con la frequenza massima (può succedere che una distribuzione
abbia più mode; in tal caso si dice *multimodale* e questo operatore
perde il suo significato di indice di tendenza centrale) e la *mediana*
$\tilde{x}$.

#### Esercizio con R

Calcoliamo i quantili di ordine 0.25, 0.5 e 0.75 dei valori BDI-II per i due gruppi di soggetti di @zetsche_future_2019.


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    q25 = quantile(bdi, probs = 0.25),
    q50 = quantile(bdi, probs = 0.50),
    q75 = quantile(bdi, probs = 0.75)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 4
#>   group   q25   q50   q75
#>   <fct> <dbl> <dbl> <dbl>
#> 1 ctl       0     1     2
#> 2 mdd      26    30    35
```

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Osservazione. </em></span>  \fi{}Si noti che solitamente i software restituiscono un valore __interpolato__ del $p$-esimo quantile $q_p$ $(0 < p < 1)$, il quale viene calcolato mediante specifiche procedure. Il risultato fornito dai software, dunque, non sarà identico a quello trovato utilizzando la definizione non interpolata di quantile che abbiamo presentato qui. Se, per qualche ragione, vogliamo conoscere l'algoritmo usato per la determinazione dei quantili interpolati, dobbiamo leggere la documentazione del software.</div>\EndKnitrBlock{remark}


## Indici di dispersione

Le medie e gli indici di posizione descritti in precedenza forniscono
delle sintesi dei dati che mettono in evidenza la tendenza centrale
delle osservazioni. Tali indici, tuttavia, non considerano un aspetto
importante della distribuzione dei dati, ovvero la variabilità dei
valori numerici della variabile statistica. È dunque necessario
sintetizzare la distribuzione di una variabile statistica oltre che con
le misure di posizione anche tramite l'utilizzo di indicatori che
valutino la dispersione delle unità statistice.

### Indici basati sull'ordinamento dei dati

È possibile calcolare degli indici di variabilità basati
sull'ordinamento dei dati. L'indice più ovvio è l'intervallo di
variazione, ovvero la distanza tra il valore massimo e il valore minimo
di una distribuzione di modalità, mentre in precedenza abbiamo già
incontrato la differenza interquartile. Questi due indici, però, hanno
il limite di essere calcolati sulla base di due soli valori della
distribuzione ($x_{\text{max}}$ e $x_{\text{mini}}$, oppure $x_{0.25}$ e
$x_{0.75}$). Pertanto non utilizzano tutte le informazioni che sono
disponibili. Inoltre, l'intervallo di variazione ha il limite di essere
pesantemente influenzato dalla presenza di valori anomali.

### Scostamento medio semplice dalla media

Dati i limiti delle statistiche precedenti è più comune misurare la
variabilità di una variabile statistica come la dispersione dei dati
attorno ad un indice di tendenza centrale. Scelto l'indice di tendenza
centrale rispetto al quale si vuole misurare la dispersione, è possibile
poi calcolare la media degli scostamenti dei singoli dati dal valore di
riferimento. Ad esempio, se scegliamo la mediana quale misura di
posizione centrale, è possibile calcolare la media aritmetica della
distribuzione degli scarti in valore assoluto tra ciascuna modalità e la
mediana stessa. Nel caso di una variabile statistica $X$ lo _scostamento
medio semplice dalla media_ è la quantità

\begin{equation}
S_{Me} = \frac{1}{n} \sum_{i=1}^n |x_i - x_{0.5}|.
(\#eq:scost-sempl-mediana)
\end{equation}


#### Esercizio con R

Calcoliamo lo scostamento medio semplice dalla media per il BDI-II dei due gruppi di soggetti di @zetsche_future_2019.


```r
mean(abs(bysubj$bdi - median(bysubj$bdi)))
#> [1] 14.48387
```

Oppure, per i due gruppi:


```r
mean_abs_dev <- function(x){
  mean(abs(x - median(x)))
}

bysubj %>% 
  group_by(group) %>% 
  summarise(
    Mean_abs_dev = mean_abs_dev(bdi)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group Mean_abs_dev
#>   <fct>        <dbl>
#> 1 ctl           1.62
#> 2 mdd           5.27
```

La _deviazione mediana assoluta_ è una misura robusta della dispersione statistica di un campione. Per un insieme $x_1, x_2, \dots, x_n$, il valore di MAD è definito come la mediana del valore assoluto delle deviazioni dei dati dalla mediana, ovvero:

\begin{equation}
MAD = \text{med} (|x_i - \text{med}(x_i)|).
(\#eq:mad)
\end{equation}

Per i dati di @zetsche_future_2019 abbiamo:


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    MAD = mad(bdi)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group   MAD
#>   <fct> <dbl>
#> 1 ctl    1.48
#> 2 mdd    6.67
```


### Varianza

Anche se la statistica definita
dall'eq. \@ref(eq:scost-sempl-mediana) è molto intuitiva, la misura di
variabilità di gran lunga più usata per valutare la variabilità di una
variabile statistica è senza dubbio la varianza. La varianza
\begin{equation}
s^2 = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})^2
(\#eq:var-descr)
\end{equation}
è la media dei quadrati degli scarti $x_i - \bar{x}$ tra ogni valore e la media della distribuzione. 
La varianza è una misura di dispersione più complessa di quelle esaminate in precedenza. È appropriata solo nel caso di distribuzioni simmetriche e, anch'essa, è fortemente influenzata dai valori anomali. Inoltre, è espressa in
un'unità di misura che è il quadrato dell'unità di misura dei dati originari e quindi ad essa non può essere assegnata un'interpretazione intuitiva.

#### Esercizio con R

Calcoliamo la varianza dei punteggi BDI-II nei due gruppi di soggetti di @zetsche_future_2019.


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    variance = var(bdi)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group variance
#>   <fct>    <dbl>
#> 1 ctl       8.03
#> 2 mdd      43.7
```


### Deviazione standard

Per le ragioni espresse sopra, la misura più usata della dispersione di una distribuzione di dati è la _deviazione standard_, ovvero la radice quadrata della varianza. A differenza della varianza, dunque, la deviazione standard è espressa nella stessa unità di misura dei dati. Come nel caso della varianza, anche la deviazione standard $s$ dovrebbe essere usata soltanto quando la media è adeguata per misurare il centro della distribuzione, ovvero, nel caso di distribuzioni simmetriche. Come nel caso della media $\bar{x}$, anche la deviazione standard è fortemente influenzata dai dati anomali (*outlier*), ovvero dalla presenza di uno o di pochi dati che sono molto più distanti dalla media rispetto agli altri valori della distribuzione. Quando tutte le osservazioni sono uguali, $s=0$, altrimenti $s > 0$.

Alla deviazione standard può essere assegnata una semplice interpretazione: la deviazione standard è __simile__ (ma non identica) allo scostamento medio semplice dalla media. La deviazione standard ci dice, dunque, quanto sono distanti, in media, le singole osservazioni dal centro della distribuzione. 


#### Esercizio con R

Calcoliamo la deviazione standard per il BDI-II dei due gruppi di soggetti di @zetsche_future_2019.


```r
bysubj %>% 
  group_by(group) %>% 
  summarise(
    stdev = sd(bdi)
  ) 
#> `summarise()` ungrouping output (override with `.groups` argument)
#> # A tibble: 2 x 2
#>   group stdev
#>   <fct> <dbl>
#> 1 ctl    2.83
#> 2 mdd    6.61
```


### Indici di variabilità relativi

A volte può essere interessante effettuare un confronto fra due misure
di variabilità di grandezze incommensurabili, ovvero di caratteri
rilevati mediante differenti unità di misura. In questi casi, le misure
di variabilità precedentemente descritte si rivelano inadeguate in
quanto dipendono dall'unità di misura adottata. Diventa dunque
necessario ricorrere a particolari numeri adimensionali detti indici
relativi di variabilità. Il più importante di tali indici è il
coefficiente di variazione, ovvero il numero puro
$$C_v = \frac{\sigma}{\bar{x}}$$ ottenuto dal rapporto tra la deviazione
standard e la media dei dati. Un altro indice relativo di variabilità è
la differenza interquartile rapportata al primo quartile oppure al terzo
quartile oppure alla mediana, cioè:
$$\frac{x_{0.75} - x_{0.25}}{x_{0.25}}, \qquad \frac{x_{0.75} - x_{0.25}}{x_{0.75}}, \qquad \frac{x_{0.75} - x_{0.25}}{x_{0.50}}.\notag$$

## Le relazioni tra variabili

@zetsche_future_2019 hanno misurato il livello di depressione dei
soggetti del loro esperimento utilizzando due scale psicometriche: il
Beck Depression Inventory II (BDI-II) e la Center for Epidemiologic
Studies Depression Scale (CES-D). Il BDI-II è uno strumento self-report
che valutare la presenza e l'intensità di sintomi depressivi in pazienti
adulti e adolescenti di almeno 13 anni di età con diagnosi psichiatrica
mentre la CES-D è una scala self-report progettata per misurare i
sintomi depressivi che sono stati vissuti nella settimana precedente
nella popolazione generale, specialmente quella degli
adolescenti/giovani adulti. Una domanda ovvia che ci può venire in
mente è: quanto sono simili le misure ottenute mediante queste due
scale?

È chiaro che i numeri prodotti dalle scale BDI-II e CES-D non possono
essere identici, e questo per due motivi: (1) la presenza degli errori
di misurazione e (2) l'unità di misura delle due variabili. L'errore di
misurazione corrompe sempre, almeno in parte, qualunque operazione di
misurazione. E questo è vero specialmente in psicologia dove
l'_attendibilità_ degli strumenti di misurazione è minore che in altre
discipline (quali la fisica, ad esempio). Il secondo motivo per cui i
valori delle scale BDI-II e CES-D non possono essere uguali è che
l'unità di misura delle due scale è arbitraria. Infatti, qual è l'unità
di misura della depressione? Chi può dirlo! Ma, al di là delle
differenze derivanti dall'errore di misurazione e dalla differente unità
di misura, ci aspettiamo che, se le due scale misurano entrambe lo
stesso costrutto, allora i valori prodotti dalle due scale dovranno
essere tra loro _linearmente associati_. Per capire cosa si intende con
"associazione lineare" iniziamo a guardare i dati. Per fare questo
utilizziamo una rappresentazione grafica che va sotto il nome di
diagramma a dispersione.

### Diagramma a dispersione

Il diagramma di dispersione è la rappresentazione grafica delle coppie
di punti individuati dalle variabili BDI-II e CES-D, e si ottiene
ponendo, ad esempio, i valori BDI-II sull'asse delle ascisse e quelli
del CES-D sull'asse delle ordinate. In tale grafico, fornito dalla
figura \@ref(fig:zetsche-scatter), cascun punto corrisponde ad un
individuo del quale, nel caso presente, conosciamo il livello di
depressione misurato dalle due scale psicometriche. 
<!-- A tale grafico sono -->
<!-- state aggiunte le funzioni *marginali* (ovvero, che si riferiscono a -->
<!-- ciascuna variabile considerata singolarmente) di densità empirica che -->
<!-- abbiamo già incontrato in precedenza. -->


```r
bysubj <- df %>% 
  group_by(esm_id, group) %>% 
  summarise(
    bdi = mean(bdi),
    cesd = mean(cesd_sum)
  ) %>% 
  na.omit() %>% 
  ungroup()
#> `summarise()` regrouping output by 'esm_id' (override with `.groups` argument)
```


```r
m_cesd <- mean(bysubj$cesd)
m_bdi <- mean(bysubj$bdi)
FONT_SIZE <- 10

p <- bysubj %>%
  ggplot(
    aes(x=bdi, y=cesd, color=group)) +
  geom_point(size=1) +
  geom_hline(yintercept= m_cesd, linetype="dashed", color = "gray") +
  geom_vline(xintercept = m_bdi, linetype="dashed", color = "gray") +
  geom_text(x=-1, y=16, label="I", color = "gray", size=FONT_SIZE) +
  geom_text(x=0, y=46, label="IV", color = "gray", size=FONT_SIZE) +
  geom_text(x=18, y=46, label="III", color = "gray", size=FONT_SIZE) +
  geom_text(x=18, y=16, label="II", color = "gray", size=FONT_SIZE) +
  labs(
    x = "BDI-II",
    y = "CESD"
  ) +
  theme_apa() +
  theme(legend.position="none") 
p
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/zetsche-scatter-1.png" alt="Associazione tra le variabili BDI-II e CES-D nello studio di @zetsche_future_2019. In rosso sono rappresentate le osservazioni del gruppo di controllo; in blu quelle dei pazienti." width="95%" />
<p class="caption">(\#fig:zetsche-scatter)Associazione tra le variabili BDI-II e CES-D nello studio di @zetsche_future_2019. In rosso sono rappresentate le osservazioni del gruppo di controllo; in blu quelle dei pazienti.</p>
</div>

Dalla figura \@ref(fig:zetsche-scatter) possiamo vedere che i dati mostrano
una certa tendenza a disporsi attorno ad una retta -- nel gergo
statistico, questo fatto viene espresso dicendo che i punteggi CES-D 
tendono ad essere linearmente associati ai punteggi BDI-II. È ovvio,
tuttavia, che tale relazione lineare è lungi dall'essere perfetta -- se
fosse perfetta, tutti i punti del diagramma a dispersione si
disporrebbero esattamente lungo una retta.

Il problema che ci poniamo è quello di trovare un indice numerico che
descriva di quanto la nube di punti si discosta da una perfetta
relazione lineare tra le due variabili. Per risolvere tale problema
dobbiamo specificare un indice statistico che descriva la direzione e la
forza della relazione lineare tra le due variabili. Ci sono vari indici
statistici che possiamo utilizzare a questo scopo.


### Covarianza

Iniziamo a considerare il più importante di tali indici, chiamato
*covarianza*. In realtà la definizione di questo indice non ci
sorprenderà più di tanto in quanto, in una forma solo apparentemente
diversa, l'abbiamo già incontrato in precedenza. Ci ricordiamo infatti
che la varianza di una generica variabile $X$ è definita come la media
degli scarti quadratici di ciascuna osservazione dalla media:
\begin{equation}
S_{XX} = \frac{1}{n} \sum_{i=1}^n(X_i - \bar{X}) (X_i - \bar{X}).
(\#eq:variance2)
\end{equation}
Infatti, la varianza viene talvolta descritta come la "covarianza di una
variabile con sé stessa".

Adesso facciamo un passo ulteriore. Invece di valutare la dispersione di
una sola variabile, chiediamoci come due variabili $X$ e $Y$ "variano
insieme" (co-variano). È facile capire come una risposta a tale domanda
possa essere fornita da una semplice trasformazione della formula
precedente che diventa:
\begin{equation}
S_{XY} = \frac{1}{n} \sum_{i=1}^n(X_i - \bar{X}) (Y_i - \bar{Y}).
(\#eq:covariance)
\end{equation}
L'eq. \@ref(eq:covariance) ci fornisce dunque la definizione della covarianza.

Per capire il significato dell'eq. \@ref(eq:covariance), supponiamo di dividere il grafico della figura \@ref(fig:zetsche-scatter) in quattro quadranti definiti da una retta verticale passante per la media dei valori BDI-II e da una
retta orizzontale passante per la media dei valori CES-D. Numeriamo i
quadranti partendo da quello in basso a sinistra e muovendoci in senso
antiorario.

Se prevalgono punti nel I e III quadrante, allora la nuvola di punti
avrà un andamento crescente (per cui a valori bassi di $X$ tendono ad
associarsi valori bassi di $Y$ e a valori elevati di $X$ tendono ad
associarsi valori elevati di $Y$) e la covarianza segno positivo. Mentre
se prevalgono punti nel II e IV quadrante la nuvola di punti avrà un
andamento decrescente (per cui a valori bassi di $X$ tendono ad
associarsi valori elevati di $Y$ e a valori elevati di $X$ tendono ad
associarsi valori bassi di $Y$) e la covarianza segno negativo. Dunque,
il segno della covarianza ci informa sulla direzione della relazione
lineare tra due variabili: l'associazione lineare si dice positiva se la
covarianza è positiva, negativa se la covarianza è negativa.

Il segno della covarianza ci informa sulla direzione della relazione, ma
invece il valore assoluto della covarianza ci dice ben poco. Esso,
infatti, dipende dall'unità di misura delle variabili. Nel caso presente
questo concetto è difficile da comprendere, dato che le due variabili in
esame non hanno un'unità di misura (ovvero, hanno un'unità di misura
arbitraria e priva di significato). Ma quest'idea diventa chiara se
pensiamo alla relazione lineare tra l'altezza e il peso delle persone,
ad esempio. La covarianza tra queste due quantità è certamente positiva,
ma il valore assoluto della covarianza diventa più grande se l'altezza
viene misurata in millimetri e il peso in grammi, e diventa più piccolo
l'altezza viene misurata in metri e il peso in chilogrammi. Dunque, il
valore della covarianza cambia al mutare dell'unità di misura delle
variabili anche se l'associazione tra le variabili resta costante.


### Correlazione

Dato che il valore assoluto della covarianza è di difficile
interpretazione -- in pratica, non viene mai interpretato -- è
necessario trasformare la covarianza in modo tale da renderla immune
alle trasformazioni dell'unità di misura delle variabili. Questa
operazione si dice *standardizzazione* e corrisponde alla divisione
della covarianza per le deviazioni standard ($s_X$, $s_Y$) delle due
variabili:

\begin{equation}
r_{XY} = \frac{S_{XY}}{s_X s_Y}.
(\#eq:correlation)
\end{equation}
La quantià che si ottiene in questo modo viene chiamata *correlazione* di Bravais-Pearson (dal nome degli autori che, indipendentemente l'uno dall'altro, la hanno introdotta).

Il coefficiente di correlazione ha le seguenti proprietà:

*   ha lo stesso segno della covarianza, dato che si ottiene dividendo
    la covarianza per due numeri positivi;
*   è un numero puro, cioè non dipende dall'unità di misura delle
    variabili;
*   assume valori compresi tra -1 e +1.

Ad esso possiamo assegnare la seguente interpretazione:

1.  $r_{XY} = -1$ $\rightarrow$ perfetta relazione negativa: tutti i
    punti si trovano esattamente su una retta con pendenza negativa (dal
    quadrante in alto a sinistra al quadrante in basso a destra);
2.  $r_{XY} = +1$ $\rightarrow$ perfetta relazione positiva: tutti i
    punti si trovano esattamente su una retta con pendenza positiva (dal
    quadrante in basso a sinistra al quadrante in alto a destra);
3.  $-1 < r_{XY} < +1$ $\rightarrow$ presenza di una relazione lineare
    di intensità diversa;
4.  $r_{XY} = 0$ $\rightarrow$ assenza di relazione lineare tra $X$ e
    $Y$.

Per i dati della figura \@ref(fig:zetsche-scatter), la covarianza è 207.426. Il segno positivo della covarianza ci dice che tra le due variabili c'è
un'associazione lineare positiva. Per capire qual è l'intensità della
relazione lineare tra le due variabili calcoliamo la correlazione.
Essendo le deviazioni standard del BDI-II e del CES-D rispettavamente
uguali a 15.37 e 14.93, la correlazione diventa uguale a
$\frac{207.426}{15.38 \cdot 14.93} = 0.904.$ Tale valore è prossimo a
1.0, il che vuol dire che i punti del diagramma a dispersione non si
discostano troppo da una retta con una pendenza positiva.


## Correlazione e causazione

Facendo riferimento nuovamente alla figura \@ref(fig:zetsche-scatter), possiamo dire che, in molte applicazioni (ma non nel caso presente!) l'asse $x$ rappresenta una
quantità nota come _variabile indipendente_ e l'interesse si concentra
sulla sua influenza sulla _variabile dipendente_ tracciata sull'asse
$y$. Ciò presuppone però che sia nota la direzione in cui l'influenza
causale potrebbe risiedere. È importante tenere bene a mente che la
correlazione è soltanto un indice descrittivo della relazione lineare
tra due variabili e in nessun caso può essere usata per inferire
alcunché sulle relazioni __causali__ che legano le variabili. È ben nota
l'espressione: "correlazione non significa causazione".

Di opinione diversa era invece Karl Pearson (1911), il quale ha
affermato: 

> Quanto spesso, quando è stato osservato un nuovo fenomeno,
sentiamo che viene posta la domanda: 'qual è la sua causa?'. Questa è
una domanda a cui potrebbe essere assolutamente impossibile rispondere.
Invece, può essere più facile rispondere alla domanda: 'in che misura
altri fenomeni sono associati con esso?'. Dalla risposta a questa
seconda domanda possono risultare molte preziose conoscenze.

Che alla seconda domanda posta da Pearson sia facile rispondere è indubbio. Che
la nostra comprensione di un fenomeno possa aumentare sulla base delle
informazioni fornite unicamente dalle correlazioni, invece, è molto dubbio e quasi
certamente falso.


### Usi della correlazione

Anche se non può essere usata per studiare le relazioni causali, la
correlazione viene usata per molti altri scopi tra i quali, per esempio,
quello di misurare la _validità concorrente_ di un test psiologico. Se
un test psicologico misura effettivamente ciò che ci si aspetta che
misuri (nel caso dell'esempio presente, la depressione), allora dovremo
aspettarci che fornisca una correlazione alta con risultati di altri
test che misurano lo stesso costrutto -- come nel caso dei dati di
[@zetsche_future_2019]. Un'altra proprietà desiderabile di un test
psicometrico è la _validità divergente_: i risultati di test
psicometrici che misurano costrutti diversi dovrebbero essere poco
associati tra loro. In altre parole, in questo secondo caso dovremmo
aspettarci che la correlazione sia bassa.

### Correlazione di Spearman

Una misura alternativa della relazione lineare tra due variabili è
fornita dal coefficiente di correlazione di Spearman e dipende soltanto
dalla relazione d'ordine dei dati, non dagli specifici valori dei dati.
Tale misura di associazione è appropriata quando, del fenomeno in esame,
gli psicologi sono stati in grado di misurare soltanto le relazioni
d'ordine tra le diverse modalità della risposta dei soggetti, non
l'intensità della risposta. Le variabili psicologiche che hanno questa
proprietà si dicono _ordinali_. Nel caso di variabili ordinali, non è
possibile sintetizzare i dati mediante le statistiche descrittive che
abbiamo introdotto in questo capitolo, quali ad esempio la media e la
varianza, ma è invece solo possibile riassumere i dati mediante una
distribuzione di frequenze per le varie modalità della risposta.


### Correlazione nulla

Un ultimo aspetto da mettere in evidenza a proposito della correlazione
riguarda il fatto che la correlazione descrive la direzione e
l'intensità della relazione lineare tra due variabili. Relazioni non
lineari tra le variabili, anche sono molto forti, non vengono catturate
dalla correlazione. È importante rendersi conto che una correlazione
pari a zero non significa che non c'è relazione tra le due variabili, ma
solo che tra esse non c'è una relazione *lineare*. Un esempio di questo
fatto è fornito dalla figura \@ref(fig:zerocorr).


```r
library("datasauRus")
slant <- ggplot(datasaurus_dozen_wide, aes(x=slant_down_x,y=slant_down_y),   colour=dataset) 
# loads slant-pattern dataset of datasauRus package into data frame slant
slant <- slant + 
  geom_point() # as a scatter type geom
slant <- slant + 
  theme_void() # eliminates unwanted axis labels
slant <- slant + 
  theme(legend.position = "none", 
        panel.border = element_rect(colour = "black", fill=NA, size = 1),
        plot.margin = margin(0,2,0,2), aspect.ratio = 1) 
# removes legend, adds a border, adds margin space below, and specifies 
# required aspect ratio

dino <- ggplot(datasaurus_dozen_wide, aes(x=dino_x,y=dino_y), colour=dataset) +
  geom_point() 
# loads dino-figure dataset of datasauRus package into data 
#frame dino as a scatter type geom
dino <- dino +theme_void() # eliminates unwanted axis labels
dino <- dino + 
  theme(legend.position = "none", 
        panel.border =  element_rect(colour = "black", fill=NA, size = 1),
        plot.margin = margin(0,2,0,2), aspect.ratio = 1) 
# removes legend, adds a border, adds margin space below, specifies 
# required aspect ratio

slant + dino
```

<div class="figure" style="text-align: center">
<img src="14_stat_descrittive_files/figure-html/zerocorr-1.png" alt="Due insiemi di dati (fittizi) per i quali i coefficienti di correlazione di Pearson sono entrambi 0. Ma questo non significa che non vi sia alcuna relazione tra le variabili." width="80%" />
<p class="caption">(\#fig:zerocorr)Due insiemi di dati (fittizi) per i quali i coefficienti di correlazione di Pearson sono entrambi 0. Ma questo non significa che non vi sia alcuna relazione tra le variabili.</p>
</div>

## Conclusioni 

La prima fase dell'analisi dei dati è sicuramente quella che ci porta a
riassumere i dati mediante gli strumenti della statistica descrittiva.
Ci sono diverse domande che vengono affrontate in questa fase: qual è la
distribuzione delle variabili di interesse? Quali relazioni a coppie si
possono osservare nel campione? Ci sono delle osservazioni 'anomale',
ovvero estremamente discrepanti rispetto alle altre, sia quando si
esaminano le statistiche descrittive univariate (ovvero, quelle che
riguardano le caratteristiche di una variabile presa singolarmente), sia
quando vengono esaminate le statistiche bivariate (ovvero, le
statistiche che descrivono l'associazione tra le variabili)? È
importante avere ben chiare le idee su questi punti prima di procedere
con qualsiasi procedura statistica di tipo inferenziale. Per rispondere
alle domande che abbiamo elencato sopra, ed ad altre simili, è molto
utile procedere con delle rappresentazioni grafiche dei dati. Dovrebbe
essere chiaro che, quando disponiamo di grandi moli di dati (come è
sempre il caso in psicologia), per fare questo è necessario usare un
software statistico.

## Esercizi 
 
Scarica gli esercizi: 

`<a href="data:text/x-markdown;base64,LS0tCnRpdGxlOiAnRXNlcmNpemkgMTQ6IFN0YXRpc3RpY2hlIGRlc2NyaXR0aXZlJwphdXRob3I6ICJDb3JyYWRvIENhdWRlayIKb3V0cHV0OiBodG1sX2RvY3VtZW50Ci0tLQoKYGBge3Igc2V0dXAsIGluY2x1ZGU9RkFMU0V9CiMgcGxlYXNlIGRvIG5vdCBhbHRlciB0aGlzIGNvZGUgY2h1bmsKa25pdHI6Om9wdHNfY2h1bmskc2V0KGVjaG8gPSBUUlVFLCBtZXNzYWdlID0gRkFMU0UsIGVycm9yID0gVFJVRSkKYGBgCgo8IS0tIDxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+IC0tPgo8IS0tICAgYm9keXsgLS0+CjwhLS0gICBmb250LXNpemU6IDEzcHQ7IC0tPgo8IS0tIH0gLS0+CjwhLS0gPC9zdHlsZT4gLS0+CgoKTW9kaWZpY2EgaSBzZWd1ZW50aSBibG9jY2hpIGRpIGNvZGljZSBlIHBvaSBlc2VndWkgKGBrbml0YCkgY2lhc2N1biBibG9jY28gZGkgY29kaWNlIHNpbmdvbGFybWVudGUsIHVubyBkb3BvIGwnYWx0cm8uCgpgYGB7cn0KbGlicmFyeSgidGlkeXZlcnNlIikKYGBgCgoKIyMgVXNhcmUgUiBjb21lIHVuIGNhbGNvbGF0b3JlCgpOZWxsYSBjb25zb2xlLCBkaWdpdGEgbGUgc2VndWVudGkgaXN0cnV6aW9uaToKCmBgYAoxICsgMgphIDwtIDEKYiA8LSAyCmEgKyBiCmBgYAoKTG8gc3Rlc3NvIHJpc3VsdGF0byBzaSBvdHRpZW5lIG1lZGlhbnRlIGlsIHNlZ3VlbnRlIGJsb2NjbyBkaSBjb2RpY2UgaW4gcXVlc3RvIGRvY3VtZW50byBSbWQ6CgpgYGB7cn0KMSArIDIKYSA8LSAxCmIgPC0gMgphICsgYgpgYGAKCiMjIE1lZGlhCgpDb25zaWRlcmlhbW8gb3JhIGkgdmFsb3JpIEJESS1JSSBjaGUgc29ubyBzdGF0aSBkaXNjdXNzaSBuZWxsZSBkaXNwZW5zZSBlIHNvbm8gcmlwb3J0YXRpIHF1aSBkaSBzZWd1aXRvOgoKYGBge3J9CmJkaSA8LSBjKAowLCAgMCwgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMSwgIDEsICAxLCAgMSwgIDEsICAxLCAgMSwgIDEsICAyLCAgMiwgIDIsICAyLCAzLCAgMywgIDMsICA1LCAgNywgIDksIDEyLCAxOSwgMjIsIDIyLCAyNCwgMjUsIDI1LCAyNiwgMjYsIDI2LCAyNywgMjcsIDI4LCAyOCwgMzAsIDMwLCAzMCwgMzEsIDMxLCAzMywgMzMsIDM0LCAzNSwgMzUsIDM1LCAzNiwgMzksIDQxLCA0MywgNDMsIDQ0CikKYGBgCgpTaSB1dGlsaXp6aSBsYSBmdW56aW9uZSBhcHByb3ByaWF0YSBwZXIgc3RhYmlsaXJlIGRpIHF1YW50aSBlbGVtZW50aSDDqCBjb21wb3N0byBpbCB2ZXR0b3JlIGBiZGlgLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKU2kgdXRpbGl6emkgbGEgZnVuemlvbmUgYXBwcm9wcmlhdGEgcGVyIHRyb3ZhcmUgaWwgdmFsb3JlIGRlbGxhIHNvbW1hIGRlaSB2YWxvcmkgZGVsIHZldHRvcmUgYGJkaWAuCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQoKYGBgCgpMYSBtZWRpYSDDqCBkYXRhIGRhbGxhIHNvbW1hIGRlaSB2YWxvcmkgZGl2aXNhIHBlciBpbCBudW1lcm8gZGVpIGNhc2kuIE1lZGlhbnRlIGxlIGR1ZSBmdW56aW9uaSB1dGlsaXp6YXRlIHNvcHJhLCBzaSBjYWxjb2xpIGxhIG1lZGlhOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKU2kgY29uZnJvbnRpIGlsIHJpc3VsdGF0byBvdHRlbnV0byBjb24gcXVlbGxvIHByb2RvdHRvIGRhbGxhIGZ1bnppb25lIGBtZWFuKClgOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKIyMgSXN0b2dyYW1tYQoKUG9uaWFtb2NpIG9yYSBpbCBwcm9ibGVtYSBkaSBjcmVhcmUgdW4gaXN0b2dyYW1tYSBjb24gaSB2YWxvcmkgYGJkaWAuIFBlciBzZW1wbGljaXTDoCB1c2VyZW1vIGxhIGZ1bnppb25lIGBoaXN0KClgIGRpIFIgYmFzZSAtLSBpbiBzZWd1aXRvIGNvc3RydWlyZW1vIGwnaXN0b2dyYW1tYSBjb24gYGdncGxvdCgpYC4gSW5pemlhbW8gYWQgZXNhbWluYXJlIGlsIGZpbGUgZGkgaGVscDoKCmBgYHtyfQo/aGlzdApgYGAKClBlciBpIG5vc3RyaSBzY29waSwgZG9iYmlhbW8gY2FwaXJlIGNvbWUgcGFzc2FyZSBpbCB2ZXR0b3JlIGBiZGlgIGluIGlucHV0IGEgYGhpc3QoKWAuIElsIGZpbGUgZGkgaGVscCBjaSBkaWNlIGNoZSBsYSBzaW50YXNzaSDDqCBgaGlzdChiZGkpYC4gCgpNYSBxdWVzdG8gbm9uIMOoIHN1ZmZpY2llbnRlLCBpbiBxdWFudG8gdW4gaXN0b2dyYW1tYSBwdcOyIGVzc2VyZSBjb3N0cnVpdG8gaW4gbW9sdGkgbW9kaSBkaXZlcnNpLCBwZXIgY3VpIGRvYmJpYW1vIGNhcGlyZSBjb21lIGxvIGNvc3RydWlzY2UgYGhpc3QoKWAgZGkgZGVmYXVsdCAob3Z2ZXJvLCBzZW56YSBhbHRyZSBzcGVjaWZpY2F6aW9uaSkgZSBzZSBxdWVzdG8gcmlzb2x2ZSBpbCBfX25vc3Ryb19fIHByb2JsZW1hLiAgCgpOZWwgZmlsZSBkaSBoZWxwLCBsJ2FyZ29tZW50byBgZnJlcWAgdmllbmUgZGVzY3JpdHRvIGNvbWUgc2VndWU6Cgo+IGZyZXEJbG9naWNhbDsgaWYgVFJVRSwgdGhlIGhpc3RvZ3JhbSBncmFwaGljIGlzIGEgcmVwcmVzZW50YXRpb24gb2YgZnJlcXVlbmNpZXMsIHRoZSBjb3VudHMgY29tcG9uZW50IG9mIHRoZSByZXN1bHQ7IGlmIEZBTFNFLCBwcm9iYWJpbGl0eSBkZW5zaXRpZXMsIGNvbXBvbmVudCBkZW5zaXR5LCBhcmUgcGxvdHRlZCAoc28gdGhhdCB0aGUgaGlzdG9ncmFtIGhhcyBhIHRvdGFsIGFyZWEgb2Ygb25lKS4KCkRhIGNpw7IgZGVkdWNpYW1vIGNoZSBkb2JiaWFtbyBwb3JyZSBgZnJlcSA9IEZBTFNFYCBwZXIgb3R0ZW5lcmUgdW4gaXN0b2dyYW1tYSBjaGUgYWJiaWEgdW4nYXJlYSB0b3RhbGUgdWd1YWxlIGEgMSwgb3Z2ZXJvIHBlciBvdHRlbmVyZSBxdWVsbG8gY2hlIGNoaWVkZSBpbCBwcm9ibGVtYSBzdWNjZXNzaXZvLgoKVXRpbGl6emFuZG8gbGEgZnVuemlvbmUgYGhpc3QoKWAgc2kgY3JlaSB1biBpc3RvZ3JhbW1hIHRhbGUgY2hlIGxhIHNvbW1hIGRlbGxlIGFyZWUgZGVsbGUgYmFycmUgZGVsbCdpc3RvZ3JhbW1hIHNpYSB1Z3VhbGUgYSAxOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKRXNhbWluaWFtbyBpIGRhdGkgY2hlIHNvbm8gc3RhdGkgdXRpbGl6emF0aSBkYWxsYSBmdW56aW9uZSBgaGlzdCgpYCBwZXIgY3JlYXJlIGwnaXN0b2dyYW1tYS4gCgpgYGB7cn0Kb3V0IDwtIGhpc3QoYmRpLCBmcmVxID0gRkFMU0UsIHBsb3QgPSBGQUxTRSkKb3V0CmBgYAoKRGFsIGZpbGUgZGkgaGVscCBkZWxsYSBmdW56aW9uZSBzY29wcmlhbW8gY2hlLCBkaSBkZWZhdWx0LCBsJ2FyZ29tZW50byBgcmlnaHRgIMOoIHBvc3RvIHVndWFsZSBhIGBUUlVFYC4gUXVlc3RvIHNpZ25pZmljYSBjaGUgYGhpc3QoKWAgdXRpbGl6emEgKGRpIGRlZmF1bHQpIGludGVydmFsbGkgY2hpdXNpIGEgZGVzdHJhIGUgYXBlcnRpIGEgc2luaXN0cmE6IChdLiBJbiBhbHRyZSBwYXJvbGUsIHVuIHZhbG9yZSBjaGUgY29pbmNpZGUgY29uIGlsIGxpbWl0ZSBpbmZlcmlvcmUgc2Fyw6AgZXNjbHVzbyBkYWxsJ2ludGVydmFsbG8sIG1lbnRyZSB1biB2YWxvcmUgY2hlIGNvaW5jaWRlIGNvbiBpbCBsaW1pdGUgc3VwZXJpb3JlIHNhcsOgIGluY2x1c28gbmVsbCdpbnRlcnZhbGxvLgoKTGEgZnVuemlvbmUgYGhpc3QoKWAgaGEgZGVjaXNvIGRpIHV0aWxpenphcmUgaSBsaW1pdGkgZGVnbGkgaW50ZXJ2YWxsaSBzcGVjaWZpY2F0aSBkYSAkYnJlYWtzIC0tIHF1ZXN0byBzaSBwdcOyIGNhbWJpYXJlLCBtYSBwZXIgb3JhIG5vbiBsbyBmYWNjaWFtby4KCkVzYW1pbmlhbW8gaWwgc2Vjb25kbyBpbnRlcnZhbGxvLCBvdnZlcm8gKDUsIDEwXS4gQ2hpZWRpYW1vY2kgbGEgc2VndWVudGUgZG9tYW5kYTogcXVhbnRpIHZhbG9yaSBkZWwgdmV0dG9yZSBgYmRpYCBzb25vIGNvbXByZXNpIG5lbGwnaW50ZXJ2YWxsbyAoNSwgMTBdPyAgCgpQZXIgcmlzcG9uZGVyZSBhIHF1ZXN0YSBkb21hbmRhIGRvYmJpYW1vIGVzYW1pbmFyZSBsYSBzZXF1ZW56YSBvcmRpbmF0YSBkZWkgdmFsb3JpIGBiZGlgLiBTZSBjaSBmb2NhbGl6emlhbW8gc3VpIHZhbG9yaSBjaGUgY2kgaW50ZXJlc3Nhbm8gKC4uLiAzICA1ICA3ICA5IDEyIC4uLiksIGFsbG9yYSB2ZWRpYW1vIGNoZSwgdHJhIGkgcG9zc2liaWxpIGNhbmRpZGF0aSBpbCB2YWxvcmUgNSBjb2luY2lkZSBjb24gaWwgbGltaXRlIGluZmVyaW9yZSBkZWxsJ2ludGVydmFsbG8uIE1hLCBkYXRvIGNoZSBsJ2ludGVydmFsbG8gw6ggYXBlcnRvIGEgc2luaXN0cmEsIGlsIHZhbG9yZSA1IG5vbiBzYXLDoCBpbmNsdXNvIG5lbGwnaW50ZXJ2YWxsby4gIFF1aW5kaSByZXN0YW5vIHNvbG8gZHVlIHZhbG9yaSBwb3NzaWJpbGk6IDcgZSA5LiBMYSBmcmVxdWVuemEgYXNzb2x1dGEgYXNzb2NpYXRhIGFsIHNlY29uZG8gaW50ZXJ2YWxsbyDDqCBkdW5xdWUgcGFyaSBhIDIuIFF1ZXN0byDDqCBpbmRpY2F0byBkYWwgc2Vjb25kbyB2YWxvcmUgZGkgJGNvdW50cy4KClNpIGNhbGNvbGkgb3JhIGxhIGRlbnNpdMOgIGRlbGxhIHNlY29uZGEgYmFycmEgZGVsbCdpc3RvZ3JhbW1hLiAoU3VnZ2VyaW1lbnRvOiByaWNvcmRpYW1vIGNoZSBsJ2FyZWEgZGVsbGEgc2Vjb25kYSBiYXJyYSBkZWxsJ2lzdG9ncmFtbWEgw6ggdWd1YWxlIGFsbGEgZnJlcXVlbnphIHJlbGF0aXZhIGRlbGxhIHNlY29uZGEgY2xhc3NlIGUgY2hlIGxhIGRlbnNpdMOgIGRlbGxhIHNlY29uZGEgYmFycmEgw6ggc2VtcGxpY2VtZW50ZSBsJ2FsdGV6emEgZGVsbGEgYmFycmEpLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKU2kgcHXDsiB2ZWRlcmUgY2hlIGlsIHZhbG9yZSB0cm92YXRvIGNvaW5jaWRlIGNvbiBpbCBzZWNvbmRvIHZhbG9yZSBkaSAkZGVuc2l0eS4gCgpSaXBldGlhbW8gbGEgcHJvY2VkdXJhIHBlciBsJ3VsdGltYSBiYXJyYSBkZWxsJ2lzdG9ncmFtbWEuIExhIGRlbnNpdMOgIGRlbGwndWx0aW1hIGJhcnJhIGRlbGwnaXN0b2dyYW1tYSDDqAoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKUXVlc3RvIHJpc3VsdGF0byBjb2luY2lkZSBjb24gbCd1bHRpbW8gdmFsb3JlIGRpICRkZW5zaXR5LgoKIyMgVmFyaWFuemEKCkxhIGZvcm11bGEgZGVsbGEgdmFyaWFuemEgw6gKClxiZWdpbntlcXVhdGlvbn0KVih4KSA9IFxmcmFje1xzdW1fe2k9MX1ebiAoeCAtIFxiYXJ7eH0pXjJ9e259ClxlbmR7ZXF1YXRpb259CgpDYWxvbGlhbW8gbGEgdmFyaWFuemEgcGVyIGkgdmFsb3JpIGBiZGlgLiBJbml6aWFtbyBhIHRyb3ZhcmUgaWwgZGVub21pbmF0b3JlOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKQWwgbnVtZXJhdG9yZSBhYmJpYW1vIGxhIHF1YW50aXTDoCAkXGJhcnt4fSQsIG92dmVybyBsYSBtZWRpYSBkZWkgdmFsb3JpIGBiZGlgLiBRdWVzdG8gdmFsb3JlIMOoIGdpw6Agc3RhdG8gdHJvdmF0byBzb3ByYS4gIFF1aSBsbyBjaGlhbWVyZW1vIGBhdmdfYmRpYDoKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCmF2Z19iZGkgPC0gTlVMTAphdmdfYmRpCmBgYAoKTGEgZm9ybXVsYSBjaSBkaWNlIGNoZSBkb2JiaWFtbyBzb3R0cmFyZSBsYSBtZWRpYSBkYSBjaWFzY3VuIHZhbG9yZSBkZWwgdmV0dG9yZTogJHggLSBcYmFye3h9JC4gQ2nDsiBzaWduaWZpY2EgY2hlIGRvYmJpYW1vIGVzZWd1aXJlIGxhIGRpZmZlcmVuemEgYGJkaVtpXSAtIGF2Z19iZGlgIHBlciBjaWFzY3VuIGVsZW1lbnRvIGRlbCB2ZXR0b3JlLCBjb24gX2lfIGNoZSB2YSBkYSAxIGEgNjYuIFBlciBpbCBwcmltbyBlbGVtZW50byBkaSBgYmRpYCB0YWxlIGRpZmZlcmVuemEgc2Fyw6AKCmBgYHtyfQpiZGlbMV0gLSBhdmdfYmRpCmBgYAoKZSBjb3PDrCB2aWEgcGVyIHR1dHRpIGdsaSBlbGVtZW50aSBkZWwgdmV0dG9yZSBgYmRpYC4gU2FwcGlhbW8gY2hlIHBvc3NpYW1vIGVzZWd1aXJlIHF1ZXN0YSBvcGVyYXppb25lIGFsZ2VicmljYSBkaXJldHRhbWVudGUgc3VsIHZldHRvcmUgYGJkaWAuICBMZSBvcGVyYXppb25pIGFsZ2VicmljaGUgc3VpIHZldHRvcmkgdmVuZ29ubyBlc2VndWl0ZSBfX2VsZW1lbnRvIHBlciBlbGVtZW50b19fLCBpbCBjaGUgc2lnbmlmaWNhIGNoZSwgc2UgbCdvcGVyYXppb25lIGFsZ2VicmljYSDDqCBgLSBhdmdfYmRpYCwgYWxsb3JhIHRhbGUgb3BlcmF6aW9uZSB2ZXJyw6AgZXNlZ3VpdGEgcGVyIGNpYXNjdW5vIGRlZ2xpIGVsZW1lbnRpIGRpIGBiZGlgLCBpbCBjaGUgw6ggZXNhdHRhbWVudGUgcXVlbGxvIGNoZSB2aWVuZSBlc3ByZXNzbyBpbiBxdWVzdG8gZnJhbW1lbnRvIGRlbGwnZXF1YXppb25lIHByZWNlZGVudGU6ICR4IC0gXGJhcnt4fSQuIENoaWFtaWFtbyBgZGlmX2JkaWAgaWwgdmV0dG9yZSBjaGUgY29udGllbmUgcXVlc3RlIGRpZmZlcmVuemUgCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpkaWZfYmRpIDwtIE5VTEwKZGlmX2JkaQpgYGAKCkRhdG8gY2hlIGlsIHZldHRvcmUgYGJkaWAgw6ggY29tcG9zdG8gZGEgNjYgZWxlbWVudGksIHNlIHNvdHRyYWlhbW8gMTQuOTM5Mzk0IGRhIGNpYXNjdW4gZWxlbWVudG8gZGVsIHZldHRvcmUsIG90dGVycmVtbyB1biB2ZXR0b3JlIGBkaWZfYmRpYCBhbmNoJ2Vzc28gY29zdGl0dWl0byBkYSA2NiBlbGVtZW50aSwgY29tZSBpbmRpY2F0byBzb3ByYS4KCkxhIGZvcm11bGEgZGVsbGEgdmFyaWFuemEgY2kgZGljZSBjaGUgY2lhc2N1biBlbGVtZW50byBkZWwgdmV0dG9yZSBgZGlmX2JkaWAgdmEgaW5uYWx6YXRvIGFsIHF1YWRyYXRvOiAkKHggLSBcYmFye3h9KV4yJC4gRmFjY2lhbW9sbyBpbiBSIGRlZmluZW5kbyBpbCB2ZXR0b3JlIGBkaWZfc3FfYmRpYC4gTCdpbm5hbHphbWVudG8gYSBwb3RlbnphIMOoIHVuJ2FsdHJhIG9wZXJhemlvbmUgYXJpdG1ldGljYSwgcGVyIGN1aSBwcm9jZWRpYW1vIGNvbWUgcHJpbWEgcGVyIG90dGVuZXJlIHVuIHZldHRvcmUgYW5jaCdlc3NvIGRpIDY2IGVsZW1lbnRpLiBJbiBSLCBsYSBzaW50YXNzaSBwZXIgaW5hbHphcmUgYWwgcXVhZHJhdG8gw6ggYF4yYC4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCmRpZl9zcV9iZGkgPC0gTlVMTApkaWZfc3FfYmRpCmBgYAoKQXZlbmRvIHRyb3ZhdG8gaWwgdmV0dG9yZSBjaGUgY29udGllbmUgZ2xpIHNjYXJ0aSBkYWxsYSBtZWRpYSBpbm5hbHphdGkgYWwgcXVhZHJhdG8sIGxhIGZvcm11bGEgY2kgZGljZSBjaGUgZG9iYmlhbW8gY2FsY29sYXJlIGxhIG1lZGlhIGRpIHF1ZXN0aSA2NiBudW1lcmkuIFRyb3ZpYW1vbGE6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQp2YXJfYmRpIDwtIE5VTEwKdmFyX2JkaQpgYGAKClVzaWFtbyBvcmEgbGEgZnV6aW9uZSBgdmFyKClgIHBlciB2ZXJpZmljYXJlIGNoZSBsYSBmb3JtdWxhIGRlbGxhIHZhcmlhbnphIHNpYSBzdGF0YSBpbXBsZW1lbnRhdGEgaW4gbW9kbyBjb3JyZXR0byBmYWNlbmRvIHF1ZWxsbyBjaGUgYWJiaWFtbyBmYXR0byBzb3ByYS4gRG9iYmlhbW8gcGVyw7Igc3RhcmUgYXR0ZW50aSBkaSB1bmEgY29zYS4gTGEgZnVuemlvbmUgYHZhcigpYCBjYWxjb2xhIGxhIHZhcmlhbnphIGRpIHVuYSB2YXJpYWJpbGUuIE1hLCBwZXIgbW90aXZpIGNoZSB2ZWRyZW1vIGluIHNlZ3VpdG8sIHVzYSAkbi0xJCBhbCBkZW5vbWluYXRvcmUuIFBlciBjdWkgZG9iYmlhbW8gY29ycmVnZ2VyZSBxdWVzdG8gYXNwZXR0byBwZXIgcG90ZXJlIGNvbmZyb250YXJlIGlsIHJpc3VsdGF0byBwcm9kb3R0byBkYSBgdmFyKClgIGNvbiBxdWVsbG8gY2hlIGFiYmlhbW8gdHJvdmF0byBub2k6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQp2YXJfYmRpIDwtIE5VTEwKdmFyX2JkaQpgYGAKCklsIHJpc3VsdGF0byBwcm9kb3R0byBkYSBgdmFyKClgIChkb3BvIGF2ZXJlIGNvcnJldHRvIGlsIGRlbm9taW5hdG9yZSkgY2kgZGljZSBjaGUgYWJiaWFtbyBpbXBsZW1lbnRhdG8gY29ycmV0dGFtZW50ZSBpbiBSIGxhIGZvcm11bGEgZGVsbGEgdmFyaWFuemEuCgojIyBEZXZpYXppb25lIHN0YW5kYXJkCgpTaSBjYWxjb2xpIGxhIGRldmlhemlvbmUgc3RhbmRhcmQgZGVsIHZldHRvcmUgYGJkaWA6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpzZF9iZGkgPC0gTlVMTApzZF9iZGkKYGBgCgojIyBJbnRlcnByZXRhemlvbmUgZGVsbGEgZGV2aWF6aW9uZSBzdGFuZGFyZAoKTGEgZGV2aWF6aW9uZSBzdGFuZGFyZCBwdcOyIGVzc2VyZSBpbnRlcnByZXRhdGEgZGljZW5kbyBjaGUgw6ggc2ltaWxlIGFsbGEgbWVkaWEgZGVsIHZhbG9yZSBhc3NvbHV0byBkZWdsaSBzY2FydGkgZGFsbGEgbWVkaWEuIENhbGNvbGlhbW8gZHVucXVlIGxhIG1lZGlhIGRlbCB2YWxvcmUgYXNzb2x1dG8gZGVnbGkgc2NhcnRpIGRhbGxhIG1lZGlhIHBlciBgYmRpYC4gUGVyIGNhbGNvbGFyZSBpbCB2YWxvcmUgYXNzb2x1dG8gdXNpYW1vIGxhIGZ1bnppb25lIGBhYnMoKWAuCgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKVmVkaWFtbyBjaGUsIGluIGVmZmV0dGksIGxhIG1lZGlhIGRlbCB2YWxvcmUgYXNzb2x1dG8gZGVnbGkgc2NhcnRpIGRhbGxhIG1lZGlhIMOoIG1vbHRvIHNpbWlsZSBhbGxhIGRldmlhemlvbmUgc3RhbmRhcmQuIFF1ZXN0byBzaWduaWZpY2EgY2hlIGxhIGRldmlhemlvbmUgc3RhbmRhcmQgcHXDsiBlc3NlcmUgaW50ZXNhIGNvbWUgbGEgX19kaXN0YW56YV9fIG1lZGlhIHRyYSBjaWFzY3VuIHB1bnRvIGRlbGxhIGRpc3RyaWJ1emlvbmUgZSBpbCBiYXJpY2VudHJvIGRlbGxhIGRpc3RyaWJ1emlvbmUgKG92dmVybywgbGEgbWVkaWEpLiAKCiMjIFF1YW50aWxpCgpTaSB0cm92aSBpbCB0ZXJ6byBxdWFydGlsZSBkZWxsYSBkaXN0cmlidXppb25lIGRlaSB2YWxvcmkgYGJkaWAuCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQoKYGBgCgpDaSBhc3BldHRpYW1vIGNoZSwgaW4gYmFzZSBhbGxhIGRlZmluaXppb25lIGRpIHF1YXJ0aWxlLCBzb3R0byBpbCB0ZXJ6byBxdWFyaWxlIHNpIHNpdHVpbm8gaWwgNzUlIGRlaSB2YWxvcmkgZGVsbGEgZGlzdHJpYnV6aW9uZS4gTmVsIG5vc3RybyBjYXNvIGFiYmlhbW8gNjYgdmFsb3JpIGUgaWwgNzUlIGRpIDY2IMOoCgpgYGB7cn0KNjYgKiAwLjc1CmBgYAoKb3Z2ZXJvIDUwIHZhbG9yaS4gIElsIHRlcnpvIHF1YXJ0aWxlIMOoIDI5LjUuIAoKQ29udGlhbW8gZHVucXVlIHF1YW50aSBlbGVtZW50aSBkZWwgdmV0dG9yZSAgYGJkaWAgaGFubm8gdW4gdmFsb3JlIG1pbm9yZSBkaSAyOS41IHBlciB2ZXJpZmljYXJlIHNlIGlsIHJpc3VsdGF0byBmb3JuaXRvIGRhIFIgaGEgc2Vuc28uCgooU3VnZ2VyaW1lbnRvLiBQZXIgcmlzb2x2ZXJlIHF1ZXN0byBwcm9ibGVtYSwgcG9zc2lhbW8gdXRpbGl6emFyZSBsJ2VzcHJlc3Npb25lIGBiZGkgPCAyOS41YC4gUXVlc3RhIMOoIHVuYSBwcm9wb3NpemlvbmUgbG9naWNhIGNoZSBzaWduaWZpY2E6ICJjaWFzY3VuIGVsZW1lbnRvIGRlbCB2ZXR0b3JlIGBiZGlgIHNvZGRpc2ZhIGxhIGNvbmRpemlvbmUgYDwgMjAuNWAiLiBRdWVzdGEgcHJvcG9zaXppb25lIHB1w7IgZXNzZXJlIFZFUkEgbyBGQUxTQSBwZXIgY2lhc2N1biBlbGVtZW50byAgZGkgYGJkaWAuIEluZmF0dGksIHNlIHNjcml2aWFtbyBgYmRpIDwgMjkuNWAsIFIgcml0b3JuYSB1biB2ZXR0b3JlIGRpIG9yZGluZSA2NiwgaSBjdWkgZWxlbWVudGkgaGFubm8gbW9kYWxpdMOgIFRSVUUgbyBGQUxTRS4gUXVlc3RvIHZldHRvcmUgY2kgZGljZSwgcGVyIGNpYXNjdW4gZWxlbWVudG8gZGkgYGJkaWAsIHNlIGxhIGNvbmRpemlvbmUgYDwgMjkuNWAgw6ggc29kZGlzZmF0dGEgb3BwdXJlIG5vLiBJbCB2ZXR0b3JlIHJpc3VsdGF0ZSBjb250aWVuZSB1bmEgdmFyaWFiaWxlIF9fYm9vbGVhbmFfXywgb3Z2ZXJvIHVuYSB2YXJpYWJpbGUgY2hlIGFzc3VtZSB2YWxvcmkgYm9vbGVhbmksIGNpb8OoIFZlcm98RmFsc28sIFRydWV8RmFsc2UsIG8gMXwwLiBUUlVFIHZhbGUgMSBlIEZBTFNFIHZhbGUgMC4gUG9zc2lhbW8gZHVucXVlIGVzZWd1aXJlIGRlbGxlIG9wZXJhemlvbmkgYXJpdG1ldGljaGUgc3UgdGFsaSB2YWxvcmkgYm9vbGVhbmkuIFBlciBlc2VtcGlvLCBwZXIgdHJvdmFyZSBpbCBudW1lcm8gZGkgdm9sdGUgbmVsbGUgcXVhbGkgbGEgY29uZGl6aW9uZSBgPCAyOS41YCDDqCBzb2RkaXNmYXR0YSwgYmFzdGEgc29tbWFyZSBpIHZhbG9yaSBib29sZWFuaSBkZWwgdmV0dG9yZSBjaGUgYWJiaWFtbyB0cm92YXRvLikKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCgpgYGAKTm9uIG1hbGUhIEFiYmlhbW8gdW4gbnVtZXJvIF9fZmluaXRvX18gZGkgdmFsb3JpLCBkdW5xdWUgbm9uIHBvc3NpYW1vIG90dGVuZXJlIGVzYXR0YW1lbnRlIHVuIHJpc3VsdGF0byBwYXJpIGFsIDc1JS4gTWEgY2kgYW5kaWFtbyBtb2x0byB2aWNpbm8uCgojIyBCb3ggb2xvdAoKQ29zdHJ1aWFtbyBvcmEgdW4gYm94LXBsb3QgY29uIGkgdmFsb3JpIGBiZGlgLiDDiCBzdWZmaWNpZW50ZSB1c2FyZSBsYSBmdW56aW9uZSBgYm94cGxvdCgpYC4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCgpgYGAKUXVpIG5vbiBjJ8OoIG1vbHRvIGRpIGludGVyZXNzYW50ZSBjaGUgcG9zc2lhbW8gZmFyZSwgZGF0byBjaGUgw6ggY2hpYXJvIGNoZSBpbCB2YWxvcmUgZGVsbCd1bmljbyAiYmFmZm8iIChzZWdtZW50byEpIGRlbCBib3gtcGxvdCDDqCB1Z3VhbGUgYWwgbWFzc2ltbyBkZWxsYSBkaXN0cmlidXppb25lOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKUGVyIHJlbmRlcmUgcGnDuSBpbnRlcmVzc2FuZSBpbCBwcm9ibGVtYSwgY29uc2lkZXJpYW1vIHVuYSBkaXZlcnNhIGRpc3RyaWJ1emlvbmUgbmVsbGEgcXVhbGUgY2kgc29ubyBhbGN1bmkgdmFsb3JpIGFub21hbGkuIEltbWFnaW5pYW1vIGRpIGF2ZXJlIDMwIHZhbG9yaSBlc3RyYXR0aSBhIGNhc28gZGFsbGEgZGlzdHJpYnV6aW9uZSBkZWwgcXVvemllbnRlIGRpIGludGVsbGlnZW56YS4gQSB0YWxpIDMwIHZhbG9yaSBjaSBhZ2dpdW5naWFtbyBkdWUgdmFsb3JpIGNoZSBzb25vIHBpw7kgYWx0aSBkaSBxdWVsbGkgY2hlIHNpIGluY29udHJhbm8gIm5vcm1hbG1lbnRlIiAoMTYwLCAxNjUpLgoKTmVsbGUgaXN0cnV6aW9uaSBzZWd1ZW50aSwgYHNldC5zZWVkKDEyMylgIGNvbnNlbnRlIGxhIHJpcHJvZHVjaWJpbGl0w6AgZGVpIHJpc3VsdGF0aS4gTGEgZnVuemlvbmUgYHJub3JtKDMwLCAxMDAsIDE1KWAgcHJlbmRlIDMwIHZhbG9yaSBhIGNhc28gZGFsbGEgcG9wb2xhemlvbmUgZGkgdmFsb3JpIGRlbCBxdW96aWVudGUgZGkgaW50ZWxsaWdlbnphICh2ZWRyZW1vIGluIHNlZ3VpdG8gY29tZSBpIHZhbG9yaSBkZWwgcXVvemllbnRlIGRpIGludGVsbGlnZW56YSBzZWd1b25vIHVuYSBkZXRlcm1pbmF0YSBkaXN0cmlidXppb25lIHRlb3JpY2EgZGV0dGEgbm9ybWFsZSBvIGdhdXNzaWFuYSBkaSBtZWRpYSAxMDAgZSBkZXZpYXppb25lIHN0YW5kYXJkIDE1KS4gTGEgZnVuemlvbmUgYHJvdW5kYCBlbGltaW5hIGxhIGNvbXBvbmVudGUgZGVjaW1hbGUsIGluIHF1YW50byBpbCBxdW96aWVudGUgZGkgaW50ZWxsaWdlbnphIMOoIHVuIG51bWVybyBpbnRlcm8uIExhIGZ1bnppb25lIGBjKClgIGNyZWEgdW4gdmV0dG9yZSBuZWwgcXVhbGUgYWdnaXVuZ2lhbW8gaSBkdWUgZWxlbWVudGkgY2hlIGFiYmlhbW8gc3BlY2lmaWNhdG8gKDE2MCwgMTY1KSBhaSAzMCBjcmVhdGkgZGEgYHJub3JtKDMwLCAxMDAsIDE1KWA6CgpgYGB7cn0Kc2V0LnNlZWQoMTIzKQppcSA8LSBjKHJvdW5kKHJub3JtKDMwLCAxMDAsIDE1KSksIDE2MCwgMTY1KQppcQpgYGAKCkNyZWFpYW1vIGlsIGJveC1wbG90IHBlciBpIDMyIHZhbG9yaSBkZWxsYSB2YXJpYWJpbGUgYGlxYDoKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCgpgYGAKCk9yYSBpbCAiYmFmZm8gc3VwZXJpb3JlIiBub24gY29pbmNpZGUgY29uIGlsIG1hc3NpbW8gZGVsbGEgZGlzdHJpYnV6aW9uZS4gU2kgdHJvdmkgaWwgdmFsb3JlIGRlbCBwdW50byBjaGUgc2kgdHJvdmEgYWxsJ2VzdHJlbWl0w6AgZGVsIGJhZmZvIHN1cGVyaW9yZS4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCgpgYGAKClZlcmlmaWNoaWFtbyBjaGUgbGEgcmlzcG9zdGEgdHJvdmF0YSBzaWEgY29ycmV0dGEKCmBgYHtyfQpvdXQgPC0gYm94cGxvdChpcSwgcGxvdCA9IEZBTFNFKQpvdXQKYGBgCgpJbmZhdHRpLCBpbCB2YWxvcmUgY2hlIGFiYmlhbW8gdHJvdmF0byDDqCB1Z3VhbGUgYSBxdWVsbG8gdXNhdG8gZGEgUiBwZXIgY29zdHJ1aXJlIGxhIGZpZ3VyYSwgb3Z2ZXJvIGByIG91dCRzdGF0c1s1XWAuCgojIyBDb3ZhcmlhbnphCgpDb25zaWRlcmlhbW8gb3JhIGlsIGxpdmVsbG8gZGkgZGVwcmVzc2lvbmUgbWlzdXJhdG8gZGFsIHRlc3QgQ0VTLUQuIFNvbm8gcXVpIHJpcG9ydGF0aSBpIHZhbG9yaSBzaWEgZGVsIEJESS1JSSBzaWEgZGVsIENFUy1EIG9yZGluYXRpIG5lbGxhIG1hbmllcmEgY29ycmV0dGEuCgpgYGB7cn0KYmRpIDwtIGMoCiAgMjYsIDM1LCAzMCwgMjUsIDQ0LCAzMCwgMzMsIDQzLCAyMiwgNDMsIDI0LCAxOSwgMzksICAzLCAgMCwgIDEsIDMxLCAyNSwgIDAsICAyLCAgMCwgIDAsICAwLCAyOCwgIDAsICAwLCAgMSwgIDAsICAyLCAwLCAgNywgMzUsICAwLCAgMiwgMzAsICAwLCAyNiwgIDEsICAwLCAgMCwgMzEsICAwLCAgMSwgNDEsIDM2LCAyNiwgMzUsIDMzLCAxMiwgMjgsICAxLCAyNywgMzQsIDI3LCAyMiwgIDEsICA1LCAgMywKIDEsICAzLCAgMCwgIDIsICA5LCAgMSwgIDAsICAwCikKCmNlc2QgPC0gYygKICA0NywgMzUsIDI5LCAyNSwgMzcsIDM4LCAzOCwgNDQsIDM0LCA0OCwgMTksIDI5LCAzNiwgMTYsIDEyLCA1LCAxNSwgMzgsICA5LCAxNiwgIDAsICA1LCAgNiwgMzQsICA1LCAgNywgIDIsICA4LCAgOCwgNSwgMTgsIDQ2LCAgMywgMTIsIDQxLCAgNSwgMzYsICA5LCAgNiwgIDIsIDM0LCAgNiwgMTAsIDMxLCA0NywgNDQsIDIyLCAzOSwgMTksIDI1LCAgNiwgMjgsIDI5LCAzOSwgMjcsICAwLCAxMCwgIDQsIDYsICA4LCAxMywgIDMsICA3LCAgNSwgIDYsIDEwCikKYGBgCgpJbml6aWFtbyBjb24gaWwgY3JlYXJlIHVuIGRpYWdyYW1tYSBhIGRpc3BlcnNpb25lIHVzYW5kbyBsYSBmdW56aW9uZSBgZ2dwbG90KClgLgpQcmltYSBkaSB0dXR0byBjcmVhaW1vIHVuIGRhdGEuZnJhbWUsIHBlcmNow6kgYGdncGxvdCgpYCByaWNoaWVkZSB1biBkYXRhLmZyYW1lIGluIGlucHV0LgoKYGBge3J9CmQgPC0gTlVMTApnbGltcHNlKGQpCmBgYAoKSW5pemlhbW8gY29uIGlsIHByaW1vIGxheWVzOgoKYGBge3J9CmQgJT4lIAogIGdncGxvdCgKICAgIGFlcyhiZGksIGNlc2QpCiAgKQpgYGAKCmUgcG9pIGFnZ2l1bmdpYW1vIGkgcHVudGk6CgpgYGB7cn0KZCAlPiUgCiAgZ2dwbG90KAogICAgYWVzKGJkaSwgY2VzZCkKICApICsKICBnZW9tX3BvaW50KCkKYGBgCgpJbCBkaWFncmFtbWEgYSBkaXNwZXJzaW9uZSBtb3N0cmEgY2hlIGFsbCdhdW1lbnRhcmUgZGVsIEJESS1JSSBhdW1lbnRhIGFuY2hlIGlsIENFUy1TLiBRdWVzdG8gw6ggcXVlbGxvIGNoZSBkb3ZyZW1tbyBhc3BldHRhcmNpIGluIHF1YW50byBlbnRyYW1iZSBzb25vIG1pc3VyZSBkZWxsbyBzdGVzc28gY29zdHJ1dHRvLCBsYSBkZXByZXNzaW9uZS4gTCdhc3NvY2lhemlvbmUgbm9uIMOoIHBlcmZldHRhIGUgY2nDsiDDqCBkb3Z1dG8gYWwgZmF0dG8gY2hlIG5lc3N1biBpbmRpY2F0b3JlIGVtcGlyaWNvIHJpZmxldHRlIGluIG1hbmllcmEgcGVyZmV0dGEgaWwgY29zdHJ1dHRvLiBRdWFsc2lhc2kgbWlzdXJhIGVtcGlyaWNhIMOoIGlucXVpbmF0YSBkYWxsJ19lcnJvcmUgZGkgbWlzdXJhemlvbmVfLiAgCgpJbml6aWFtbyBhIGNhbGNvbGFyZSBsYSBjb3ZhcmlhbnphOgoKXGJlZ2lue2VxdWF0aW9ufQpTKHgsIHkpID0gXGZyYWN7XHN1bV97aT0xfV5uICh4X2kgLSBcYmFye3h9KSh5X2kgLSBcYmFye3l9KX17bn0KXGVuZHtlcXVhdGlvbn0KCkNhbGNvbGlhbW8gZHVucXVlIGxhIGNvdmFyaWFuemEgdHJhIGkgcHVudGVnZ2kgQkRJLUlJIGUgQ0VTLUQ6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQoKYGBgCgpDb250cm9sbGlhbW8gdXNhbmRvIGxhIGZ1bnppb25lIGBjb3YoKWAuIChTdWdnZXJpbWVudG86IGFuY2hlIGxhIGZ1bnppb25lIGBjb3YoKWAsIGNvbWUgYHZhcigpYCwgdXNhIF9uIC0gMV8gYWwgZGVub21pbmF0b3JlKS4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCmNvdl9iZGlfY2VzZCA8LSBOVUxMCmNvdl9iZGlfY2VzZApgYGAKCklsIHZhbG9yZSBvdHRlbnV0byDDqCBkaWZmaWNpbGUgZGEgaW50ZXJwcmV0YXJlLiBJbCBzZWdubyDDqCBwb3NpdGl2bywgcXVpbmRpIHNhcHBpYW1vIGNoZSBsJ2Fzc29jaWF6aW9uZSDDqCBwb3NpdGl2YSAoYWxsJ2F1bWVudGFyZSBkaSBfeF8gYXVtZW50YSBfeV8pLiBNYSBvbHRyZSBhIHF1ZXN0byBsYSBjb3ZhcmlhbnphIG5vbiBjaSBkaWNlIGFsdHJvLiBQZXIgY2FwaXJlIGRpIHBpw7kgZG9iYmlhbW8gdXNhcmUgbGEgY29ycmVsYXppb25lLgoKIyMgQ29ycmVsYXppb25lCgpMYSBjb3JyZWxhemlvbmUgw6ggdW5hIGNvdmFyaWFuemEgc3RhbmRhcmRpenphdGEuIENhbGNvbGlhbW8gbGEgY29ycmVsYXppb25lIHRyYSBpIHB1bnRlZ2dpIEJESS1JSSBlIENFUy1EOgoKYGBge3J9CnJfYmRpX2Nlc2QgPC0gTlVMTApyX2JkaV9jZXNkCmBgYAoKQ29udHJvbGxpYW1vIHVzYW5kbyBsYSBmdW56aW9uZSBgY29yKClgLiAoU3VnZ2VyaW1lbnRvOiBpbiBxdWVzdG8gY2FzbyBub24gc2VydmUgY29ycmVnZ2VyZSBpbCBkZW5vbWluYXRvcmUuKQoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKT3BwdXJlLCBwb3NzaWFtbyBwcmltYSBzdGFuZGFyZGl6emFyZSBsZSB2YXJpYWJpbGkgZSBwb2kgY2FsY29sYXJlIGxhIGNvdmFyaWFuemEuIEluaXppYW1vIGEgZGVmaW5pcmUgdW5hIGZ1bnppb25lIGNoZSBzdGFuZGFyZGl6emEgaSB2YWxvcmkgZGVsbGEgdmFyaWFiaWxlIGluIGlucHV0OgoKYGBge3J9CnNjYWxlX3RoaXMgPC0gZnVuY3Rpb24oeCkgewogIHN0ZCA8LSBzcXJ0KHZhcih4KSoobGVuZ3RoKHgpLTEpL2xlbmd0aCh4KSkKICAoeCAtIG1lYW4oeCkpIC8gc3RkCn0KYGBgCgpgYGB7cn0Kel9iZGkgPC0gTlVMTAptZWFuKHpfYmRpKQp2YXIoel9iZGkpKjY1LzY2CmBgYAoKYGBge3J9CnpfY2VzZCA8LSBOVUxMCm1lYW4oel9jZXNkKQp2YXIoel9jZXNkKSo2NS82NgpgYGAKQWRlc3NvIGNhbGNvbG8gbGEgY292YXJpYW56YSB0cmEgbGUgdmFyaWFiaWxpIHN0YW5kYXJkaXp6YXRlOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKCmBgYAoKaWwgY2hlLCBvdnZpYW1lbnRlLCBwcm9kdWNlIGwnaW5kaWNlIGRpIGNvcnJlbGF6aW9uZS4KClNlIHR1dHRlIGxlIG9zc2VydmF6aW9uaSBzdGFubm8gc3UgdW5hIHJldHRhLCBsYSBjb3JyZWxhemlvbmUgw6ggMSBvcHB1cmUgLTEuCgpDcmVhbmRvIGkgZGF0aSBlIHN2b2xnZW5kbyBpIGNhbGNvbGksIHNpIHByb3ZpIGwnYWZmZXJtYXppb25lIHByZWNlZGVudGUuCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQoKYGBgCgo=" download="14_descr_exercises.Rmd">Download 14_descr_exercises.Rmd</a>`{=html}

\

Guarda le risposte solo dopo avere provato a rispondere a tutte le domande: 

`<a href="data:text/x-markdown;base64,LS0tCnRpdGxlOiAnRXNlcmNpemkgMTQ6IFN0YXRpc3RpY2hlIGRlc2NyaXR0aXZlJwphdXRob3I6ICJDb3JyYWRvIENhdWRlayIKb3V0cHV0OiBodG1sX2RvY3VtZW50Ci0tLQoKYGBge3Igc2V0dXAsIGluY2x1ZGU9RkFMU0V9CiMgcGxlYXNlIGRvIG5vdCBhbHRlciB0aGlzIGNvZGUgY2h1bmsKa25pdHI6Om9wdHNfY2h1bmskc2V0KGVjaG8gPSBUUlVFLCBtZXNzYWdlID0gRkFMU0UsIGVycm9yID0gVFJVRSkKYGBgCgo8IS0tIDxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+IC0tPgo8IS0tICAgYm9keXsgLS0+CjwhLS0gICBmb250LXNpemU6IDEzcHQ7IC0tPgo8IS0tIH0gLS0+CjwhLS0gPC9zdHlsZT4gLS0+CgoKTW9kaWZpY2EgaSBzZWd1ZW50aSBibG9jY2hpIGRpIGNvZGljZSBlIHBvaSBlc2VndWkgKGBrbml0YCkgY2lhc2N1biBibG9jY28gZGkgY29kaWNlIHNpbmdvbGFybWVudGUsIHVubyBkb3BvIGwnYWx0cm8uCgpgYGB7cn0KbGlicmFyeSgidGlkeXZlcnNlIikKYGBgCgoKIyMgVXNhcmUgUiBjb21lIHVuIGNhbGNvbGF0b3JlCgpOZWxsYSBjb25zb2xlLCBkaWdpdGEgbGUgc2VndWVudGkgaXN0cnV6aW9uaToKCmBgYAoxICsgMgphIDwtIDEKYiA8LSAyCmEgKyBiCmBgYAoKTG8gc3Rlc3NvIHJpc3VsdGF0byBzaSBvdHRpZW5lIG1lZGlhbnRlIGlsIHNlZ3VlbnRlIGJsb2NjbyBkaSBjb2RpY2UgaW4gcXVlc3RvIGRvY3VtZW50byBSbWQ6CgpgYGB7cn0KMSArIDIKYSA8LSAxCmIgPC0gMgphICsgYgpgYGAKCiMjIE1lZGlhCgpDb25zaWRlcmlhbW8gb3JhIGkgdmFsb3JpIEJESS1JSSBjaGUgc29ubyBzdGF0aSBkaXNjdXNzaSBuZWxsZSBkaXNwZW5zZSBlIHNvbm8gcmlwb3J0YXRpIHF1aSBkaSBzZWd1aXRvOgoKYGBge3J9CmJkaSA8LSBjKAowLCAgMCwgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMCwgIDAsICAwLCAgMSwgIDEsICAxLCAgMSwgIDEsICAxLCAgMSwgIDEsICAyLCAgMiwgIDIsICAyLCAzLCAgMywgIDMsICA1LCAgNywgIDksIDEyLCAxOSwgMjIsIDIyLCAyNCwgMjUsIDI1LCAyNiwgMjYsIDI2LCAyNywgMjcsIDI4LCAyOCwgMzAsIDMwLCAzMCwgMzEsIDMxLCAzMywgMzMsIDM0LCAzNSwgMzUsIDM1LCAzNiwgMzksIDQxLCA0MywgNDMsIDQ0CikKYGBgCgpTaSB1dGlsaXp6aSBsYSBmdW56aW9uZSBhcHByb3ByaWF0YSBwZXIgc3RhYmlsaXJlIGRpIHF1YW50aSBlbGVtZW50aSDDqCBjb21wb3N0byBpbCB2ZXR0b3JlIGBiZGlgLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKbGVuZ3RoKGJkaSkKYGBgCgpTaSB1dGlsaXp6aSBsYSBmdW56aW9uZSBhcHByb3ByaWF0YSBwZXIgdHJvdmFyZSBpbCB2YWxvcmUgZGVsbGEgc29tbWEgZGVpIHZhbG9yaSBkZWwgdmV0dG9yZSBgYmRpYC4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnN1bShiZGkpCmBgYAoKTGEgbWVkaWEgw6ggZGF0YSBkYWxsYSBzb21tYSBkZWkgdmFsb3JpIGRpdmlzYSBwZXIgaWwgbnVtZXJvIGRlaSBjYXNpLiBNZWRpYW50ZSBsZSBkdWUgZnVuemlvbmkgdXRpbGl6emF0ZSBzb3ByYSwgc2kgY2FsY29saSBsYSBtZWRpYToKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnN1bShiZGkpIC8gbGVuZ3RoKGJkaSkKYGBgCgpTaSBjb25mcm9udGkgaWwgcmlzdWx0YXRvIG90dGVudXRvIGNvbiBxdWVsbG8gcHJvZG90dG8gZGFsbGEgZnVuemlvbmUgYG1lYW4oKWA6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQptZWFuKGJkaSkKYGBgCgojIyBJc3RvZ3JhbW1hCgpQb25pYW1vY2kgb3JhIGlsIHByb2JsZW1hIGRpIGNyZWFyZSB1biBpc3RvZ3JhbW1hIGNvbiBpIHZhbG9yaSBgYmRpYC4gUGVyIHNlbXBsaWNpdMOgIHVzZXJlbW8gbGEgZnVuemlvbmUgYGhpc3QoKWAgZGkgUiBiYXNlIC0tIGluIHNlZ3VpdG8gY29zdHJ1aXJlbW8gbCdpc3RvZ3JhbW1hIGNvbiBgZ2dwbG90KClgLiBJbml6aWFtbyBhZCBlc2FtaW5hcmUgaWwgZmlsZSBkaSBoZWxwOgoKYGBge3J9Cj9oaXN0CmBgYAoKUGVyIGkgbm9zdHJpIHNjb3BpLCBkb2JiaWFtbyBjYXBpcmUgY29tZSBwYXNzYXJlIGlsIHZldHRvcmUgYGJkaWAgaW4gaW5wdXQgYSBgaGlzdCgpYC4gSWwgZmlsZSBkaSBoZWxwIGNpIGRpY2UgY2hlIGxhIHNpbnRhc3NpIMOoIGBoaXN0KGJkaSlgLiAKCk1hIHF1ZXN0byBub24gw6ggc3VmZmljaWVudGUsIGluIHF1YW50byB1biBpc3RvZ3JhbW1hIHB1w7IgZXNzZXJlIGNvc3RydWl0byBpbiBtb2x0aSBtb2RpIGRpdmVyc2ksIHBlciBjdWkgZG9iYmlhbW8gY2FwaXJlIGNvbWUgbG8gY29zdHJ1aXNjZSBgaGlzdCgpYCBkaSBkZWZhdWx0IChvdnZlcm8sIHNlbnphIGFsdHJlIHNwZWNpZmljYXppb25pKSBlIHNlIHF1ZXN0byByaXNvbHZlIGlsIF9fbm9zdHJvX18gcHJvYmxlbWEuICAKCk5lbCBmaWxlIGRpIGhlbHAsIGwnYXJnb21lbnRvIGBmcmVxYCB2aWVuZSBkZXNjcml0dG8gY29tZSBzZWd1ZToKCj4gZnJlcQlsb2dpY2FsOyBpZiBUUlVFLCB0aGUgaGlzdG9ncmFtIGdyYXBoaWMgaXMgYSByZXByZXNlbnRhdGlvbiBvZiBmcmVxdWVuY2llcywgdGhlIGNvdW50cyBjb21wb25lbnQgb2YgdGhlIHJlc3VsdDsgaWYgRkFMU0UsIHByb2JhYmlsaXR5IGRlbnNpdGllcywgY29tcG9uZW50IGRlbnNpdHksIGFyZSBwbG90dGVkIChzbyB0aGF0IHRoZSBoaXN0b2dyYW0gaGFzIGEgdG90YWwgYXJlYSBvZiBvbmUpLgoKRGEgY2nDsiBkZWR1Y2lhbW8gY2hlIGRvYmJpYW1vIHBvcnJlIGBmcmVxID0gRkFMU0VgIHBlciBvdHRlbmVyZSB1biBpc3RvZ3JhbW1hIGNoZSBhYmJpYSB1bidhcmVhIHRvdGFsZSB1Z3VhbGUgYSAxLCBvdnZlcm8gcGVyIG90dGVuZXJlIHF1ZWxsbyBjaGUgY2hpZWRlIGlsIHByb2JsZW1hIHN1Y2Nlc3Npdm8uCgpVdGlsaXp6YW5kbyBsYSBmdW56aW9uZSBgaGlzdCgpYCBzaSBjcmVpIHVuIGlzdG9ncmFtbWEgdGFsZSBjaGUgbGEgc29tbWEgZGVsbGUgYXJlZSBkZWxsZSBiYXJyZSBkZWxsJ2lzdG9ncmFtbWEgc2lhIHVndWFsZSBhIDE6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpoaXN0KAogIGJkaSwgCiAgZnJlcSA9IEZBTFNFLCAKICBtYWluID0gIklzdG9ncmFtbWEgZGVpIHZhbG9yaSBCREktSUkiLAogIHhsYWIgPSAiQkRJLUlJIiwKICB5bGFiID0gIkRlbnNpdMOgIikKYGBgCgpFc2FtaW5pYW1vIGkgZGF0aSBjaGUgc29ubyBzdGF0aSB1dGlsaXp6YXRpIGRhbGxhIGZ1bnppb25lIGBoaXN0KClgIHBlciBjcmVhcmUgbCdpc3RvZ3JhbW1hLiAKCmBgYHtyfQpvdXQgPC0gaGlzdChiZGksIGZyZXEgPSBGQUxTRSwgcGxvdCA9IEZBTFNFKQpvdXQKYGBgCgpEYWwgZmlsZSBkaSBoZWxwIGRlbGxhIGZ1bnppb25lIHNjb3ByaWFtbyBjaGUsIGRpIGRlZmF1bHQsIGwnYXJnb21lbnRvIGByaWdodGAgw6ggcG9zdG8gdWd1YWxlIGEgYFRSVUVgLiBRdWVzdG8gc2lnbmlmaWNhIGNoZSBgaGlzdCgpYCB1dGlsaXp6YSAoZGkgZGVmYXVsdCkgaW50ZXJ2YWxsaSBjaGl1c2kgYSBkZXN0cmEgZSBhcGVydGkgYSBzaW5pc3RyYTogKF0uIEluIGFsdHJlIHBhcm9sZSwgdW4gdmFsb3JlIGNoZSBjb2luY2lkZSBjb24gaWwgbGltaXRlIGluZmVyaW9yZSBzYXLDoCBlc2NsdXNvIGRhbGwnaW50ZXJ2YWxsbywgbWVudHJlIHVuIHZhbG9yZSBjaGUgY29pbmNpZGUgY29uIGlsIGxpbWl0ZSBzdXBlcmlvcmUgc2Fyw6AgaW5jbHVzbyBuZWxsJ2ludGVydmFsbG8uCgpMYSBmdW56aW9uZSBgaGlzdCgpYCBoYSBkZWNpc28gZGkgdXRpbGl6emFyZSBpIGxpbWl0aSBkZWdsaSBpbnRlcnZhbGxpIHNwZWNpZmljYXRpIGRhICRicmVha3MgLS0gcXVlc3RvIHNpIHB1w7IgY2FtYmlhcmUsIG1hIHBlciBvcmEgbm9uIGxvIGZhY2NpYW1vLgoKRXNhbWluaWFtbyBpbCBzZWNvbmRvIGludGVydmFsbG8sIG92dmVybyAoNSwgMTBdLiBDaGllZGlhbW9jaSBsYSBzZWd1ZW50ZSBkb21hbmRhOiBxdWFudGkgdmFsb3JpIGRlbCB2ZXR0b3JlIGBiZGlgIHNvbm8gY29tcHJlc2kgbmVsbCdpbnRlcnZhbGxvICg1LCAxMF0/ICAKClBlciByaXNwb25kZXJlIGEgcXVlc3RhIGRvbWFuZGEgZG9iYmlhbW8gZXNhbWluYXJlIGxhIHNlcXVlbnphIG9yZGluYXRhIGRlaSB2YWxvcmkgYGJkaWAuIFNlIGNpIGZvY2FsaXp6aWFtbyBzdWkgdmFsb3JpIGNoZSBjaSBpbnRlcmVzc2FubyAoLi4uIDMgIDUgIDcgIDkgMTIgLi4uKSwgYWxsb3JhIHZlZGlhbW8gY2hlLCB0cmEgaSBwb3NzaWJpbGkgY2FuZGlkYXRpIGlsIHZhbG9yZSA1IGNvaW5jaWRlIGNvbiBpbCBsaW1pdGUgaW5mZXJpb3JlIGRlbGwnaW50ZXJ2YWxsby4gTWEsIGRhdG8gY2hlIGwnaW50ZXJ2YWxsbyDDqCBhcGVydG8gYSBzaW5pc3RyYSwgaWwgdmFsb3JlIDUgbm9uIHNhcsOgIGluY2x1c28gbmVsbCdpbnRlcnZhbGxvLiAgUXVpbmRpIHJlc3Rhbm8gc29sbyBkdWUgdmFsb3JpIHBvc3NpYmlsaTogNyBlIDkuIExhIGZyZXF1ZW56YSBhc3NvbHV0YSBhc3NvY2lhdGEgYWwgc2Vjb25kbyBpbnRlcnZhbGxvIMOoIGR1bnF1ZSBwYXJpIGEgMi4gUXVlc3RvIMOoIGluZGljYXRvIGRhbCBzZWNvbmRvIHZhbG9yZSBkaSAkY291bnRzLgoKU2kgY2FsY29saSBvcmEgbGEgZGVuc2l0w6AgZGVsbGEgc2Vjb25kYSBiYXJyYSBkZWxsJ2lzdG9ncmFtbWEuIChTdWdnZXJpbWVudG86IHJpY29yZGlhbW8gY2hlIGwnYXJlYSBkZWxsYSBzZWNvbmRhIGJhcnJhIGRlbGwnaXN0b2dyYW1tYSDDqCB1Z3VhbGUgYWxsYSBmcmVxdWVuemEgcmVsYXRpdmEgZGVsbGEgc2Vjb25kYSBjbGFzc2UgZSBjaGUgbGEgZGVuc2l0w6AgZGVsbGEgc2Vjb25kYSBiYXJyYSDDqCBzZW1wbGljZW1lbnRlIGwnYWx0ZXp6YSBkZWxsYSBiYXJyYSkuCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQooMiAvIGxlbmd0aChiZGkpKSAvIDUKYGBgCgpTaSBwdcOyIHZlZGVyZSBjaGUgaWwgdmFsb3JlIHRyb3ZhdG8gY29pbmNpZGUgY29uIGlsIHNlY29uZG8gdmFsb3JlIGRpICRkZW5zaXR5LiAKClJpcGV0aWFtbyBsYSBwcm9jZWR1cmEgcGVyIGwndWx0aW1hIGJhcnJhIGRlbGwnaXN0b2dyYW1tYS4gTGEgZGVuc2l0w6AgZGVsbCd1bHRpbWEgYmFycmEgZGVsbCdpc3RvZ3JhbW1hIMOoCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQooNCAvIGxlbmd0aChiZGkpKSAvIDUKYGBgCgpRdWVzdG8gcmlzdWx0YXRvIGNvaW5jaWRlIGNvbiBsJ3VsdGltbyB2YWxvcmUgZGkgJGRlbnNpdHkuCgojIyBWYXJpYW56YQoKTGEgZm9ybXVsYSBkZWxsYSB2YXJpYW56YSDDqAoKXGJlZ2lue2VxdWF0aW9ufQpWKHgpID0gXGZyYWN7XHN1bV97aT0xfV5uICh4IC0gXGJhcnt4fSleMn17bn0KXGVuZHtlcXVhdGlvbn0KCkNhbG9saWFtbyBsYSB2YXJpYW56YSBwZXIgaSB2YWxvcmkgYGJkaWAuIEluaXppYW1vIGEgdHJvdmFyZSBpbCBkZW5vbWluYXRvcmU6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpsZW5ndGgoYmRpKQpgYGAKCkFsIG51bWVyYXRvcmUgYWJiaWFtbyBsYSBxdWFudGl0w6AgJFxiYXJ7eH0kLCBvdnZlcm8gbGEgbWVkaWEgZGVpIHZhbG9yaSBgYmRpYC4gUXVlc3RvIHZhbG9yZSDDqCBnacOgIHN0YXRvIHRyb3ZhdG8gc29wcmEuICBRdWkgbG8gY2hpYW1lcmVtbyBgYXZnX2JkaWA6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQphdmdfYmRpIDwtIG1lYW4oYmRpKQphdmdfYmRpCmBgYAoKTGEgZm9ybXVsYSBjaSBkaWNlIGNoZSBkb2JiaWFtbyBzb3R0cmFyZSBsYSBtZWRpYSBkYSBjaWFzY3VuIHZhbG9yZSBkZWwgdmV0dG9yZTogJHggLSBcYmFye3h9JC4gQ2nDsiBzaWduaWZpY2EgY2hlIGRvYmJpYW1vIGVzZWd1aXJlIGxhIGRpZmZlcmVuemEgYGJkaVtpXSAtIGF2Z19iZGlgIHBlciBjaWFzY3VuIGVsZW1lbnRvIGRlbCB2ZXR0b3JlLCBjb24gX2lfIGNoZSB2YSBkYSAxIGEgNjYuIFBlciBpbCBwcmltbyBlbGVtZW50byBkaSBgYmRpYCB0YWxlIGRpZmZlcmVuemEgc2Fyw6AKCmBgYHtyfQpiZGlbMV0gLSBhdmdfYmRpCmBgYAoKZSBjb3PDrCB2aWEgcGVyIHR1dHRpIGdsaSBlbGVtZW50aSBkZWwgdmV0dG9yZSBgYmRpYC4gU2FwcGlhbW8gY2hlIHBvc3NpYW1vIGVzZWd1aXJlIHF1ZXN0YSBvcGVyYXppb25lIGFsZ2VicmljYSBkaXJldHRhbWVudGUgc3VsIHZldHRvcmUgYGJkaWAuICBMZSBvcGVyYXppb25pIGFsZ2VicmljaGUgc3VpIHZldHRvcmkgdmVuZ29ubyBlc2VndWl0ZSBfX2VsZW1lbnRvIHBlciBlbGVtZW50b19fLCBpbCBjaGUgc2lnbmlmaWNhIGNoZSwgc2UgbCdvcGVyYXppb25lIGFsZ2VicmljYSDDqCBgLSBhdmdfYmRpYCwgYWxsb3JhIHRhbGUgb3BlcmF6aW9uZSB2ZXJyw6AgZXNlZ3VpdGEgcGVyIGNpYXNjdW5vIGRlZ2xpIGVsZW1lbnRpIGRpIGBiZGlgLCBpbCBjaGUgw6ggZXNhdHRhbWVudGUgcXVlbGxvIGNoZSB2aWVuZSBlc3ByZXNzbyBpbiBxdWVzdG8gZnJhbW1lbnRvIGRlbGwnZXF1YXppb25lIHByZWNlZGVudGU6ICR4IC0gXGJhcnt4fSQuIENoaWFtaWFtbyBgZGlmX2JkaWAgaWwgdmV0dG9yZSBjaGUgY29udGllbmUgcXVlc3RlIGRpZmZlcmVuemUgCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpkaWZfYmRpIDwtIGJkaSAtIGF2Z19iZGkKZGlmX2JkaQpgYGAKCkRhdG8gY2hlIGlsIHZldHRvcmUgYGJkaWAgw6ggY29tcG9zdG8gZGEgNjYgZWxlbWVudGksIHNlIHNvdHRyYWlhbW8gMTQuOTM5Mzk0IGRhIGNpYXNjdW4gZWxlbWVudG8gZGVsIHZldHRvcmUsIG90dGVycmVtbyB1biB2ZXR0b3JlIGBkaWZfYmRpYCBhbmNoJ2Vzc28gY29zdGl0dWl0byBkYSA2NiBlbGVtZW50aSwgY29tZSBpbmRpY2F0byBzb3ByYS4KCkxhIGZvcm11bGEgZGVsbGEgdmFyaWFuemEgY2kgZGljZSBjaGUgY2lhc2N1biBlbGVtZW50byBkZWwgdmV0dG9yZSBgZGlmX2JkaWAgdmEgaW5uYWx6YXRvIGFsIHF1YWRyYXRvOiAkKHggLSBcYmFye3h9KV4yJC4gRmFjY2lhbW9sbyBpbiBSIGRlZmluZW5kbyBpbCB2ZXR0b3JlIGBkaWZfc3FfYmRpYC4gTCdpbm5hbHphbWVudG8gYSBwb3RlbnphIMOoIHVuJ2FsdHJhIG9wZXJhemlvbmUgYXJpdG1ldGljYSwgcGVyIGN1aSBwcm9jZWRpYW1vIGNvbWUgcHJpbWEgcGVyIG90dGVuZXJlIHVuIHZldHRvcmUgYW5jaCdlc3NvIGRpIDY2IGVsZW1lbnRpLiBJbiBSLCBsYSBzaW50YXNzaSBwZXIgaW5hbHphcmUgYWwgcXVhZHJhdG8gw6ggYF4yYC4KCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCmRpZl9zcV9iZGkgPC0gZGlmX2JkaV4yCmRpZl9zcV9iZGkKYGBgCgpBdmVuZG8gdHJvdmF0byBpbCB2ZXR0b3JlIGNoZSBjb250aWVuZSBnbGkgc2NhcnRpIGRhbGxhIG1lZGlhIGlubmFsemF0aSBhbCBxdWFkcmF0bywgbGEgZm9ybXVsYSBjaSBkaWNlIGNoZSBkb2JiaWFtbyBjYWxjb2xhcmUgbGEgbWVkaWEgZGkgcXVlc3RpIDY2IG51bWVyaS4gVHJvdmlhbW9sYToKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnZhcl9iZGkgPC0gbWVhbihkaWZfc3FfYmRpKQp2YXJfYmRpCmBgYAoKVXNpYW1vIG9yYSBsYSBmdXppb25lIGB2YXIoKWAgcGVyIHZlcmlmaWNhcmUgY2hlIGxhIGZvcm11bGEgZGVsbGEgdmFyaWFuemEgc2lhIHN0YXRhIGltcGxlbWVudGF0YSBpbiBtb2RvIGNvcnJldHRvIGZhY2VuZG8gcXVlbGxvIGNoZSBhYmJpYW1vIGZhdHRvIHNvcHJhLiBEb2JiaWFtbyBwZXLDsiBzdGFyZSBhdHRlbnRpIGRpIHVuYSBjb3NhLiBMYSBmdW56aW9uZSBgdmFyKClgIGNhbGNvbGEgbGEgdmFyaWFuemEgZGkgdW5hIHZhcmlhYmlsZS4gTWEsIHBlciBtb3RpdmkgY2hlIHZlZHJlbW8gaW4gc2VndWl0bywgdXNhICRuLTEkIGFsIGRlbm9taW5hdG9yZS4gUGVyIGN1aSBkb2JiaWFtbyBjb3JyZWdnZXJlIHF1ZXN0byBhc3BldHRvIHBlciBwb3RlcmUgY29uZnJvbnRhcmUgaWwgcmlzdWx0YXRvIHByb2RvdHRvIGRhIGB2YXIoKWAgY29uIHF1ZWxsbyBjaGUgYWJiaWFtbyB0cm92YXRvIG5vaToKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnZhcl9iZGkgPC0gdmFyKGJkaSkgKiA2NS82Ngp2YXJfYmRpCmBgYAoKSWwgcmlzdWx0YXRvIHByb2RvdHRvIGRhIGB2YXIoKWAgKGRvcG8gYXZlcmUgY29ycmV0dG8gaWwgZGVub21pbmF0b3JlKSBjaSBkaWNlIGNoZSBhYmJpYW1vIGltcGxlbWVudGF0byBjb3JyZXR0YW1lbnRlIGluIFIgbGEgZm9ybXVsYSBkZWxsYSB2YXJpYW56YS4KCiMjIERldmlhemlvbmUgc3RhbmRhcmQKClNpIGNhbGNvbGkgbGEgZGV2aWF6aW9uZSBzdGFuZGFyZCBkZWwgdmV0dG9yZSBgYmRpYDoKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnNkX2JkaSA8LSBzcXJ0KHZhcl9iZGkpCnNkX2JkaQpgYGAKCiMjIEludGVycHJldGF6aW9uZSBkZWxsYSBkZXZpYXppb25lIHN0YW5kYXJkCgpMYSBkZXZpYXppb25lIHN0YW5kYXJkIHB1w7IgZXNzZXJlIGludGVycHJldGF0YSBkaWNlbmRvIGNoZSDDqCBzaW1pbGUgYWxsYSBtZWRpYSBkZWwgdmFsb3JlIGFzc29sdXRvIGRlZ2xpIHNjYXJ0aSBkYWxsYSBtZWRpYS4gQ2FsY29saWFtbyBkdW5xdWUgbGEgbWVkaWEgZGVsIHZhbG9yZSBhc3NvbHV0byBkZWdsaSBzY2FydGkgZGFsbGEgbWVkaWEgcGVyIGBiZGlgLiBQZXIgY2FsY29sYXJlIGlsIHZhbG9yZSBhc3NvbHV0byB1c2lhbW8gbGEgZnVuemlvbmUgYGFicygpYC4KCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQptZWFuKGFicyhiZGkgLSBtZWFuKGJkaSkpKQpgYGAKClZlZGlhbW8gY2hlLCBpbiBlZmZldHRpLCBsYSBtZWRpYSBkZWwgdmFsb3JlIGFzc29sdXRvIGRlZ2xpIHNjYXJ0aSBkYWxsYSBtZWRpYSDDqCBtb2x0byBzaW1pbGUgYWxsYSBkZXZpYXppb25lIHN0YW5kYXJkLiBRdWVzdG8gc2lnbmlmaWNhIGNoZSBsYSBkZXZpYXppb25lIHN0YW5kYXJkIHB1w7IgZXNzZXJlIGludGVzYSBjb21lIGxhIF9fZGlzdGFuemFfXyBtZWRpYSB0cmEgY2lhc2N1biBwdW50byBkZWxsYSBkaXN0cmlidXppb25lIGUgaWwgYmFyaWNlbnRybyBkZWxsYSBkaXN0cmlidXppb25lIChvdnZlcm8sIGxhIG1lZGlhKS4gCgojIyBRdWFudGlsaQoKU2kgdHJvdmkgaWwgdGVyem8gcXVhcnRpbGUgZGVsbGEgZGlzdHJpYnV6aW9uZSBkZWkgdmFsb3JpIGBiZGlgLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKcXVhbnRpbGUoYmRpLCBwcm9iID0gMC43NSkKYGBgCgpDaSBhc3BldHRpYW1vIGNoZSwgaW4gYmFzZSBhbGxhIGRlZmluaXppb25lIGRpIHF1YXJ0aWxlLCBzb3R0byBpbCB0ZXJ6byBxdWFyaWxlIHNpIHNpdHVpbm8gaWwgNzUlIGRlaSB2YWxvcmkgZGVsbGEgZGlzdHJpYnV6aW9uZS4gTmVsIG5vc3RybyBjYXNvIGFiYmlhbW8gNjYgdmFsb3JpIGUgaWwgNzUlIGRpIDY2IMOoCgpgYGB7cn0KNjYgKiAwLjc1CmBgYAoKb3Z2ZXJvIDUwIHZhbG9yaS4gIElsIHRlcnpvIHF1YXJ0aWxlIMOoIDI5LjUuIAoKQ29udGlhbW8gZHVucXVlIHF1YW50aSBlbGVtZW50aSBkZWwgdmV0dG9yZSAgYGJkaWAgaGFubm8gdW4gdmFsb3JlIG1pbm9yZSBkaSAyOS41IHBlciB2ZXJpZmljYXJlIHNlIGlsIHJpc3VsdGF0byBmb3JuaXRvIGRhIFIgaGEgc2Vuc28uCgooU3VnZ2VyaW1lbnRvLiBQZXIgcmlzb2x2ZXJlIHF1ZXN0byBwcm9ibGVtYSwgcG9zc2lhbW8gdXRpbGl6emFyZSBsJ2VzcHJlc3Npb25lIGBiZGkgPCAyOS41YC4gUXVlc3RhIMOoIHVuYSBwcm9wb3NpemlvbmUgbG9naWNhIGNoZSBzaWduaWZpY2E6ICJjaWFzY3VuIGVsZW1lbnRvIGRlbCB2ZXR0b3JlIGBiZGlgIHNvZGRpc2ZhIGxhIGNvbmRpemlvbmUgYDwgMjAuNWAiLiBRdWVzdGEgcHJvcG9zaXppb25lIHB1w7IgZXNzZXJlIFZFUkEgbyBGQUxTQSBwZXIgY2lhc2N1biBlbGVtZW50byAgZGkgYGJkaWAuIEluZmF0dGksIHNlIHNjcml2aWFtbyBgYmRpIDwgMjkuNWAsIFIgcml0b3JuYSB1biB2ZXR0b3JlIGRpIG9yZGluZSA2NiwgaSBjdWkgZWxlbWVudGkgaGFubm8gbW9kYWxpdMOgIFRSVUUgbyBGQUxTRS4gUXVlc3RvIHZldHRvcmUgY2kgZGljZSwgcGVyIGNpYXNjdW4gZWxlbWVudG8gZGkgYGJkaWAsIHNlIGxhIGNvbmRpemlvbmUgYDwgMjkuNWAgw6ggc29kZGlzZmF0dGEgb3BwdXJlIG5vLiBJbCB2ZXR0b3JlIHJpc3VsdGF0ZSBjb250aWVuZSB1bmEgdmFyaWFiaWxlIF9fYm9vbGVhbmFfXywgb3Z2ZXJvIHVuYSB2YXJpYWJpbGUgY2hlIGFzc3VtZSB2YWxvcmkgYm9vbGVhbmksIGNpb8OoIFZlcm98RmFsc28sIFRydWV8RmFsc2UsIG8gMXwwLiBUUlVFIHZhbGUgMSBlIEZBTFNFIHZhbGUgMC4gUG9zc2lhbW8gZHVucXVlIGVzZWd1aXJlIGRlbGxlIG9wZXJhemlvbmkgYXJpdG1ldGljaGUgc3UgdGFsaSB2YWxvcmkgYm9vbGVhbmkuIFBlciBlc2VtcGlvLCBwZXIgdHJvdmFyZSBpbCBudW1lcm8gZGkgdm9sdGUgbmVsbGUgcXVhbGkgbGEgY29uZGl6aW9uZSBgPCAyOS41YCDDqCBzb2RkaXNmYXR0YSwgYmFzdGEgc29tbWFyZSBpIHZhbG9yaSBib29sZWFuaSBkZWwgdmV0dG9yZSBjaGUgYWJiaWFtbyB0cm92YXRvLikKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCnN1bShiZGkgPCAyOS41KSAvIGxlbmd0aChiZGkpCmBgYApOb24gbWFsZSEgQWJiaWFtbyB1biBudW1lcm8gX19maW5pdG9fXyBkaSB2YWxvcmksIGR1bnF1ZSBub24gcG9zc2lhbW8gb3R0ZW5lcmUgZXNhdHRhbWVudGUgdW4gcmlzdWx0YXRvIHBhcmkgYWwgNzUlLiBNYSBjaSBhbmRpYW1vIG1vbHRvIHZpY2luby4KCiMjIEJveCBvbG90CgpDb3N0cnVpYW1vIG9yYSB1biBib3gtcGxvdCBjb24gaSB2YWxvcmkgYGJkaWAuIMOIIHN1ZmZpY2llbnRlIHVzYXJlIGxhIGZ1bnppb25lIGBib3hwbG90KClgLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKYm94cGxvdChiZGkpCmBgYApRdWkgbm9uIGMnw6ggbW9sdG8gZGkgaW50ZXJlc3NhbnRlIGNoZSBwb3NzaWFtbyBmYXJlLCBkYXRvIGNoZSDDqCBjaGlhcm8gY2hlIGlsIHZhbG9yZSBkZWxsJ3VuaWNvICJiYWZmbyIgKHNlZ21lbnRvISkgZGVsIGJveC1wbG90IMOoIHVndWFsZSBhbCBtYXNzaW1vIGRlbGxhIGRpc3RyaWJ1emlvbmU6CgpgYGB7cn0KbWF4KGJkaSkKYGBgCgpQZXIgcmVuZGVyZSBwacO5IGludGVyZXNzYW5lIGlsIHByb2JsZW1hLCBjb25zaWRlcmlhbW8gdW5hIGRpdmVyc2EgZGlzdHJpYnV6aW9uZSBuZWxsYSBxdWFsZSBjaSBzb25vIGFsY3VuaSB2YWxvcmkgYW5vbWFsaS4gSW1tYWdpbmlhbW8gZGkgYXZlcmUgMzAgdmFsb3JpIGVzdHJhdHRpIGEgY2FzbyBkYWxsYSBkaXN0cmlidXppb25lIGRlbCBxdW96aWVudGUgZGkgaW50ZWxsaWdlbnphLiBBIHRhbGkgMzAgdmFsb3JpIGNpIGFnZ2l1bmdpYW1vIGR1ZSB2YWxvcmkgY2hlIHNvbm8gcGnDuSBhbHRpIGRpIHF1ZWxsaSBjaGUgc2kgaW5jb250cmFubyAibm9ybWFsbWVudGUiICgxNjAsIDE2NSkuCgpOZWxsZSBpc3RydXppb25pIHNlZ3VlbnRpLCBgc2V0LnNlZWQoMTIzKWAgY29uc2VudGUgbGEgcmlwcm9kdWNpYmlsaXTDoCBkZWkgcmlzdWx0YXRpLiBMYSBmdW56aW9uZSBgcm5vcm0oMzAsIDEwMCwgMTUpYCBwcmVuZGUgMzAgdmFsb3JpIGEgY2FzbyBkYWxsYSBwb3BvbGF6aW9uZSBkaSB2YWxvcmkgZGVsIHF1b3ppZW50ZSBkaSBpbnRlbGxpZ2VuemEgKHZlZHJlbW8gaW4gc2VndWl0byBjb21lIGkgdmFsb3JpIGRlbCBxdW96aWVudGUgZGkgaW50ZWxsaWdlbnphIHNlZ3Vvbm8gdW5hIGRldGVybWluYXRhIGRpc3RyaWJ1emlvbmUgdGVvcmljYSBkZXR0YSBub3JtYWxlIG8gZ2F1c3NpYW5hIGRpIG1lZGlhIDEwMCBlIGRldmlhemlvbmUgc3RhbmRhcmQgMTUpLiBMYSBmdW56aW9uZSBgcm91bmRgIGVsaW1pbmEgbGEgY29tcG9uZW50ZSBkZWNpbWFsZSwgaW4gcXVhbnRvIGlsIHF1b3ppZW50ZSBkaSBpbnRlbGxpZ2VuemEgw6ggdW4gbnVtZXJvIGludGVyby4gTGEgZnVuemlvbmUgYGMoKWAgY3JlYSB1biB2ZXR0b3JlIG5lbCBxdWFsZSBhZ2dpdW5naWFtbyBpIGR1ZSBlbGVtZW50aSBjaGUgYWJiaWFtbyBzcGVjaWZpY2F0byAoMTYwLCAxNjUpIGFpIDMwIGNyZWF0aSBkYSBgcm5vcm0oMzAsIDEwMCwgMTUpYDoKCmBgYHtyfQpzZXQuc2VlZCgxMjMpCmlxIDwtIGMocm91bmQocm5vcm0oMzAsIDEwMCwgMTUpKSwgMTYwLCAxNjUpCmlxCmBgYAoKQ3JlYWlhbW8gaWwgYm94LXBsb3QgcGVyIGkgMzIgdmFsb3JpIGRlbGxhIHZhcmlhYmlsZSBgaXFgOgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKYm94cGxvdChpcSkKYGBgCgpPcmEgaWwgImJhZmZvIHN1cGVyaW9yZSIgbm9uIGNvaW5jaWRlIGNvbiBpbCBtYXNzaW1vIGRlbGxhIGRpc3RyaWJ1emlvbmUuIFNpIHRyb3ZpIGlsIHZhbG9yZSBkZWwgcHVudG8gY2hlIHNpIHRyb3ZhIGFsbCdlc3RyZW1pdMOgIGRlbCBiYWZmbyBzdXBlcmlvcmUuCgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQojIGRvYmJpYW1vIHRyb3ZhcmUgaWwgcGnDuSBncmFuZGUgdmFsb3JlIGlxIGNoZSDDqCBtaW5vcmUgZGkgUTMgKyAxLjUgSVFSLCBvdnZlcm8gMTQyLjYyNQpxdWFudGlsZShpcSwgcHJvYnMgPSAwLjc1KSArIDEuNSAqIElRUihpcSkKIyBkb2JiaWFtbyBwb2kgb3JkaW5hcmUgaSB2YWxvcmkgaXEgaW4gb3JkaW5lIGNyZXNjZW50ZQpzb3J0KGlxKQojIGRhIGN1aSBzaSBkZWR1Y2UgY2hlIGlsIHZhbG9yZSBwacO5IGdyYW5kZSBkaSBpcSBjaGUgw6ggbWlub3JlIGRpIDE0Mi42MjUgw6ggMTI3CmBgYAoKVmVyaWZpY2hpYW1vIGNoZSBsYSByaXNwb3N0YSB0cm92YXRhIHNpYSBjb3JyZXR0YQoKYGBge3J9Cm91dCA8LSBib3hwbG90KGlxLCBwbG90ID0gRkFMU0UpCm91dApgYGAKCkluZmF0dGksIGlsIHZhbG9yZSBjaGUgYWJiaWFtbyB0cm92YXRvIMOoIHVndWFsZSBhIHF1ZWxsbyB1c2F0byBkYSBSIHBlciBjb3N0cnVpcmUgbGEgZmlndXJhLCBvdnZlcm8gYHIgb3V0JHN0YXRzWzVdYC4KCiMjIENvdmFyaWFuemEKCkNvbnNpZGVyaWFtbyBvcmEgaWwgbGl2ZWxsbyBkaSBkZXByZXNzaW9uZSBtaXN1cmF0byBkYWwgdGVzdCBDRVMtRC4gU29ubyBxdWkgcmlwb3J0YXRpIGkgdmFsb3JpIHNpYSBkZWwgQkRJLUlJIHNpYSBkZWwgQ0VTLUQgb3JkaW5hdGkgbmVsbGEgbWFuaWVyYSBjb3JyZXR0YS4KCmBgYHtyfQpiZGkgPC0gYygKICAyNiwgMzUsIDMwLCAyNSwgNDQsIDMwLCAzMywgNDMsIDIyLCA0MywgMjQsIDE5LCAzOSwgIDMsICAwLCAgMSwgMzEsIDI1LCAgMCwgIDIsICAwLCAgMCwgIDAsIDI4LCAgMCwgIDAsICAxLCAgMCwgIDIsIDAsICA3LCAzNSwgIDAsICAyLCAzMCwgIDAsIDI2LCAgMSwgIDAsICAwLCAzMSwgIDAsICAxLCA0MSwgMzYsIDI2LCAzNSwgMzMsIDEyLCAyOCwgIDEsIDI3LCAzNCwgMjcsIDIyLCAgMSwgIDUsICAzLAogMSwgIDMsICAwLCAgMiwgIDksICAxLCAgMCwgIDAKKQoKY2VzZCA8LSBjKAogIDQ3LCAzNSwgMjksIDI1LCAzNywgMzgsIDM4LCA0NCwgMzQsIDQ4LCAxOSwgMjksIDM2LCAxNiwgMTIsIDUsIDE1LCAzOCwgIDksIDE2LCAgMCwgIDUsICA2LCAzNCwgIDUsICA3LCAgMiwgIDgsICA4LCA1LCAxOCwgNDYsICAzLCAxMiwgNDEsICA1LCAzNiwgIDksICA2LCAgMiwgMzQsICA2LCAxMCwgMzEsIDQ3LCA0NCwgMjIsIDM5LCAxOSwgMjUsICA2LCAyOCwgMjksIDM5LCAyNywgIDAsIDEwLCAgNCwgNiwgIDgsIDEzLCAgMywgIDcsICA1LCAgNiwgMTAKKQpgYGAKCkluaXppYW1vIGNvbiBpbCBjcmVhcmUgdW4gZGlhZ3JhbW1hIGEgZGlzcGVyc2lvbmUgdXNhbmRvIGxhIGZ1bnppb25lIGBnZ3Bsb3QoKWAuClByaW1hIGRpIHR1dHRvIGNyZWFpbW8gdW4gZGF0YS5mcmFtZSwgcGVyY2jDqSBgZ2dwbG90KClgIHJpY2hpZWRlIHVuIGRhdGEuZnJhbWUgaW4gaW5wdXQuCgpgYGB7cn0KZCA8LSBkYXRhLmZyYW1lKAogIGJkaSwgY2VzZAopCmdsaW1wc2UoZCkKYGBgCgpJbml6aWFtbyBjb24gaWwgcHJpbW8gbGF5ZXM6CgpgYGB7cn0KZCAlPiUgCiAgZ2dwbG90KAogICAgYWVzKGJkaSwgY2VzZCkKICApCmBgYAoKZSBwb2kgYWdnaXVuZ2lhbW8gaSBwdW50aToKCmBgYHtyfQpkICU+JSAKICBnZ3Bsb3QoCiAgICBhZXMoYmRpLCBjZXNkKQogICkgKwogIGdlb21fcG9pbnQoKQpgYGAKCklsIGRpYWdyYW1tYSBhIGRpc3BlcnNpb25lIG1vc3RyYSBjaGUgYWxsJ2F1bWVudGFyZSBkZWwgQkRJLUlJIGF1bWVudGEgYW5jaGUgaWwgQ0VTLVMuIFF1ZXN0byDDqCBxdWVsbG8gY2hlIGRvdnJlbW1vIGFzcGV0dGFyY2kgaW4gcXVhbnRvIGVudHJhbWJlIHNvbm8gbWlzdXJlIGRlbGxvIHN0ZXNzbyBjb3N0cnV0dG8sIGxhIGRlcHJlc3Npb25lLiBMJ2Fzc29jaWF6aW9uZSBub24gw6ggcGVyZmV0dGEgZSBjacOyIMOoIGRvdnV0byBhbCBmYXR0byBjaGUgbmVzc3VuIGluZGljYXRvcmUgZW1waXJpY28gcmlmbGV0dGUgaW4gbWFuaWVyYSBwZXJmZXR0YSBpbCBjb3N0cnV0dG8uIFF1YWxzaWFzaSBtaXN1cmEgZW1waXJpY2Egw6ggaW5xdWluYXRhIGRhbGwnX2Vycm9yZSBkaSBtaXN1cmF6aW9uZV8uICAKCkluaXppYW1vIGEgY2FsY29sYXJlIGxhIGNvdmFyaWFuemE6CgpcYmVnaW57ZXF1YXRpb259ClMoeCwgeSkgPSBcZnJhY3tcc3VtX3tpPTF9Xm4gKHhfaSAtIFxiYXJ7eH0pKHlfaSAtIFxiYXJ7eX0pfXtufQpcZW5ke2VxdWF0aW9ufQoKQ2FsY29saWFtbyBkdW5xdWUgbGEgY292YXJpYW56YSB0cmEgaSBwdW50ZWdnaSBCREktSUkgZSBDRVMtRDoKCmBgYHtyfQojIGluc2VyaXNjaSBpbCBjb2RpY2UgcXVpCm1lYW4oCiAgKGQkYmRpIC0gbWVhbihkJGJkaSkpICogKGQkY2VzZCAtIG1lYW4oZCRjZXNkKSkKKQpgYGAKCkNvbnRyb2xsaWFtbyB1c2FuZG8gbGEgZnVuemlvbmUgYGNvdigpYC4gKFN1Z2dlcmltZW50bzogYW5jaGUgbGEgZnVuemlvbmUgYGNvdigpYCwgY29tZSBgdmFyKClgLCB1c2EgX24gLSAxXyBhbCBkZW5vbWluYXRvcmUpLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKY292X2JkaV9jZXNkIDwtIGNvdihkJGJkaSwgZCRjZXNkKSAqIDY1LzY2CmNvdl9iZGlfY2VzZApgYGAKCklsIHZhbG9yZSBvdHRlbnV0byDDqCBkaWZmaWNpbGUgZGEgaW50ZXJwcmV0YXJlLiBJbCBzZWdubyDDqCBwb3NpdGl2bywgcXVpbmRpIHNhcHBpYW1vIGNoZSBsJ2Fzc29jaWF6aW9uZSDDqCBwb3NpdGl2YSAoYWxsJ2F1bWVudGFyZSBkaSBfeF8gYXVtZW50YSBfeV8pLiBNYSBvbHRyZSBhIHF1ZXN0byBsYSBjb3ZhcmlhbnphIG5vbiBjaSBkaWNlIGFsdHJvLiBQZXIgY2FwaXJlIGRpIHBpw7kgZG9iYmlhbW8gdXNhcmUgbGEgY29ycmVsYXppb25lLgoKIyMgQ29ycmVsYXppb25lCgpMYSBjb3JyZWxhemlvbmUgw6ggdW5hIGNvdmFyaWFuemEgc3RhbmRhcmRpenphdGEuIENhbGNvbGlhbW8gbGEgY29ycmVsYXppb25lIHRyYSBpIHB1bnRlZ2dpIEJESS1JSSBlIENFUy1EOgoKYGBge3J9CnJfYmRpX2Nlc2QgPC0gY292X2JkaV9jZXNkIC8gKHNxcnQodmFyKGQkYmRpKSo2NS82NikgKiBzcXJ0KHZhcihkJGNlc2QpKjY1LzY2KSkKcl9iZGlfY2VzZApgYGAKCkNvbnRyb2xsaWFtbyB1c2FuZG8gbGEgZnVuemlvbmUgYGNvcigpYC4gKFN1Z2dlcmltZW50bzogaW4gcXVlc3RvIGNhc28gbm9uIHNlcnZlIGNvcnJlZ2dlcmUgaWwgZGVub21pbmF0b3JlLikKCmBgYHtyfQpjb3IoZCRiZGksIGQkY2VzZCkKYGBgCgpPcHB1cmUsIHBvc3NpYW1vIHByaW1hIHN0YW5kYXJkaXp6YXJlIGxlIHZhcmlhYmlsaSBlIHBvaSBjYWxjb2xhcmUgbGEgY292YXJpYW56YS4gSW5pemlhbW8gYSBkZWZpbmlyZSB1bmEgZnVuemlvbmUgY2hlIHN0YW5kYXJkaXp6YSBpIHZhbG9yaSBkZWxsYSB2YXJpYWJpbGUgaW4gaW5wdXQ6CgpgYGB7cn0Kc2NhbGVfdGhpcyA8LSBmdW5jdGlvbih4KSB7CiAgc3RkIDwtIHNxcnQodmFyKHgpKihsZW5ndGgoeCktMSkvbGVuZ3RoKHgpKQogICh4IC0gbWVhbih4KSkgLyBzdGQKfQpgYGAKCmBgYHtyfQp6X2JkaSA8LSBzY2FsZV90aGlzKGQkYmRpKQptZWFuKHpfYmRpKQp2YXIoel9iZGkpKjY1LzY2CmBgYAoKYGBge3J9CnpfY2VzZCA8LSBzY2FsZV90aGlzKGQkY2VzZCkKbWVhbih6X2Nlc2QpCnZhcih6X2Nlc2QpKjY1LzY2CmBgYApBZGVzc28gY2FsY29sbyBsYSBjb3ZhcmlhbnphIHRyYSBsZSB2YXJpYWJpbGkgc3RhbmRhcmRpenphdGU6CgpgYGB7cn0KIyBpbnNlcmlzY2kgaWwgY29kaWNlIHF1aQpjb3Yoel9iZGksIHpfY2VzZCkgKiA2NS82NgpgYGAKCmlsIGNoZSwgb3Z2aWFtZW50ZSwgcHJvZHVjZSBsJ2luZGljZSBkaSBjb3JyZWxhemlvbmUuCgpTZSB0dXR0ZSBsZSBvc3NlcnZhemlvbmkgc3Rhbm5vIHN1IHVuYSByZXR0YSwgbGEgY29ycmVsYXppb25lIMOoIDEgb3BwdXJlIC0xLgoKQ3JlYW5kbyBpIGRhdGkgZSBzdm9sZ2VuZG8gaSBjYWxjb2xpLCBzaSBwcm92aSBsJ2FmZmVybWF6aW9uZSBwcmVjZWRlbnRlLgoKYGBge3J9CiMgaW5zZXJpc2NpIGlsIGNvZGljZSBxdWkKIyBuZWwgY2FzbyBkaSB1bmEgYXNzb2NpYXppb25lIHBvc2l0aXZhIGFiYmlhbW86CnggPC0gMToxMAp5IDwtIDMqeApkZCA8LSBkYXRhLmZyYW1lKHgsIHkpCmRkICU+JSAKICBnZ3Bsb3QoCiAgICBhZXMoeCwgeSkKICApICsKICBnZW9tX3BvaW50KCkKY29yKGRkJHgsIGRkJHkpCiMgbmVsIGNhc28gZGkgdW5hIGFzc29jaWF6aW9uZSBuZWdhdGl2YSBhYmJpYW1vOgp4IDwtIDE6MTAKeSA8LSAtMyp4CmRkIDwtIGRhdGEuZnJhbWUoeCwgeSkKZGQgJT4lIAogIGdncGxvdCgKICAgIGFlcyh4LCB5KQogICkgKwogIGdlb21fcG9pbnQoKQpjb3IoZGQkeCwgZGQkeSkKYGBgCgo=" download="14_descr_answers.Rmd">Download 14_descr_answers.Rmd</a>`{=html}


