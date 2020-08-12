--- 
title: "A Test Bookdown Book"
author: "Philippe Grosjean & Guyliann Engels"
date: "2020-08-12"
site: bookdown::bookdown_site
output:
  bookdown::gitbook:
    info: yes
    includes:
      in_header: header.html
      after_body: footer.html
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: phgrosjean/bookdown-test
url: 'http\://phgrosjean.sciviews.org/bookdown-test/'
description: "Tutoriel interactif pour la science des données avec R & SciViews-R."
cover-image: "images/front-cover.png"
---

# Préambule {-}





<style>
.UMONS {
  display: none;
}

.noinstitution {
  display: block;
}

.S-BIOG-006 .S-BIOG-027 .S-BIOG-921 {
  display: none;
}

.nocourse {
  display: block;
}

summary {
  background:  #f5f5f5;
  border: 1px solid #ccc;
}
</style>

<script>
function getParameterByName(name, url) {
  name = name.replace(/[\[\]]/g,"\\$&");
  // Try to get the value from local storage
  if (window.localStorage) {
    return localStorage.getItem(name);
  } else {
    return '';
  }
}

// Collect parameters and store their values (as passed by Moodle/Wordpress)
var login       = getParameterByName('login');
var email       = getParameterByName('email');
var displayname = getParameterByName('displayname');
var firstname   = getParameterByName('firstname');
var lastname    = getParameterByName('lastname');
var iemail      = getParameterByName('iemail');
var iid         = getParameterByName('iid');
var ifirstname  = getParameterByName('ifirstname');
var ilastname   = getParameterByName('ilastname');
var institution = getParameterByName('institution');
var icourse     = getParameterByName('icourse');
var ictitle     = getParameterByName('ictitle');
var iurl        = getParameterByName('iurl');
var iref        = getParameterByName('iref');

let institutions = ['UMONS', 'noinstitution'];
let courses = ['S-BIOG-006', 'S-BIOG-027', 'S-BIOG-921', 'nocourse'];

function toggleDisplay(item, target) {
  var style = item == target ? 'block' : 'none';
  var elems = document.getElementsByClassName(item);
  for (i = 0; i < elems.length; i++) {
    var elem = elems[i];
    elem.style.display = style;
  }
}

function toggleInstitution(name) {
  // Disable all institutions except that one
  // Since they are already all hidden, just reenable it and hide noinstitution
  toggleDisplay('noinstitution', name);
  toggleDisplay(name, name);
}

function toggleCourse(name) {
  // Disable all courses except that one
  // Since they are already all hidden, just reenable it and hide nocourse
  toggleDisplay('nocourse', name);
  toggleDisplay(name, name);
}

function processParameters() {
  // Content related to an institution
  if (institution !== null) {
    toggleInstitution(institution);
  }
  // Content relative to a course
  if (icourse !== null) {
    toggleCourse(icourse);
  }
  // Process other parameters too here...
  // ...
}


function retargetLinks() {
  // If displayed in an iframe, open external links into parent
  // Adapted from Yihui Xie blog
  var links = document.getElementsByTagName('a');
  for (var i = 0; i < links.length; i++) {
    if (/^(https?:)?\/\//.test(links[i].getAttribute('href')) &&
      links[i].target != null) {
      links[i].target = '_parent';
    }
  }
};

window.onload = function() {processParameters(); retargetLinks();};
</script>

<noscript>Please enable JavaScript for learndown extra features.</a></noscript>

\BeginKnitrBlock{info}<div class="info">
::: {#diagnostic}

*Patientez s'il-vous-plait, diagnostic du système en cours...*

<script>diagnoseSystem();</script>
<noscript><b>Le diagnostic ne peut se terminer car Javascript ne fonctionne pas, or il est indispensable pour ce site ! Tout le contenu interactif et contextuel sera inutilisable. Veuillez activer Javascript, s'il-vous-plait...</b></noscript>

:::
</div>\EndKnitrBlock{info}

This is just a demo of the various possibilities of our extended bookdown format.

![](images/front-cover.png)

----

_Le matériel dans cet ouvrage est distribué sous licence [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.fr)._

----

##### System information {-}


```r
sessioninfo::session_info()
```

```
# ─ Session info ───────────────────────────────────────────────────────────────
#  setting  value                       
#  version  R version 3.6.3 (2020-02-29)
#  os       macOS Catalina 10.15.5      
#  system   x86_64, darwin15.6.0        
#  ui       X11                         
#  language (EN)                        
#  collate  en_US.UTF-8                 
#  ctype    en_US.UTF-8                 
#  tz       Europe/Brussels             
#  date     2020-08-12                  
# 
# ─ Packages ───────────────────────────────────────────────────────────────────
#  package     * version    date       lib source                            
#  assertthat    0.2.1      2019-03-21 [1] CRAN (R 3.6.0)                    
#  bookdown      0.18       2020-03-05 [1] CRAN (R 3.6.0)                    
#  cli           2.0.2      2020-02-28 [1] CRAN (R 3.6.0)                    
#  crayon        1.3.4.9000 2020-04-29 [1] Github (r-lib/crayon@dcf6d44)     
#  digest        0.6.25     2020-02-23 [1] CRAN (R 3.6.0)                    
#  evaluate      0.14       2019-05-28 [1] CRAN (R 3.6.0)                    
#  fansi         0.4.1      2020-01-08 [1] CRAN (R 3.6.0)                    
#  glue          1.4.0      2020-04-03 [1] CRAN (R 3.6.2)                    
#  htmltools     0.4.0.9003 2020-04-29 [1] Github (rstudio/htmltools@984b39c)
#  knitr         1.28       2020-02-06 [1] CRAN (R 3.6.0)                    
#  learndown     0.0.9000   2020-08-11 [1] local                             
#  magrittr      1.5        2014-11-22 [1] CRAN (R 3.6.0)                    
#  rlang         0.4.5      2020-03-01 [1] CRAN (R 3.6.0)                    
#  rmarkdown     2.1        2020-01-20 [1] CRAN (R 3.6.0)                    
#  sessioninfo   1.1.1      2018-11-05 [1] CRAN (R 3.6.0)                    
#  stringi       1.4.6      2020-02-17 [1] CRAN (R 3.6.0)                    
#  stringr       1.4.0      2019-02-10 [1] CRAN (R 3.6.0)                    
#  withr         2.2.0      2020-04-20 [1] CRAN (R 3.6.2)                    
#  xfun          0.13       2020-04-13 [1] CRAN (R 3.6.2)                    
#  yaml          2.2.1      2020-02-01 [1] CRAN (R 3.6.0)                    
# 
# [1] /Library/Frameworks/R.framework/Versions/3.6/Resources/library
```
