#' plot forage_qual_quant
#'
#'

load("/Users/sarah.gaichas/Documents/0_Data/forageindex/survdat/Survdat.Rdata")

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
foragespp <- stringr::str_remove(foragespp, " squid")

foragespp <- stringr::str_to_upper(foragespp)

foragelook <- ecodata::species_groupings |>
  dplyr::filter(COMNAME %in% foragespp)


foragequant <- survdat |>
  dplyr::filter()


