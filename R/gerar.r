
#' @export
#Retorna o nome do municipio com o código especificado
cod_mun <- function(valor, tipo_cod) {
    base  <- paste0("cod_", tipo_cod)

    codmun::empilhados  |>
        dplyr::filter(.data[[base]] == valor)  |>
        dplyr::pull(nome_original)

}
