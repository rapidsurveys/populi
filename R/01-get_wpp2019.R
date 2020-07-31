################################################################################
#
#'
#' Get all variants total population estimates and projections from the World
#' Population Prospects 2019
#'
#' @return A data.frame of all variants total population estimates and
#'   projections from the World Population Prospects 2019
#'
#' @examples
#' get_wpp2019_total()
#'
#' @export
#'
#
################################################################################

get_wpp2019_total <- function() {
  ##
  df <- read.csv(file = "https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2019_TotalPopulationBySex.csv")
  return(df)
}


################################################################################
#
#'
#' Get population by age and sex estimates and projections by medium variant
#' and other variants from the World Population Prospects 2019
#'
#' @return A data.frame of population age and sex estimates and projections by
#'   medium variant and other variants from the World Population Prospects 2019
#'
#' @examples
#' get_wpp2019_ageSex()
#'
#' @export
#'
#
################################################################################

get_wpp2019_ageSex <- function() {
  ##
  df_medium_group <- read.csv(file = "https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2019_PopulationByAgeSex_Medium.csv")
  ##
  df_other_group <- read.csv(file = "https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2019_PopulationByAgeSex_OtherVariants.csv")
  ##
  df_medium_single <- read.csv(file = "https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2019_PopulationBySingleAgeSex_1950-2019.csv")
  ##
  df_medium_single_projections <- read.csv(file = "https://population.un.org/wpp/Download/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2019_PopulationBySingleAgeSex_2020-2100.csv")
  ## Concatenate in a list
  df <- list(df_medium_group, df_other_group, df_medium_single, df_medium_single_projections)
  names(df) <- c("medium_group_estimates", "other_group_projections", "medium_single_estimates", "medium_single_projections")
  ##
  return(df)
}
