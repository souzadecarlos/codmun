
<!-- README.md is generated from README.Rmd. Please edit that file -->
# codmun

<!-- badges: start -->
<!-- badges: end -->
## Overview

Ao trabalhar com dados de municípios, é comum se deparar com códigos distintos em cada base oficial utilizada. O pacote codmun tem o objetivo de facilicar a conversão de códigos de uma base para a outra.

## Installation

Você pode instalar a versão de desenvolvedor de codmun a partir do [GitHub](https://github.com/) com:

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
converter(valor = 3526902, origem = "ibge_completo", destino = "tse")
#> [1] 66397
```
