#' plot forage_qual_quant
#'
#'
#'
#' @return ggplot object
#'
#'
#' @export

plot_forage_qual_quant <- function() {

  survey <- readRDS(here::here("data-raw/survdat.rds"))

  pulldate <- survey$pullDate
  functioncall <- survey$functionCall
  survdat <- survey$survdat

  foragespp <- ecodata::energy_density |>
    tidyr::separate(Var, into = c("Species", "Season", "Var"), sep = "/") |>
    dplyr::select(Species) |>
    dplyr::distinct()

  foragespp <- unname(unlist(foragespp))
  foragespp <- stringr::str_replace(foragespp, "Atl.", "Atlantic")

  foragespp <- stringr::str_replace(foragespp, "Sand lance", "Sandlance")
  foragespp <- stringr::str_replace(foragespp, "Illex squid", "NORTHERN SHORTFIN SQUID")
  foragespp <- stringr::str_replace(foragespp, "Loligo squid", "LONGFIN SQUID")

  foragespp <- stringr::str_to_upper(foragespp)

  foragelook <- ecodata::species_groupings |>
    dplyr::filter(COMNAME %in% foragespp)


  foragequant <- survdat |>
    dplyr::filter()

  p <- ggplot2::ggplot()

  return(p)

}
