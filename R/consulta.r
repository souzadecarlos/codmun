
#' @export
#Imprime todos os códigos disponíveis para conversão
codigos_disponiveis  <- function() {

    codmun::empilhados  |>
        dplyr::select(dplyr::starts_with("cod"))  |>
        colnames()  |>
        stringr::str_replace("cod_", "")

}
