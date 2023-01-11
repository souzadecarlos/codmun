
<!-- README.md is generated from README.Rmd. Please edit that file -->
# codmun

<!-- badges: start -->
<!-- badges: end -->

## Overview

Ao trabalhar com dados de municípios, é comum se deparar com códigos distintos em cada base oficial utilizada. O pacote codmun tem o objetivo de facilicar a conversão de códigos de uma base para a outra.

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
```

``` r
municipio(valor = 3526902, origem = "ibge_completo")
```

``` r
converter(valor = 3526902, origem = "ibge_completo", "tse")
```


