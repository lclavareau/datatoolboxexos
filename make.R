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
devtools::load_all()

#rendre disponible toutes les fonctions disponible dans le répertoire R, pas la peine de le recompiler car tous les check sont fait donc (build = FALSE)

# ----- Knit exo dplyr
rmarkdown::render(here::here("exercices","Exercice_dplyr.Rmd"))
#réaliser les exercices

# ----- drake
## Execute plan
drake::r_make()
## Visualize
drake::r_vis_drake_graph(targets_only = TRUE)
drake::r_vis_drake_graph()
