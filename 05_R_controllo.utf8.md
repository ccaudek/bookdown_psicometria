# Strutture di controllo 

In R esistono strutture di controllo specifiche per regolare il flusso
di esecuzione di un programma. I loop permettono di ripetere
ciclicamente blocchi di istruzioni per un numero prefissato di volte o
fino a che una determinata condizione logica viene soddisfatta. Questo
li rende utili per la programmazione di simulazioni.

## Il ciclo `for`

Il ciclo `for` è una struttura di controllo iterativa che determina
l'esecuzione di una porzione di programma ripetuta per un certo numero
noto di volte. Il linguaggio R  usa la seguente sintassi per il ciclo
`for`:

`for` (`indice` in `valori_indice`) { *operazioni* }

il che significa "esegui le operazioni *operazioni* per i diversi valori
di `indice` compresi nel vettore `valori_indice`". Per esempio, il
seguente ciclo `for` non fa altro che stampare il valore della variabile
contatore in ciascuna esecuzione del ciclo:


```r
for (i in 1:3) {
  print(i)
}
#> [1] 1
#> [1] 2
#> [1] 3
```

Un esempio (leggermente) più complicato è il seguente:


```r
x_list <- seq(1, 9, by = 2)
x_list
#> [1] 1 3 5 7 9
sum_x <- 0
for (x in x_list) {
  sum_x <- sum_x + x
  cat("L'indice corrente e'", x, "\n")
  cat("La frequenza cumulata e'", sum_x, "\n") 
}
#> L'indice corrente e' 1 
#> La frequenza cumulata e' 1 
#> L'indice corrente e' 3 
#> La frequenza cumulata e' 4 
#> L'indice corrente e' 5 
#> La frequenza cumulata e' 9 
#> L'indice corrente e' 7 
#> La frequenza cumulata e' 16 
#> L'indice corrente e' 9 
#> La frequenza cumulata e' 25
```

Per esempio, quanti numeri pari sono contenuti in un vettore? La
risposta a questa domanda viene fornita dalla funzione
`countEvenNumbers()` che possiamo definire come indicato qui sotto:


```r
countEvenNumbers <- function(x) {
  count <- 0
  for (i in 1:length(x)) {
    if (x[i] %% 2 == 0)  
      count = count + 1
  }
  count
}
```

Nella funzione `countEvenNumbers()` abbiamo inizializzato la variabile
`count` a zero. Prima dell'esecuzione del ciclo `for`, dunque, `count`
vale zero. Il ciclo `for` viene eseguito tante volte quanti sono gli
elementi che costituiscono il vettore `x`. L'indice `i` dunque assume
valori compresi tra 1 e il valore che corrisponde al numero di elementi
di `x`. L'operazione modulo, indicato con `%%` dà come risultato il
resto della divisione euclidea del primo numero per il secondo. Per
esempio, `9 %% 2` dà come risultato $1$ perché questo è il resto della
divisione $9/2$. L'operazione modulo dà come risultato $0$ per tutti i
numeri pari. In ciascuna esecuzione del ciclo `for` l'operazione modulo
viene eseguita, successivamente, su uno degli elementi di `x`. Se
l'operazione modulo dà $0$ come risultato, ovvero se il valore
considerato è un numero pari, allora la variabile `count` viene
incrementata di un'unità. L'istruzione `return()` ritorna dunque il
numero di valori pari contenuti nel vettore di input alla funzione. Per
esempio:


```r
x <- c(1, 2, 1, 4, 6, 3, 9, 12)
countEvenNumbers(x)
#> [1] 4
```
