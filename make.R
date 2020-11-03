#####################################################
##
## Data and Code for the Cesab
##
####################################################

# ----- clean workspace
rm(list = ls())

# effacer ce qui est présent dans l'environnement

# ----- install/update packages
devtools::install_deps()

#installer ou mettre à jour les dépendance

# ----- install compendium package
devtools::install(build = FALSE)

#rendre disponible toutes les fonctions disponible dans le répertoire R, pas la peine de le recompiler car tous les check sont fait donc (build = FALSE)

# ----- Knit exo dplyr
rmarkdown::render(here::here("exercices","Exercice_dplyr.Rmd"))
#réaliser les exercices

# ----- Knit exo spatial
#rmarkdown::render(here::here("exercices","Exercice_spatial.Rmd"))
#réaliser les exercices du spatial
