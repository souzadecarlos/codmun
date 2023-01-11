
<!-- README.md is generated from README.Rmd. Please edit that file -->
# codmun

<!-- badges: start -->
<!-- badges: end -->
## Installation

You can install the development version of codmun from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("souzadecarlos/codmun")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(codmun)
## basic example code
```

``` r
bases()
#> [1] "ibge_resumido" "ibge_completo" "sef_mg"        "tom_serpro"   
#> [5] "tse"
```

``` r
municipio(valor = 3526902, base = "ibge_completo")
#> [1] "Limeira"
```

``` r
converter(valor = 3526902, origem = "ibge_completo", "tse")
#> [1] 66397
```