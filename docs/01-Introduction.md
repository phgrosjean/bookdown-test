# (PART) Course I: test {-}

# Introduction {#intro}

This is a bookdown chapter mostly for demonstration and testing ... I started from [here](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html), then got some pieces from [here](https://github.com/rstudio/bookdown-demo), and finally skimmed the [bookdown book](https://bookdown.org/yihui/bookdown/) and took some notes hereunder. I had also a look at this [blog](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html).

[SciViews](http://www.sciviews.org) (you are supposed to use the [SciViews Box 2020](https://www.sciviews.org/software/svbox/) in parallel to this book for your practical exercises).

![The logo of the SciViews Box](images/intro/svBox-256.png)

~~To convince *someone* to switch to Markdown, show him [this](http://nerdplusart.com/markdown-is-the-future/). A short discussion of html/active documents _versus_ pdf/static printable pages should be nice here.~~

*Now, let's look at special formattings provided by {bookdown}, and by the {learnitdown} additions.*


## Book-wide references

With R Markdown, it is only possible to reference items inside the same document, and there is no numbered figures, tables or equations (at least if LaTeX code is not used, but then, you can only generate a PDF). Bookdown fills the gap with new formatting instructions that work across all documents of the book. It also provides updated versions of R MArkdown output formats that support numbered figures, tables and equations, e.g., `html_document2` to replace `html_document`, for instance.


### Reference to chapter and titles

You can reference **chapters** and **titles** using \@ref(intro). The book is organized in chapters and all numbers are by chapters. However, there are special level 1 title you can use:

- **Parts**: use `# (PART) Part I {-}` just before the first title of that part. 

- **Appendix**: use `# (APPENDIX) Appendix {-}` just before appendices titles. They will be numbered separately.


### Numbered figures and tables

**Figures** and **tables** are in their own environments:


```r
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```

<div class="figure" style="text-align: center">
<img src="01-Introduction_files/figure-html/nice-fig-1.png" alt="Here is a nice figure!" width="80%" />
<p class="caption">(\#fig:nice-fig)Here is a nice figure!</p>
</div>

Reference a figure by its code chunk label with the `fig:` prefix, e.g., see Figure \@ref(fig:nice-fig). Similarly, you can reference tables generated from `knitr::kable()`, e.g., see Table \@ref(tab:nice-tab).


```r
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```



Table: (\#tab:nice-tab)Here is a nice table!

| Sepal.Length| Sepal.Width| Petal.Length| Petal.Width|Species |
|------------:|-----------:|------------:|-----------:|:-------|
|          5.1|         3.5|          1.4|         0.2|setosa  |
|          4.9|         3.0|          1.4|         0.2|setosa  |
|          4.7|         3.2|          1.3|         0.2|setosa  |
|          4.6|         3.1|          1.5|         0.2|setosa  |
|          5.0|         3.6|          1.4|         0.2|setosa  |
|          5.4|         3.9|          1.7|         0.4|setosa  |
|          4.6|         3.4|          1.4|         0.3|setosa  |
|          5.0|         3.4|          1.5|         0.2|setosa  |
|          4.4|         2.9|          1.4|         0.2|setosa  |
|          4.9|         3.1|          1.5|         0.1|setosa  |
|          5.4|         3.7|          1.5|         0.2|setosa  |
|          4.8|         3.4|          1.6|         0.2|setosa  |
|          4.8|         3.0|          1.4|         0.1|setosa  |
|          4.3|         3.0|          1.1|         0.1|setosa  |
|          5.8|         4.0|          1.2|         0.2|setosa  |
|          5.7|         4.4|          1.5|         0.4|setosa  |
|          5.4|         3.9|          1.3|         0.4|setosa  |
|          5.1|         3.5|          1.4|         0.3|setosa  |
|          5.7|         3.8|          1.7|         0.3|setosa  |
|          5.1|         3.8|          1.5|         0.3|setosa  |


### Numbered equations

To number equations and allow to refer to them, use an `equation` environment and label them with the syntax `(\#eq:label)`:

\begin{equation} 
  f\left(k\right) = \binom{n}{k} p^k\left(1-p\right)^{n-k}
  (\#eq:binom)
\end{equation} 

... and here, I refer to eq. \@ref(eq:binom). In the vase equations are not labelled, use the `equation*` environment instead.


## Citations

You can reference citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].


## Cache long computations

If some computation is time-consuming, we could consider to cache it:


```r
# A verrry long computation!
1 + 1
```

```
# [1] 2
```

## Contextual show/hide sections

In this example, two classes, `UMONS` and `noinstitution` allow to define sections that are displayed for UMONS students (when the book is launched from UMONS Moodle), or for the general public.

----

::: {.UMONS}

> **This content is _UMONS_-specific.**

:::

::: {.noinstitution}

This content is displayed when the document is loaded outside of UMONS Moodle.

It is also the default content on the web. So that one can provide viable alternatives to exercices outside of the UMONS context in a transparent way (no need any more to indicate "for UMONS students, do this, for the others, do that"). Distinction is made via the URL by detecting `?institution=UMONS`.

:::

----

::: {.S-BIOG-006}

> **This content is specific for the course S-BIOG-006 (Biological Data Science course I, first part).**

:::

::: {.S-BIOG-921}

> **This content is specific for the course S-BIOG-921 (Biological Data Science course I at Charleroi).**

:::

::: {.S-BIOG-006 .S-BIOG-027}

> **This content is specific for the whole course Biological Data Science course I, first & second parts, that is, S-BIOG-006 or S-BIOG-027).**

:::

::: {.nocourse}

This content is displayed when the document is loaded outside of a course context.

It is also the default course content on the web. So that one can provide viable alternatives to exercices outside of the UMONS context in a transparent way (no need any more to indicate "for UMONS students, do this, for Charleroi students, do that..."). Distinction is made via the URL by detecting, e.g., `?icourse=S-BIOG-006`. The calss that can be used are\ : `nocourse`, `sdd1m`, `sdd2m`, `sdd3m`, `sdd4m`, `sdd5m`, `sdd1c` or `sdd2c` for our various courses at UMONS.

:::

----

Otherwise, for further details, one can use the`<details>...</details>` construct:

<details>
<summary>More details...</summary>
This is a section that provides further explanations.

There can be several paragraphs!

----
</details>

And this is again normal text...

## Shiny app

A shiny application directly inside the book using an iframe. The application is **not** started when the page is loaded, but the user has to click on an image which is a screenshot of the application.

<!-- example with default name... but not very explicit => redefine URL in RSConnect -->

[<img onclick="launchApp('B04_exponentshiny', 'https://sdd.umons.ac.be/B04_exponent/');" src="images/shinyapps/B04_exponent.png" width="780" height="568" class="shiny-img" id="imgB04_exponentshiny"/>
<iframe width="780" height="568" frameborder="0" scrolling="auto" style="display:none" class="shiny-app" id="B04_exponentshiny"></iframe>]{#B04_exponent }
*Click to start or [run `BioDataScience1::runApp("B04_exponent")`](https://wp.sciviews.org/start_rstudio2020.html?runrcode=BioDataScience1%3A%3ArunApp%28%22B04_exponent%22%29) in RStudio.*


Another one from a different server\ :

[<img onclick="launchApp('url-parametersshiny', 'https://phgrosjean.shinyapps.io/url-parameters/');" src="images/shinyapps/url-parameters.png" width="780" height="686" class="shiny-img" id="imgurl-parametersshiny"/>
<iframe width="780" height="686" frameborder="0" scrolling="auto" style="display:none" class="shiny-app" id="url-parametersshiny"></iframe>]{#url-parameters }
*Click to start or [run `BioDataScience1::runApp("url-parameters")`](https://wp.sciviews.org/start_rstudio2020.html?runrcode=BioDataScience1%3A%3ArunApp%28%22url-parameters%22%29) in RStudio.*



## Learnr with one exercise and one quizz

A simple learnr document\ :

[<img onclick="launchApp('learnrshiny', 'https://phgrosjean.shinyapps.io/learnr/');" src="images/shinyapps/learnr.png" width="780" height="600" class="shiny-img" id="imglearnrshiny"/>
<iframe width="780" height="600" frameborder="0" scrolling="auto" style="display:none" class="shiny-app" id="learnrshiny"></iframe>]{#learnr }
*Click to start or [run `BioDataScience1::run("learnr")`](https://wp.sciviews.org/start_rstudio2020.html?runrcode=BioDataScience1%3A%3Arun%28%22learnr%22%29) in RStudio.*



## A Coggle mind map

<iframe width='780' height='500' src='https://embed.coggle.it/diagram/XmZC8uMesCWdXGt6/70b78931eae4a12991c10df0f7f2f49f498e58ad68cc66e3f82da43b57951f3e' frameborder='0' allowfullscreen></iframe>

## H5P content

H5P content can be displayed in iframes. Here is an example of a multiple choice widget:



[]{#h5p_7}[![h5p](images/list-h5p.png)](https://wp.sciviews.org/h5p)
<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=7" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen" class="h5p"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Here is a "drag words" widget:

[]{#h5p_6}[![h5p](images/list-h5p.png)](https://wp.sciviews.org/h5p)
<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=6" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen" class="h5p"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Here is a video widget:

[]{#h5p_8}[![h5p](images/list-h5p.png)](https://wp.sciviews.org/h5p)
<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=8" width="780" height="500" frameborder="0" allowfullscreen="allowfullscreen" class="h5p"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Some text...


## Add a Gist

<script src="https://gist.github.com/GuyliannEngels/e349f835d11ec3f585bd27c0daa47012.js"></script>

and for an R markdown document:

<script src="https://gist.github.com/GuyliannEngels/dea087d0bd2321a2ae896211bdc6b4b8.js"></script>


## Embed a youtube video

<iframe width="770" height="433" src="https://www.youtube.com/embed/yIVXjl4SwVo?rel=0" frameborder="0" allowfullscreen></iframe>


## Special blocks

<div class="note">
<p>This is a <strong>note</strong>.</p>
</div>

<div class="info">
<p>This is an <strong>information</strong>.</p>
</div>

<div class="warning">
<p>This is a <strong>warning</strong>.</p>
</div>

<div class="error">
<p>This block can be used in case of <strong>error</strong>.</p>
</div>

<div class="win">
<p>This is related to <strong>Windows</strong>.</p>
</div>

<div class="mac">
<p>This is related to <strong>MacOS</strong>.</p>
</div>

<div class="linux">
<p>This is related to <strong>Linux</strong>.</p>
</div>

<div class="bdd">
<p>This is related to the <code>BioDataScience</code> package.</p>
</div>

\BeginKnitrBlock{sv}<div class="sv">This is a `block2` construct related to `SciViews` or `SciViews::R`:

- item 1
- item 2
- item 3
</div>\EndKnitrBlock{sv}

<div class="svbox">
<p>This is a section related to the <strong>SciViews Box</strong>…</p>
</div>

