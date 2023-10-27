# Install packages
if (!require("pacman")) {
  install.packages("pacman")
}

pacman::p_load(
  tidyverse, # tidyverse pkgs including purrr
  glue, #combining strings and objects
  gapminder, # dataset
  ggplot2, #plotting
  gridExtra #arranging plots
) 

average = 69.4

if (average > 69) {
  print("Firs-class honours")
} else if (average < 70 & average > 59) {
  print("Second-class honours")
} else {
  print("Third-class honours")
}