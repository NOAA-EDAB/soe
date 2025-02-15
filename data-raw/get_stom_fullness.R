library(dplyr)
library(tidyr)
library(stringr)


raw.dir <- here::here("data-raw")
stom_fullness_csv<- "AnnualStomFullnessEPU_2020.csv"
get_stom_fullness <- function(save_clean = F){

  stom_fullness <- read.csv(file.path(raw.dir,stom_fullness_csv)) %>%
    dplyr::select(year, EPU, Species, AvgStomFullEPU) %>%
    dplyr::rename(Time = year,
           Var = Species) %>%
    dplyr::distinct() %>%
    dplyr::group_by(EPU, Var) %>%
    dplyr::mutate(Value = AvgStomFullEPU-mean(AvgStomFullEPU)) %>%
    dplyr::ungroup() %>%
    dplyr::mutate(Units = c("anom")) %>%
    dplyr::select(Time, Var, Value, EPU, Units)

  # metadata ----
  attr(stom_fullness, "tech-doc_url") <- "https://noaa-edab.github.io/tech-doc/stomach-fullness.html"
  attr(stom_fullness, "data_files")   <- list(
    stom_fullness_csv = stom_fullness_csv)
  attr(stom_fullness, "data_steward") <- c(
    "Laurel Smith <laurel.smith@noaa.gov>")
  attr(stom_fullness, "plot_script") <- list(
    `mf_MAB` = "macrofauna_MAB.Rmd-stom-fullness.R",
    `mf_NE` = "macrofauna_NE.Rmd-stom-fullness.R")

  if (save_clean){
    usethis::use_data(stom_fullness, overwrite = T)
  } else {
    return(stom_fullness)
  }
}
get_stom_fullness(save_clean = T)
