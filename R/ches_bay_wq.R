#' Chesapeake Bay Water Quality Attainment
#' 
#' A multimetric indicator describing the attainment status of Chesapeake Bay with
#' respect to three water quality standards criteria: dissolved oxygen, chlorophyll-a, and
#' water clarity/submerged aquatic vegetation.
#' 
#' @format
#' 
#' \itemize{
#'     \item Var: Variable name.
#'     \item Units: Units of variable \code{Var}.
#'     \item Value: Value of variable \code{Var}.
#'     \item EPU: Ecological Production Unit where data originated (MAB = Mid-Atlantic Bight, GB = Georges Bank,
#'     GOM = Gulf of Maine, SS = Scotian Shelf). 
#'     \item Time: The first year of a three year rolling attainment window. For example, 1998 represents the attainment
#'     percentage for years 1998, 1999, and 2000. 
#' }
#' 
#' @details To protect the aquatic living resources of Chesapeake Bay, the Chesapeake Bay Program
#' (CBP) partnership has developed a guidance framework of ambient water quality criteria with
#' designated uses and assessment procedures for dissolved oxygen, chlorophyll-a, and water
#' clarity/submerged aquatic vegetation (SAV) (USEPA, 2003) . To achieve consistent
#' assessment over time and between jurisdictions, a multimetric indicator was proposed by the
#' CBP partnership to provide a means for tracking the progress in all 92 management segments
#' of Chesapeake Bay (USEPA, 2017). This indicator has been computed for each three-year
#' assessment period since 1985-1987, providing an integrated measure of Chesapeake Bay’s
#' water quality condition over the last three decades. 
#' 
#' 
#' @references 
#' USEPA, 2003. Ambient water quality criteria for dissolved oxygen, water clarity and
#' chlorophyll-a for the Chesapeake Bay and its tidal tributaries. USEPA Region III
#' Chesapeake Bay Program Office EPA 903-R-03-002, Annapolis, Maryland.
#' 
#' USEPA, 2017. Ambient water quality criteria for dissolved oxygen, water clarity and
#' chlorophyll-a for the Chesapeake Bay and its tidal tributaries: 2017 addendum. USEPA
#' Region III Chesapeake Bay Program Office EPA 903-R-17-002, Annapolis, Maryland.
#' 
#' Zhang, Q., R. R. Murphy, R. Tian, M. K. Forsyth, E. M. Trentacoste, J. Keisman and P. J.
#' Tango, 2018. Chesapeake Bay&#39;s water quality condition has been recovering: Insights
#'   from a multimetric indicator assessment of thirty years of tidal monitoring data. \emph{Sci. Total
#' Environ.} 637-638:1617-1625, DOI: 10.1016/j.scitotenv.2018.05.025.
"ches_bay_wq"