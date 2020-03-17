remotes::install_github('bd-R/bdverse', force = TRUE)
library(bdverse)
bdverse_app()

remotes::install_github('bd-R/bdDwC')
library(bdDwC)

remotes::install_github('bd-R/bddwc.app')
library(bddwc.app)
bddwc_app()

remotes::install_github('bd-R/bdchecks')
library(bdchecks)
bdchecks_app()

remotes::install_github('bd-R/bdchecks.app')
library(bdchecks.app)


remotes::install_github('bd-R/bdclean')
library(bdclean)
bdclean_app()

remotes::install_github('bd-R/bdutilities.app')

path_app <- system.file("app", package = "bddwc.app")
shiny::runApp(path_app, launch.browser = TRUE, port = 1875)

path_app <- system.file("app", package = "bdchecks.app")
shiny::runApp(path_app, launch.browser = TRUE, port = 2875)

Sys.time()

library("spocc")

out <- occ(query = 'Carcharodon carcharias', from = 'obis', limit = 1)


bdverse::bd_packages()[[1]]


utils::packageDescription("bdutilities"),
utils::packageDescription("bdutilities.app"),
utils::packageDescription("bdDwC"),
utils::packageDescription("bddwc.app"),
utils::packageDescription("bdchecks"),
utils::packageDescription("bdchecks.app"),
utils::packageDescription("bdclean")$Authors

utils::packageDescription("bdverse")


.libPaths()
library(covr)
covr::package_coverage("/usr/local/lib/R/site-library/bdchecks")


remotes::install_github("moodymudskipper/funflow")
funflow::view_flow(bdchecks::summary_dc)

install.packages("githubinstall")
