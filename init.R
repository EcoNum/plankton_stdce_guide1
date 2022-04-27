# functions and repetitive code

# Attention ce chemin d'accès doit faire référence au chemin du training set _train_classif3
path <- "../../stdce_training_set/_train/_train_classif3/"
direction <- fs::dir_ls(path = path, recurse = TRUE, glob = "*.png")

# Fonction pour les graphiques
plot_classification <- function(paths, nx = 5, ny = 5) {
  vigs_max <- length(paths)

  if(vigs_max <= (nx*ny)) {
    stop("The number of images is too low")
  }

  vigs <- sample(paths, size = (nx*ny), replace = FALSE)

  zooimage::zidbPlotNew(main = NULL)
for (i in 1:(nx*ny))
  zooimage::zidbDrawVignette(vigs[i], item = i,
    nx = nx, ny = ny)
}
