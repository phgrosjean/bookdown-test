# Knitr default options
knitr::opts_chunk$set(comment = "#", fig.align = "center")

# The base URL for the site
baseurl = "https://wp.sciviews.org"

# Redefine learndown functions with correct default arguments
h5p <- function(...)
  learndown::h5p(baseurl = baseurl, ...)

launch_shiny <- learndown::launch_shiny

# Include javascript and css code for learndown additional features
# in style.css and header.html, respectively
learndown::learndown_init(
  baseurl = baseurl,
  institutions = "UMONS",
  courses      = c(
    "S-BIOG-006", "S-BIOG-027", # SDD1 Q1 & Q2
    "S-BIOG-921"))              # SDD1 Charleroi
