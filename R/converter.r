
converter  <- function(valor, origem, destino) {
    inicial  <- paste0("cod_", origem)
    final  <- paste0("cod_", destino)

    codmun::empilhados |>
        dplyr::filter(.data[[inicial]] == 1100015)  |>
        dplyr::pull(.data[[final]])
}