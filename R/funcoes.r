#' municipio
#'
#' Retorna o nome do municipio a partir do codigo e base original
#'
#' @param valor Codigo do municipio
#' @param base Base de origem
#'
#' @return Retorna o nome do municipio
#' @export
municipio <- function(valor, base) {
    base  <- paste0("cod_", base)

    codmun::empilhados  |>
        dplyr::filter(codmun::empilhados[[base]] == valor)  |>
        dplyr::pull(nome_original)

}

#' converter
#'
#' Converte o codigo da base original para uma base desejada
#'
#' @param valor Codigo do municipio
#' @param origem Base do codigo original
#' @param destino Base do codigo desejado
#'
#' @return Retorna o valor convertido para a base destino
#' @export
converter  <- function(valor, origem, destino) {
    inicial  <- paste0("cod_", origem)
    final  <- paste0("cod_", destino)

    codmun::empilhados |>
        dplyr::filter(codmun::empilhados[[inicial]] == valor) |>
        dplyr::pull(final)
}


#' bases
#'
#' Lista as bases disponiveis no pacote
#'
#' @return Retorna as bases disponiveis
#' @export
bases  <- function() {

    codmun::empilhados  |>
        dplyr::select(dplyr::starts_with("cod"))  |>
        colnames()  |>
        stringr::str_replace("cod_", "")

}

#' Dados empilhados
#'
#' Base de dados referentes a municipios brasileiros e seus 
#' respectivos codigos de identificacao em diferentes bases
#'
#' @format Uma lista que descreve as colunas:
#' \describe{
#'   \item{uf}{Unidade federativa - Estado do municipio}
#'   \item{municipio}{Nome do municipio sem espacos e em maiusculo}
#'   \item{cod_ibge_resumido}{Codigo do ibge resumido}
#'   \item{cod_ibge_completo}{Codigo do ibge completo}
#'   \item{nome_original}{Nome do municipio sem modificacao}
#'   \item{cod_sef_mg}{Codigo SEF-MG}
#'   \item{cod_tom_serpro}{Codigo Tom Serpro}
#'   \item{cod_tse}{Codigo TSE}
#' }
#' @source Dados retirados de fontes oficiais e compilados em uma unica base.
"empilhados"