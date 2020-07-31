library(rvest)
library(xml2)
library(magrittr)


.url <- "https://population.un.org/wpp/Download/Standard/CSV/"


x <- xml2::read_html(x = .url) %>%
  rvest::html_nodes(css = "div #kgrData .Grid .k-grid .k-widget .k-display-block .k-header .k-link") %>%
  rvest::html_table()
