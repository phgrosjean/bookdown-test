# Introduction {#intro}

This is my first bookdown, ... and a sandbox to test its features. I started from [here](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html), then got some pieces from [here](https://github.com/rstudio/bookdown-demo), and finally skimmed the [bookdown book](https://bookdown.org/yihui/bookdown/) and took some notes hereunder. I had also a look at this [blog](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html).

To convine someone to switch to Markdown, show him [this](http://nerdplusart.com/markdown-is-the-future/). A short discussion of html/active documents _versus_ pdf/static printable pages should be nice here.

*Now, let's look at spacial formattings provided by bookdown.*


## Book-wide references

With R Markdown, it is only possible to reference items inside the same document, and there is no numbered figures, tables or equations (at least if LaTeX code is not used, but then, you can olny generate a PDF). Bookdown fills the gap with new formatting instructions that work across all documents of the book. It also provides updated versions of R MArkdown output formats that support numbered figures, tables and equations, e.g., `html_document2` to replace `html_document`, for instance.


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

 Sepal.Length   Sepal.Width   Petal.Length   Petal.Width  Species 
-------------  ------------  -------------  ------------  --------
          5.1           3.5            1.4           0.2  setosa  
          4.9           3.0            1.4           0.2  setosa  
          4.7           3.2            1.3           0.2  setosa  
          4.6           3.1            1.5           0.2  setosa  
          5.0           3.6            1.4           0.2  setosa  
          5.4           3.9            1.7           0.4  setosa  
          4.6           3.4            1.4           0.3  setosa  
          5.0           3.4            1.5           0.2  setosa  
          4.4           2.9            1.4           0.2  setosa  
          4.9           3.1            1.5           0.1  setosa  
          5.4           3.7            1.5           0.2  setosa  
          4.8           3.4            1.6           0.2  setosa  
          4.8           3.0            1.4           0.1  setosa  
          4.3           3.0            1.1           0.1  setosa  
          5.8           4.0            1.2           0.2  setosa  
          5.7           4.4            1.5           0.4  setosa  
          5.4           3.9            1.3           0.4  setosa  
          5.1           3.5            1.4           0.3  setosa  
          5.7           3.8            1.7           0.3  setosa  
          5.1           3.8            1.5           0.3  setosa  


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
## [1] 2
```


## Add H5P content

H5P content can be displayed in iframes. Here is an example of a multiple choice widget:

<iframe src="h5p/multiple-choice.html" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

... and the same one, directly from the h5p.org site:

<iframe src="https://h5p.org/h5p/embed/307685" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen"></iframe><script src="https://h5p.org/sites/all/modules/h5p/library/js/h5p-resizer.js" charset="UTF-8"></script>

Here is a "drag words" widget:

<iframe src="h5p/drag-words.html" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

Here is a "video" widget:


## Add Moodle content

<iframe src="https://moodle.umons.ac.be/mod/quiz/attempt.php?attempt=212622&cmid=116372" width="780" height="270" frameborder="0"></iframe>


## Add a Gist

<script src="https://gist.github.com/GuyliannEngels/e349f835d11ec3f585bd27c0daa47012.js"></script>

and for a R markdown document:

<script src="https://gist.github.com/GuyliannEngels/dea087d0bd2321a2ae896211bdc6b4b8.js"></script>


## Embed a youtube video

<iframe width="770" height="433" src="http://www.youtube.com/embed/yIVXjl4SwVo?rel=0" frameborder="0" allowfullscreen></iframe>


## Blocs spéciaux

<div class="note">
<p>Ceci est une <strong>note</strong>.</p>
</div>

<div class="info">
<p>Ceci est une <strong>information</strong>.</p>
</div>

<div class="warning">
<p>Ceci est un <strong>avertissement</strong>.</p>
</div>

<div class="error">
<p>Ceci est à utiliser en cas d'<strong>erreur</strong>.</p>
</div>

<div class="win">
<p>Ceci est relatif à <strong>Windows</strong>.</p>
</div>

<div class="mac">
<p>Ceci est relatif au <strong>Mac</strong>.</p>
</div>

<div class="linux">
<p>Ceci est relatif à <strong>Linux</strong>.</p>
</div>

<div class="bdd">
<p>Ceci est relatif au package <code>BioDataScience</code>.</p>
</div>

\BeginKnitrBlock{sv}<div class="sv">Ceci est une zone `block2` relative à `SciViews` ou `SciViews::R`:

- item 1
- item 2
- item 3
</div>\EndKnitrBlock{sv}

<div class="svbox">
<p>Ceci est une section relative à la <strong>SciViews Box</strong>...</p>
</div>


**TODO:** browse the bookdown book from 2.4 Figures on....

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEyMDMxNDg4ODUsODY2MTMzNTQyXX0=
-->
