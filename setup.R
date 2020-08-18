# Knitr default options
knitr::opts_chunk$set(comment = "#", fig.align = "center")

# The corresponding SciViews Box version
svbox <- 2020

# The base URL for the site
baseurl <- "https://wp.sciviews.org"

# The Shiny apps image directory (screenshots)
shiny_imgdir <- "images/shinyapps"

# H5P integration
h5p <- function(id, ...)
  learndown::h5p(id, baseurl = baseurl, ...)

# Shiny and learnr applications to be launched by the user
launch_shiny <- function(url, fun = "BioDataScience::runApp",
  alt1 = "*Cliquez pour lancer l'application Shiny*",
  alt2 = paste0("*Cliquez pour lancer ou exécutez `{fun}(\"{app}\")` dans la svbox",
    svbox, ".*"), ...)
  learndown::launch_shiny(url = url, imgdir = shiny_imgdir, fun = fun,
    alt1 = alt1, alt2 = alt2, ...)

launch_learnr <- function(url, fun = "BioDataScience::run", ...)
  launch_shiny(url = url, fun = fun, ...)

# Include javascript and css code for learndown additional features
# in style.css and header.html, respectively
learndown::learndown_init(
  baseurl = baseurl,
  hide.code.msg = "Voir le code",
  institutions = "UMONS",
  courses      = c(
    "S-BIOG-006", "S-BIOG-027", # SDD1 Q1 & Q2
    "S-BIOG-921"))              # SDD1 Charleroi
