
<!-- README.md is generated from README.Rmd. Please edit that file -->
# codmun

<!-- badges: start -->
<!-- badges: end -->
The goal of codmun is to ...
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
converter(valor = 3526902, origem = "ibge_completo", "cod_tse")
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN.
