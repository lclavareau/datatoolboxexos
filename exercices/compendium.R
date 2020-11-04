
library(datatoolboxexos)
datatoolboxexos::data_ecoregion()
?datatoolboxexos::data_ecoregion()
devtools::check()
d <-datatoolboxexos::data_ecoregion()
head(d)

usethis::use_pipe()
devtools::document()

devtools::load_all()

##Drake

usethis::use_r(name="wrangle.R")
usethis::use_r(name="plots.R")
usethis::use_r(name ="plan.R")
file.create("_drake.R")
dir.create("output") #créer des dossier de manière code
dir.create("output/plots")
dir.create("output/text")

# add needed packages
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("magrittr")
usethis::use_package("forcats")
usethis::use_package("fishualize")
usethis::use_package("sf")
usethis::use_package("drake")
usethis::use_package("visNetwork")

# ignore files
usethis::use_build_ignore(".drake")
usethis::use_build_ignore("_drake.R")
usethis::use_build_ignore("make.R")
usethis::use_git_ignore(".drake") #pas nécessaire mais ça peut s'avérer utile en cas de grande base de donnée
usethis::use_build_ignore("output/")
usethis::use_build_ignore("text/")
