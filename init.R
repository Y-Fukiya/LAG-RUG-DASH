#
# init.R
# swapboard
#
# Created by blakiseskream on 5/7/2018
# MIT License and shit
#

my_packages = c("rmarkdown","httr", "flexdashboard", "viridis", "tidyverse", "plotly", "shiny", "scales", "DT", "writexl", "echarts4r", "tools", "naniar", "mice", "devtools")


install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))
# install pool from Github
invisible(devtools::install_github("rstudio/pool"))