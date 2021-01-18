# (PART\*) Introduzione al linguaggio R {-}

# Pacchetti 



Riporto qui tutti i pacchetti che verranno usati in queste dispense.


```r
suppressPackageStartupMessages(library("here"))
suppressPackageStartupMessages(library("tidyverse"))
suppressPackageStartupMessages(library("ggpubr"))
suppressPackageStartupMessages(library("ggExtra"))
suppressPackageStartupMessages(library("car"))
suppressPackageStartupMessages(library("cowplot"))
suppressPackageStartupMessages(library("tidybayes"))
suppressPackageStartupMessages(library("datasauRus"))
suppressPackageStartupMessages(library("RColorBrewer"))
suppressPackageStartupMessages(library("rio"))
suppressPackageStartupMessages(library("papaja"))
library("patchwork")
set.seed(12345)
```


```r
sessionInfo()
#> R version 3.6.3 (2020-02-29)
#> Platform: x86_64-apple-darwin15.6.0 (64-bit)
#> Running under: macOS Mojave 10.14.6
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libRblas.0.dylib
#> LAPACK: /Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libRlapack.dylib
#> 
#> locale:
#> [1] it_IT.UTF-8/it_IT.UTF-8/it_IT.UTF-8/C/it_IT.UTF-8/it_IT.UTF-8
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#>  [1] patchwork_1.1.1    rio_0.5.16         RColorBrewer_1.1-2 datasauRus_0.1.4  
#>  [5] tidybayes_2.3.1    cowplot_1.1.1      car_3.0-10         carData_3.0-4     
#>  [9] ggExtra_0.9        ggpubr_0.4.0       papaja_0.1.0.9997  here_1.0.1        
#> [13] forcats_0.5.0      stringr_1.4.0      dplyr_1.0.2        purrr_0.3.4       
#> [17] readr_1.4.0        tidyr_1.1.2        tibble_3.0.4       ggplot2_3.3.3     
#> [21] tidyverse_1.3.0   
#> 
#> loaded via a namespace (and not attached):
#>  [1] fs_1.5.0             lubridate_1.7.9.2    httr_1.4.2          
#>  [4] rprojroot_2.0.2      tools_3.6.3          backports_1.2.1     
#>  [7] bslib_0.2.3.9000     R6_2.5.0             ggdist_2.4.0        
#> [10] DBI_1.1.1            colorspace_2.0-0     withr_2.3.0         
#> [13] tidyselect_1.1.0     downlit_0.2.1        curl_4.3            
#> [16] compiler_3.6.3       cli_2.2.0            rvest_0.3.6         
#> [19] arrayhelpers_1.1-0   xml2_1.3.2           bookdown_0.21.6     
#> [22] sass_0.3.0.9000      scales_1.1.1         rappdirs_0.3.1      
#> [25] digest_0.6.27        foreign_0.8-75       rmarkdown_2.6.4     
#> [28] pkgconfig_2.0.3      htmltools_0.5.1.9000 dbplyr_2.0.0        
#> [31] fastmap_1.0.1        rlang_0.4.10         readxl_1.3.1        
#> [34] rstudioapi_0.13      shiny_1.5.0          farver_2.0.3        
#> [37] svUnit_1.0.3         jquerylib_0.1.3      generics_0.1.0      
#> [40] jsonlite_1.7.2       distributional_0.2.1 zip_2.1.1           
#> [43] magrittr_2.0.1       Rcpp_1.0.5           munsell_0.5.0       
#> [46] fansi_0.4.1          abind_1.4-5          lifecycle_0.2.0     
#> [49] stringi_1.5.3        yaml_2.2.1           plyr_1.8.6          
#> [52] grid_3.6.3           promises_1.1.1       crayon_1.3.4        
#> [55] lattice_0.20-41      miniUI_0.1.1.1       haven_2.3.1         
#> [58] hms_1.0.0            knitr_1.30.2         pillar_1.4.7        
#> [61] ggsignif_0.6.0       codetools_0.2-18     reprex_0.3.0        
#> [64] glue_1.4.2           evaluate_0.14        data.table_1.13.6   
#> [67] modelr_0.1.8         vctrs_0.3.6          httpuv_1.5.5        
#> [70] cellranger_1.1.0     gtable_0.3.0         assertthat_0.2.1    
#> [73] xfun_0.20            openxlsx_4.2.3       mime_0.9            
#> [76] xtable_1.8-4         broom_0.7.3          coda_0.19-4         
#> [79] rstatix_0.6.0        later_1.1.0.1        ellipsis_0.3.1
```

