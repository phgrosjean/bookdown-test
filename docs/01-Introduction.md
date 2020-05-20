# (PART) Course I: test {-}

# Introduction {#intro}



This is a bookdown chapter mostly for demonstration and testing ... I started from [here](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html), then got some pieces from [here](https://github.com/rstudio/bookdown-demo), and finally skimmed the [bookdown book](https://bookdown.org/yihui/bookdown/) and took some notes hereunder. I had also a look at this [blog](http://seankross.com/2016/11/17/How-to-Start-a-Bookdown-Book.html).

[SciViews](http://www.sciviews.org)

~~To convince *someone* to switch to Markdown, show him [this](http://nerdplusart.com/markdown-is-the-future/). A short discussion of html/active documents _versus_ pdf/static printable pages should be nice here.~~

*Now, let's look at special formattings provided by bookdown.*


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
# [1] 2
```

## Contextual show/hide sections

In this example, two classes, `UMONS` and `noinstitution` allow to define sections that are displayed for UMONS students (when the book is launched from UMONS Moodle), or for the general public.

----

::: {class="UMONS"}

> **This content is _UMONS_-specific.**

:::

::: {class="noinstitution"}

This content is displayed when the document is loaded outside of UMONS Moodle.

It is also the default content on the web. So that one can provide viable alternatives to exercices outside of the UMONS context in a transparent way (no need any more to indicate "for UMONS students, do this, for the others, do that"). Distinction is made via the URL by detecting `?institution=UMONS`.

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

A shiny application directly inside the book using an iframe. This application demonstrates how an histogram changes when the number of classes is modified.



<img onclick="launchApp('app1', 'https://phgrosjean.shinyapps.io/url-parameters/');" src="images/sdd1_01/app1.png" width="780" height="700" class="shiny-img" id="imgapp1"/>
<iframe width="780" height="700" frameborder="0" scrolling="auto" style="display:none" class="shiny-app" id="app1"></iframe>
*Cliquez pour lancer ou exécutez `BioDataScience::runApp("url-parameters")` dans la svbox2019.*

## Learnr with one exercise and one quizz

A simple learnr document from `shinyapps.io`\ :

<img onclick="launchApp('app2', 'https://phgrosjean.shinyapps.io/learnr/');" src="images/sdd1_01/app2.png" width="780" height="500" class="shiny-img" id="imgapp2"/>
<iframe width="780" height="500" frameborder="0" scrolling="auto" style="display:none" class="shiny-app" id="app2"></iframe>
*Cliquez pour démarrer le learnr ou exécutez `BioDataScience::run("sdd1-01b")` dans la svbox2019.*

## A Coggle mind map

<iframe width='780' height='500' src='https://embed.coggle.it/diagram/XmZC8uMesCWdXGt6/70b78931eae4a12991c10df0f7f2f49f498e58ad68cc66e3f82da43b57951f3e' frameborder='0' allowfullscreen></iframe>

## H5P content

H5P content can be displayed in iframes. Here is an example of a multiple choice widget:

<!--
<script>
var captureAllH5pContentTypes = '1';
var debugEnabled = '1';
var h5pContentTypes = [""];
var wpAJAXurl = "https://wp.sciviews.org/wp-admin/admin-ajax.php";
</script>

<script src="https://wp.sciviews.org/wp-content/plugins/h5pxapikatchu/js/h5pxapikatchu-variables.js?ver=0.4.2" charset="UTF-8"></script>
-->

<script>H5PIntegration = {"baseUrl":"https:\/\/wp.sciviews.org","url":"\/wp-content\/uploads\/h5p","postUserStatistics":false,"ajax":{"setFinished":"https:\/\/wp.sciviews.org\/wp-admin\/admin-ajax.php?token=e6b10366a6&action=h5p_setFinished","contentUserData":"https:\/\/wp.sciviews.org\/wp-admin\/admin-ajax.php?token=ea1774d67b&action=h5p_contents_user_data&content_id=:contentId&data_type=:dataType&sub_content_id=:subContentId"},"saveFreq":"30","siteUrl":"https:\/\/wp.sciviews.org","l10n":{"H5P":{"fullscreen":"Fullscreen","disableFullscreen":"Disable fullscreen","download":"Download","copyrights":"Rights of use","embed":"Embed","size":"Size","showAdvanced":"Show advanced","hideAdvanced":"Hide advanced","advancedHelp":"Include this script on your website if you want dynamic sizing of the embedded content:","copyrightInformation":"Rights of use","close":"Close","title":"Title","author":"Author","year":"Year","source":"Source","license":"License","thumbnail":"Thumbnail","noCopyrights":"No copyright information available for this content.","reuse":"Reuse","reuseContent":"Reuse Content","reuseDescription":"Reuse this content.","downloadDescription":"Download this content as a H5P file.","copyrightsDescription":"View copyright information for this content.","embedDescription":"View the embed code for this content.","h5pDescription":"Visit H5P.org to check out more cool content.","contentChanged":"This content has changed since you last used it.","startingOver":"You'll be starting over.","by":"by","showMore":"Show more","showLess":"Show less","subLevel":"Sublevel","confirmDialogHeader":"Confirm action","confirmDialogBody":"Please confirm that you wish to proceed. This action is not reversible.","cancelLabel":"Cancel","confirmLabel":"Confirm","licenseU":"Undisclosed","licenseCCBY":"Attribution","licenseCCBYSA":"Attribution-ShareAlike","licenseCCBYND":"Attribution-NoDerivs","licenseCCBYNC":"Attribution-NonCommercial","licenseCCBYNCSA":"Attribution-NonCommercial-ShareAlike","licenseCCBYNCND":"Attribution-NonCommercial-NoDerivs","licenseCC40":"4.0 International","licenseCC30":"3.0 Unported","licenseCC25":"2.5 Generic","licenseCC20":"2.0 Generic","licenseCC10":"1.0 Generic","licenseGPL":"General Public License","licenseV3":"Version 3","licenseV2":"Version 2","licenseV1":"Version 1","licensePD":"Public Domain","licenseCC010":"CC0 1.0 Universal (CC0 1.0) Public Domain Dedication","licensePDM":"Public Domain Mark","licenseC":"Copyright","contentType":"Content Type","licenseExtras":"License Extras","changes":"Changelog","contentCopied":"Content is copied to the clipboard","connectionLost":"Connection lost. Results will be stored and sent when you regain connection.","connectionReestablished":"Connection reestablished.","resubmitScores":"Attempting to submit stored results.","offlineDialogHeader":"Your connection to the server was lost","offlineDialogBody":"We were unable to send information about your completion of this task. Please check your internet connection.","offlineDialogRetryMessage":"Retrying in :num....","offlineDialogRetryButtonLabel":"Retry now","offlineSuccessfulSubmit":"Successfully submitted results."}},"hubIsEnabled":true,"reportingIsEnabled":true,"libraryConfig":null,"crossorigin":null,"crossoriginCacheBuster":null,"pluginCacheBuster":"?v=1.15.0","libraryUrl":"https:\/\/wp.sciviews.org\/wp-content\/plugins\/h5p\/h5p-php-library\/js","core":{"styles":["\/wp-content\/plugins\/h5p\/h5p-php-library\/styles\/h5p.css?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/styles\/h5p-confirmation-dialog.css?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/styles\/h5p-core-button.css?ver=1.15.0"],"scripts":["\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/jquery.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-event-dispatcher.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-x-api-event.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-x-api.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-content-type.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-confirmation-dialog.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-action-bar.js?ver=1.15.0","\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/request-queue.js?ver=1.15.0"]},"loadedJs":[],"loadedCss":[],"contents":{"cid-7":{"library":"H5P.MultiChoice 1.14","jsonContent":"{\"answers\":[{\"correct\":false,\"tipsAndFeedback\":{\"tip\":\"\",\"chosenFeedback\":\"\",\"notChosenFeedback\":\"\"},\"text\":\"<div>The header of the document<\\\/div>\\n\"},{\"correct\":true,\"tipsAndFeedback\":{\"tip\":\"\",\"chosenFeedback\":\"<div>Excellent! A chunk is indeed a special area delimited by \\u0010\\u0010```{R} and ``` tags that contains R code to be evaluated in place when the document is compiled.<\\\/div>\\n\",\"notChosenFeedback\":\"<div>Oww! You should go back to the capsule about R Markdown to learn what a chunk is.<\\\/div>\\n\"},\"text\":\"<div>An area that contains R code<\\\/div>\\n\"},{\"correct\":false,\"tipsAndFeedback\":{\"tip\":\"\",\"chosenFeedback\":\"\",\"notChosenFeedback\":\"\"},\"text\":\"<div>A area that contains markdown text<\\\/div>\\n\"}],\"overallFeedback\":[{\"from\":0,\"to\":100}],\"UI\":{\"checkAnswerButton\":\"Check\",\"showSolutionButton\":\"Show solution\",\"tryAgainButton\":\"Retry\",\"tipsLabel\":\"Show tip\",\"scoreBarLabel\":\"You got :num out of :total points\",\"tipAvailable\":\"Tip available\",\"feedbackAvailable\":\"Feedback available\",\"readFeedback\":\"Read feedback\",\"wrongAnswer\":\"Wrong answer\",\"correctAnswer\":\"Correct answer\",\"shouldCheck\":\"Should have been checked\",\"shouldNotCheck\":\"Should not have been checked\",\"noInput\":\"Please answer before viewing the solution\"},\"behaviour\":{\"enableRetry\":true,\"enableSolutionsButton\":true,\"enableCheckButton\":true,\"type\":\"auto\",\"singlePoint\":true,\"randomAnswers\":true,\"showSolutionsRequiresInput\":true,\"confirmCheckDialog\":false,\"confirmRetryDialog\":false,\"autoCheck\":false,\"passPercentage\":100,\"showScorePoints\":true},\"confirmCheck\":{\"header\":\"Finish ?\",\"body\":\"Are you sure you wish to finish ?\",\"cancelLabel\":\"Cancel\",\"confirmLabel\":\"Finish\"},\"confirmRetry\":{\"header\":\"Retry ?\",\"body\":\"Are you sure you wish to retry ?\",\"cancelLabel\":\"Cancel\",\"confirmLabel\":\"Confirm\"},\"question\":\"<p>What is a chunk in R Markdown?<\\\/p>\\n\",\"media\":{\"disableImageZooming\":false}}","fullScreen":"0","exportUrl":"\/wp-content\/uploads\/h5p\/exports\/multiple-choice-7.h5p","embedCode":"<iframe src=\"https:\/\/wp.sciviews.org\/wp-admin\/admin-ajax.php?action=h5p_embed&id=7\" width=\":w\" height=\":h\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><\/iframe>","resizeCode":"<script src=\"https:\/\/wp.sciviews.org\/wp-content\/plugins\/h5p\/h5p-php-library\/js\/h5p-resizer.js\" charset=\"UTF-8\"><\/script>","url":"https:\/\/wp.sciviews.org\/wp-admin\/admin-ajax.php?action=h5p_embed&id=7","title":"multiple-choice","displayOptions":{"frame":false,"export":false,"embed":true,"copyright":false,"icon":false,"copy":false},"metadata":{"title":"multiple-choice","license":"U"},"contentUserData":[{"state":"{}"}],"scripts":["\/wp-content\/uploads\/h5p\/cachedassets\/bbb484ab91a596c1d881578ee3d99ab92df05f05.js","https:\/\/wp.sciviews.org\/wp-content\/plugins\/h5pxapikatchu\/js\/h5pxapikatchu-listener.js?ver=0.4.2"],"styles":["\/wp-content\/uploads\/h5p\/cachedassets\/bbb484ab91a596c1d881578ee3d99ab92df05f05.css"]}}};</script><link rel='stylesheet' id='h5p-core-styles-h5p-css'  href='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/styles/h5p.css?ver=1.15.0' media='all' />
<link rel='stylesheet' id='h5p-core-styles-h5p-confirmation-dialog-css'  href='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/styles/h5p-confirmation-dialog.css?ver=1.15.0' media='all' />
<link rel='stylesheet' id='h5p-core-styles-h5p-core-button-css'  href='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/styles/h5p-core-button.css?ver=1.15.0' media='all' />
<script src='https://wp.sciviews.org/wp-includes/js/wp-embed.min.js?ver=5.4.1'></script>

<!--
<script src='https://wp.sciviews.org/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
<script src='https://wp.sciviews.org/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
-->

<script>
var wpAJAXurl = "https:\/\/wp.sciviews.org\/wp-admin\/admin-ajax.php";
var debugEnabled = "0";
var captureAllH5pContentTypes = "1";
var h5pContentTypes = [""];
</script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5pxapikatchu/js/h5pxapikatchu-variables.js?ver=0.4.2'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/jquery.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-event-dispatcher.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-x-api-event.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-x-api.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-content-type.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-confirmation-dialog.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-action-bar.js?ver=1.15.0'></script>
<script src='https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/request-queue.js?ver=1.15.0'></script>


<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=7" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Here is a "drag words" widget:

<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=6" width="780" height="270" frameborder="0" allowfullscreen="allowfullscreen"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Here is a video widget:

<iframe src="https://wp.sciviews.org/wp-admin/admin-ajax.php?action=h5p_embed&id=8" width="780" height="500" frameborder="0" allowfullscreen="allowfullscreen"></iframe><script src="https://wp.sciviews.org/wp-content/plugins/h5p/h5p-php-library/js/h5p-resizer.js" charset="UTF-8"></script>

Some text...

<script>
H5P.externalDispatcher.on('xAPI', function(event) {
  // Handle the event here, the statement is within event.data.statement
console.log(event.data.statement);
});
</script>

## Try to add Moodle content

<iframe src="https://moodle.umons.ac.be/mod/quiz/attempt.php?attempt=212622&cmid=116372" width="780" height="270" frameborder="0"></iframe>


## Add a Gist

<script src="https://gist.github.com/GuyliannEngels/e349f835d11ec3f585bd27c0daa47012.js"></script>

and for an R markdown document:

<script src="https://gist.github.com/GuyliannEngels/dea087d0bd2321a2ae896211bdc6b4b8.js"></script>


## Embed a youtube video

<iframe width="770" height="433" src="http://www.youtube.com/embed/yIVXjl4SwVo?rel=0" frameborder="0" allowfullscreen></iframe>


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


**TODO:** browse the bookdown book from 2.4 Figures on....
