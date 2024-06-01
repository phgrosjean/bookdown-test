# Learnitdown configuration and functions
learnitdown <- list(
  baseurl = "https://wp.sciviews.org", # The base URL for the site
  shiny_imgdir = "images/shinyapps",   # The Shiny image directory (screenshots)
  svbox = 2020,                        # The SciViews Box version used
  rstudio = "start_rstudio2020.html",  # Run Rstudio from the box
  package = "BioDataScience1",         # Associated package for the exercices
  institutions = "UMONS",              # Known institutions
  courses = c(
    "S-BIOG-006",                      # SDD1 Mons
    "S-BIOG-921"                       # SDD1 Charleroi
  ),
  courses_names = c(
    "Science des Données Biologiques I à l'UMONS",
    "Bioinformatique et Science des Données à Charleroi"
  )
)

## h5p(), launch_shiny(), learnr() & assignation() for exercises blocks, use:
#
# `r h5p(x, toc = "Short description")`
#
# `r launch_shiny(url, toc = "Short description")`
#
# `r learnr(id, title = "...", toc = "Short description")`
#
#```{r, echo=FALSE, results='asis'}
#assignation("A01a_markdown", part = NULL,
#  url = "https://github.com/BioDataScience-Course/sdd1_module01",
#  course.urls = c(
#    'S-BIOG-006' = "https://classroom.github.com/a/...",
#    'S-BIOG-921' = "https://classroom.github.com/a/..."),
#  toc = "Assignation : réalisation d'un premier document en Markdown")
#```
#
# Then, at the end of the module, create the exercises toc with:
#
# `r show_ex_toc()`

h5p <- function(id, toc = "", ...)
  learnitdown::h5p(id, toc = toc, baseurl = learnitdown$baseurl,
    toc.def = "H5P exercise {id}",
    h5p.img = "images/list-h5p.png",
    h5p.link = paste(learnitdown$baseurl, "h5p", sep = "/"), ...)

launch_shiny <- function(url, toc = "", fun = paste(learnitdown$package, "runApp", sep = "::"),
  alt1 = "*Click to start the Shiny application*",
  #FRalt1 = "*Cliquez pour lancer l'application Shiny.*",
  alt2 = "*Click to start or [run `{run.cmd}`]({run.url}{run.arg}) in RStudio.*", ...)
  #FRalt2 = "*Cliquez pour lancer ou [exécutez dans RStudio]({run.url}{run.arg}) `{run.cmd}`.*", ...)
  learnitdown::launch_shiny(url = url, toc = toc, imgdir = learnitdown$shiny_imgdir,
    fun = fun, alt1 = alt1, alt2 = alt2, toc.def = "Application Shiny {app}",
    run.url = paste(learnitdown$baseurl, "/", learnitdown$rstudio,  "?runrcode=", sep = ""),
    app.img = "images/list-app.png",
    app.link = paste(learnitdown$baseurl, "shiny_app", sep = "/"), ...)

  # Note: not used yet!
  launch_learnr <- function(url, toc = "", fun = paste(learnitdown$package, "run", sep = "::"), ...)
    launch_shiny(url = url, toc = toc, fun = fun, ...)

  learnr <- function(id, title = NULL, toc = "", package = learnitdown$package,
    text = "Now make the exercises in the tutorial")
    learnitdown::learnr(id = id, title = title, package = package, toc = toc,
      text = text, toc.def = "Tutoriel {id}",
      rstudio.url = paste(learnitdown$baseurl, learnitdown$rstudio, sep = "/"),
      tuto.img = "images/list-tuto.png",
      tuto.link = paste(learnitdown$baseurl, "tutorial", sep = "/"))

  # Note: use course.urls = c(`S-BIOG-006` = "classroom url1", `S-BIOG-921` = "classroom url2"), and url = link to Github template repository for the assignation
  assignation <- function(name, url, course.urls = NULL, part = NULL, toc = "",
    texts = learnitdown::assignation_fr(course = "GitHub Classroom assignation for the students enrolled in the course"))
    learnitdown::assignation(name = name, url = url, course.urls = course.urls,
      part = part, course.names = stats::setNames(learnitdown$courses_names,
        learnitdown$courses),
      toc = toc, texts = texts, assign.img = "images/list-assign.png",
      assign.link = paste(learnitdown$baseurl, "github_assignation", sep = "/"))

  show_ex_toc <- function(header = "", clear.it = TRUE)
    learnitdown::show_ex_toc(header = header, clear.it = clear.it)

  # Include javascript and css code for {learnitdown} additional features
  # in style.css and header.html, respectively
  learnitdown::learnitdown_init(
    baseurl = learnitdown$baseurl,
    hide.code.msg = "See the code",
    #FR hide.code.msg = "Voir le code",
    institutions = learnitdown$institutions,
    courses = learnitdown$courses)


  # Knitr default options
  knitr::opts_chunk$set(comment = "#", fig.align = "center")
