# (PART\*) Misurazione {-}



# Terminologia 

## Metodi e procedure della psicologia

Una teoria psicologica di un qualche aspetto del comportamento umano o
della mente ha le seguenti proprietà:

1.  descrive le caratteristiche del comportamento in questione,
2.  formula predizioni sulle caratteristiche future del comportamento,
3.  è sostenuta da evidenze empiriche,
4.  deve essere falsificabile (ovvero, in linea di principio, deve
    potere fare delle predizioni su aspetti del fenomeno considerato che
    non sono ancora noti e che, se venissero indagati, potrebbero
    portare a rigettare la teoria, se si dimostrassero incompatibili con
    essa).

L'analisi dei dati si riferisce al punto 3 indicato sopra e, nelle sue
fasi distinte, ovvero

-   la misurazione,
-   l'analisi descrittiva,
-   l'inferenza causale,

ha un ruolo centrale nello sviluppo delle teorie psicologiche. Prima di
affrontare il primo degli ambiti in cui abbiamo articolato l'analisi dei
dati, ovvero quello della misurazione, prenderemo qui in esame la
terminologia che viene utilizzata.

## Variabili e costanti

L'analisi dei dati inizia con l'individuazione delle unità portatrici di
informazioni circa il fenomeno di interesse. Si dice *popolazione* (o
*universo*) l'insieme $\Omega$ delle entità capaci di fornire
informazioni sul fenomeno oggetto dell'indagine statistica. Possiamo
dunque scrivere
$\Omega = \{\omega_i\}_{i=1, \dots, n}= \{\omega_1, \omega_2, \dots, \omega_n\}$
oppure $\Omega =  \{\omega_1, \omega_2, \dots \}$ nel caso di
popolazioni finite o infinite, rispettivamente. Gli elementi $\omega_i$
dell'insieme $\Omega$ sono detti *unità statistiche*. Un sottoinsieme
della popolazione viene chiamato *campione*. Ciascuna unità statistica
$\omega_i$ (abbreviata con u.s.) è portatrice dell'informazione che
verrà rilevata mediante un'operazione di misurazione.

Definiamo *variabile statistica* la proprietà (o grandezza) che è
oggetto di studio nell'analisi dei dati. Una variabile è una proprietà
di un fenomeno che può essere espressa in più valori sia numerici sia
categoriali. Il termine "variabile" si contrappone al termine "costante"
che descrive una proprietà invariante di tutte le unità statistiche.

Si dice *modalità* ciascuna delle varianti con cui una variabile
statistica può presentarsi. Definiamo *insieme delle modalità* di una
variabile statistica l'insieme $M$ di tutte le possibili espressioni con
cui la variabile può manifestarsi. Le modalità osservate e facenti parte
del campione si chiamano *dati* (si veda la
Tabella [1.1](#tab:term_st_desc){reference-type="ref"
reference="tab:term_st_desc"}).

::: {#tab:term_st_desc}
  **Fenomeno studiato**                       **Popolazione**                   **Variabile**                                                                    **Modalità**                                         **Tipo**
  ------------------------------------------- --------------------------------- -------------------------------------------------------------------------------- ---------------------------------------------------- -----------------------
  Intelligenza                                Tutti gli italiani                WAIS-IV                                                                          $112$, $92$, $121$, ...                              Quantitativo discreto
  Velocità di esecuzione nel compito Stroop   Bambini dai 6 agli 8 anni         Reciproco dei tempi di reazione                                                  $1/2.36$ s, $1/4.72$ s, $1/3.81$ s, ...              Quantitativo continuo
  Disturbo di personalità                     Detenuti nelle carceri italiane   Assessment del disturbo di personalità tramite interviste cliniche strutturate   Cluster A, Cluster B, Cluster C proposti dal DSM-V   Qualitativo

  : Proprietà oggetto di studio, variabile e modalità.
:::

## Variabili indipendenti e variabili dipendenti

È importante distinguere il concetto di *variabile indipendente*, che
descrive ciò che viene manipolato dallo sperimentatore o che è già
presente nel campione, dalla *variabile dipendente*, che descrive ciò
che varia al variare della variabile indipendente e che viene misurato
nel campione.



\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:prob-var-dip-indip"><strong>(\#exr:prob-var-dip-indip) </strong></span>Uno psicologo convoca 120 studenti universitari per un test di memoria.
Prima di iniziare l'esperimento, a metà dei soggetti viene detto che si
tratta di un compito particolarmente difficile; agli altri soggetti non
viene data alcuna indicazione. Lo psicologo misura il punteggio nella
prova di memoria di ciascun soggetto. Si individuino la variabile
indipendente e la variabile dipendente di questo esperimento.</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Soluzione. </em></span>  \fi{}La variabile indipendente è l'informazione sulla difficoltà della prova.
La variabile indipendente viene manipolata dallo sperimentatore
assegnando i soggetti (di solito in maniera causale) o alla condizione
(modalità) "informazione assegnata" o "informazione non data". La
variabile dipendente è ciò che viene misurato nell'esperimento, ovvero
il punteggio nella prova di memoria di ciascun soggetto.</div>\EndKnitrBlock{solution}


## La matrice dei dati

Le realizzazioni delle variabili esaminate in una rilevazione statistica
vengono organizzate in una *matrice dei dati*. Le colonne della matrice
dei dati contengono gli insiemi dei dati individuali di ciascuna
variabile statistica considerata. Ogni riga della matrice contiene tutte
le informazioni relative alla stessa unità statistica. Una generica
matrice dei dati ha l'aspetto seguente: $$D_{m,n} = 
 \begin{pmatrix}
  \omega_1 & a_{1}   & b_{1}   & \cdots & x_{1} & y_{1}\\
  \omega_2 & a_{2}   & b_{2}   & \cdots & x_{2} & y_{2}\\
  \vdots   & \vdots  & \vdots  & \ddots & \vdots & \vdots  \\
 \omega_n  & a_{n}   & b_{n}   & \cdots & x_{n} & y_{n}
 \end{pmatrix}$$ dove, nel caso presente, la prima colonna contiene il
nome delle unità statistiche, la seconda e la terza colonna si
riferiscono a due mutabili statistiche (variabili categoriali; $A$ e
$B$) e ne presentano le modalità osservate nel campione mentre le ultime
due colonne si riferiscono a due variabili statistiche ($X$ e $Y$) e ne
presentano le modalità osservate nel campione. Generalmente, tra le
unità statistiche $\omega_i$ non esiste un ordine progressivo; l'indice
attribuito alle unità statistiche nella matrice dei dati si riferisce
semplicemente alla riga che esse occupano.