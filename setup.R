
## ---- bookdown-setup ----------------------------------------------------
# Knitr default options
knitr::opts_chunk$set(comment = "#", fig.align = "center")

# Redefine learndown functions with correct default arguments
h5p <- function(...)
  learndown::h5p(baseurl = "https://wp.sciviews.org", ...)

launch_shiny <- learndown::launch_shiny


## ---- bookdown-include --------------------------------------------------
# Include javascrit and css code for learndown additional features
cat(learndown::learndown_init(institutions = "UMONS",
  courses = c("S-BIOG-006", "S-BIOG-027", # SDD1 Q1 & Q2
              "S-BIOG-921"))              # SDD1 Charleroi
)
