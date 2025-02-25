
#' Get ecoregion data
#'
#' @return data.frame with info on ecoregions
#' @export
#'
data_ecoregion <- function() {

readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-ecoregions_list.csv"))

}

#' Get mammals species data
#'
#' @return data.frame with info on mammals species
#' @export
#'
data_mammals <- function() {

  readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-mammals_list.csv"))

}

#' Get mammals <-> ecoregions data
#'
#' @return data.frame with info on which mammals species in ecoregion
#' @export
#'
data_mammals_ecoregions <- function() {

  readr::read_csv(here::here("data", "wwf-wildfinder", "wildfinder-ecoregions_species.csv"))

}
