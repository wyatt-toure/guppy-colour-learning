<p align="center">
<img src="https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/images/training-data-animation.gif" style="display:block; margin: 0 auto;"   width = '50%'>
</p>

## Summary

This is the GitHub repository containing all the code to produce the analyses and figures in the manuscript <span style="text-decoration:underline">‘Colour biases in learned foraging preferences
in Trinidadian guppies’</span>. 

## Website

A reader-friendly website which walks through each of the models in the manuscript is available at https://wyatt-toure.github.io/guppy-colour-learning-project/.

## Directory structure

- `data/` contains the raw data used to conduct the analyses
- `docs/` contains the reader-friendly html write-up of the analyses, the GitHub pages site is built from this folder
- `figs/` contains the individual files for the figures and residual diagnostic plots produced by the analysis script 
- `images/` contains relevant images and videos of the experiment

The root directory contains all the Rmd scripts used to conduct the analyses and render the website. 

The R code for the analysis can be found in [analysis-script-colour-project.Rmd](https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/analysis-script-colour-project.Rmd). 

The methods page is built from the [methods.Rmd](https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/methods.Rmd) file and the home page is built from the [index.Rmd](https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/index.Rmd) file.

## Metadata

Data are available in the [colour-learning-project-data.csv](https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/data/colour-learning-project-data.csv) file.

Below I  present the [metadata](#metadata) for the dataset and the [packages required](#required-tools-and-references) to conduct the analyses and construct the website as well as their versions and citations. 

| Variable                    | Description                                                                                                                  |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------|
| id                          | The individual ID of a guppy                                                                                                 |
| trial                       | The trial number                                                                                                             |
| distance.moved              | The distance moved (centimeters)                                                                                             |
| mean.velocity               | The mean velocity (centimeters per second)                                                                                   |
| time.in.periphery           | The amount of time spent in the periphery of the tank (seconds)                                                              |
| time.in.center              | The amonut of time spent in the center of the tank (seconds)                                                                 |
| left.visits.object          | The number of times a guppy came within 2 body lengths of the object placed on the left side of the tank                     |
| left.time.object            | The amount of time a guppy spent within 2 body lengths of the object placed on the left side of the tank (seconds)           |
| left.latency.object         | The time it took for a guppy to first come within 2 body lengths of the object placed on the left side of the tank (seconds) |
| right.visits.object         | The number of times a guppy came within 2 body lengths of the object placed on the right side of the tank                    |
| right.time.object           | The amount of time a guppy spent within 2 body lengths of the object placed on the left side of the tank (seconds)           |
| right.latency.object        | The time it took for a guppy to first come within 2 body lengths of the object placed on the left side of the tank (seconds) |
| freezes                     | The number of times a guppy halted movement                                                                                  |
| time.freezing               | The amount of time a guppy spent not moving (seconds)                                                                        |
| object.side.my.view         | The side of the tank the rewarding object was on from my perspective                                                         |
| object.side.etho.view       | The side of the tank the rewarding object was on from the camera's perspective (inverted from mine)                          |
| time.with.trained.object    | The amount of time a guppy spent within 2 body lengths of the object they were trained to (seconds)                          |
| time.with.untrained.object  | The amount of time a guppy spent within 2 body lengths of the object they were not trained to (seconds)                      |
| latency.trained.object      | The amount of time it took a guppy to get within 2 body lengths of the object they were trained to (seconds)                 |
| latency.untrained.object    | The amount of time it took a guppy to get within 2 body lengths of the object they were not trained to (seconds)             |
| prop.time.trained.object    | The proportion of time guppies spent within 2 body lengths of the object they were trained to                                |
| visits.trained.object       | The number of times a guppy came within 2 body lengths of the object they were trained to                                    |
| visits.untrained.object     | The number of times a guppy came within 2 body lengths of the object they were not trained to                                |
| rewarding.object.colour     | The colour of the object a guppy was trained to                                                                              |
| first.choice                | The first object a guppy came within 2 body lengths of                                                                       |
| distance.moved.in.periphery | The distance moved in the periphery (centimeters)                                                                            |
| distance.moved.in.center    | The distance moved in the center (centimeters)                                                                               |
| ate                         | Whether a guppy ate during the trial or not                                                                                  |
| trial.type                  | The type of trial (training or testing)                                                                                      |

## Required tools and references
<div id="tools-used-and-references" class="section level1">
<table>
<colgroup>
<col width="3%" />
<col width="3%" />
<col width="93%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Package</th>
<th align="left">Version</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">broom</td>
<td align="left">0.5.5</td>
<td align="left">David Robinson and Alex Hayes (2020). broom: Convert Statistical Analysis Objects into Tidy Tibbles. R package version 0.5.5. <a href="https://CRAN.R-project.org/package=broom" class="uri">https://CRAN.R-project.org/package=broom</a></td>
</tr>
<tr class="even">
<td align="left">broom.mixed</td>
<td align="left">0.2.6</td>
<td align="left">Ben Bolker and David Robinson (2020). broom.mixed: Tidying Methods for Mixed Models. R package version 0.2.6. <a href="https://CRAN.R-project.org/package=broom.mixed" class="uri">https://CRAN.R-project.org/package=broom.mixed</a></td>
</tr>
<tr class="odd">
<td align="left">carData</td>
<td align="left">3.0.3</td>
<td align="left">John Fox, Sanford Weisberg and Brad Price (2019). carData: Companion to Applied Regression Data Sets. R package version 3.0-3. <a href="https://CRAN.R-project.org/package=carData" class="uri">https://CRAN.R-project.org/package=carData</a></td>
</tr>
<tr class="even">
<td align="left">cowplot</td>
<td align="left">1.0.0</td>
<td align="left">Claus O. Wilke (2019). cowplot: Streamlined Plot Theme and Plot Annotations for ‘ggplot2.’ R package version 1.0.0. <a href="https://CRAN.R-project.org/package=cowplot" class="uri">https://CRAN.R-project.org/package=cowplot</a></td>
</tr>
<tr class="odd">
<td align="left">DHARMa</td>
<td align="left">0.3.3.0</td>
<td align="left">Florian Hartig (2020). DHARMa: Residual Diagnostics for Hierarchical (Multi-Level / Mixed) Regression Models. R package version 0.3.3.0. <a href="http://florianhartig.github.io/DHARMa/" class="uri">http://florianhartig.github.io/DHARMa/</a></td>
</tr>
<tr class="even">
<td align="left">dplyr</td>
<td align="left">1.0.3</td>
<td align="left">Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2021). dplyr: A Grammar of Data Manipulation. R package version 1.0.3. <a href="https://CRAN.R-project.org/package=dplyr" class="uri">https://CRAN.R-project.org/package=dplyr</a></td>
</tr>
<tr class="odd">
<td align="left">effects</td>
<td align="left">4.1.4</td>
<td align="left">John Fox and Sanford Weisberg (2019). An R Companion to Applied Regression, 3rd Edition. Thousand Oaks, CA <a href="http://tinyurl.com/carbook" class="uri">http://tinyurl.com/carbook</a></td>
</tr>
<tr class="even">
<td align="left">emmeans</td>
<td align="left">1.5.1</td>
<td align="left">Russell Lenth (2020). emmeans: Estimated Marginal Means, aka Least-Squares Means. R package version 1.5.1. <a href="https://CRAN.R-project.org/package=emmeans" class="uri">https://CRAN.R-project.org/package=emmeans</a></td>
</tr>
<tr class="odd">
<td align="left">Formula</td>
<td align="left">1.2.3</td>
<td align="left">Achim Zeileis, Yves Croissant (2010). Extended Model Formulas in R: Multiple Parts and Multiple Responses. Journal of Statistical Software 34(1), 1-13. <a href="doi:10.18637/jss.v034.i01" class="uri">doi:10.18637/jss.v034.i01</a></td>
</tr>
<tr class="even">
<td align="left">ggplot2</td>
<td align="left">3.3.3</td>
<td align="left">H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.</td>
</tr>
<tr class="odd">
<td align="left">ggpubr</td>
<td align="left">0.2.5</td>
<td align="left">Alboukadel Kassambara (2020). ggpubr: ‘ggplot2’ Based Publication Ready Plots. R package version 0.2.5. <a href="https://CRAN.R-project.org/package=ggpubr" class="uri">https://CRAN.R-project.org/package=ggpubr</a></td>
</tr>
<tr class="even">
<td align="left">glmmTMB</td>
<td align="left">1.0.0</td>
<td align="left">Mollie E. Brooks, Kasper Kristensen, Koen J. van Benthem, Arni Magnusson, Casper W. Berg, Anders Nielsen, Hans J. Skaug, Martin Maechler and Benjamin M. Bolker (2017). glmmTMB Balances Speed and Flexibility Among Packages for Zero-inflated Generalized Linear Mixed Modeling. The R Journal, 9(2), 378-400.</td>
</tr>
<tr class="odd">
<td align="left">Hmisc</td>
<td align="left">4.3.1</td>
<td align="left">Frank E Harrell Jr, with contributions from Charles Dupont and many others. (2020). Hmisc: Harrell Miscellaneous. R package version 4.3-1. <a href="https://CRAN.R-project.org/package=Hmisc" class="uri">https://CRAN.R-project.org/package=Hmisc</a></td>
</tr>
<tr class="even">
<td align="left">knitr</td>
<td align="left">1.30</td>
<td align="left">Yihui Xie (2020). knitr: A General-Purpose Package for Dynamic Report Generation in R. R package version 1.30.</td>
</tr>
<tr class="odd">
<td align="left">lattice</td>
<td align="left">0.20.38</td>
<td align="left">Sarkar, Deepayan (2008) Lattice: Multivariate Data Visualization with R. Springer, New York. ISBN 978-0-387-75968-5</td>
</tr>
<tr class="even">
<td align="left">lme4</td>
<td align="left">1.1.21</td>
<td align="left">Douglas Bates, Martin Maechler, Ben Bolker, Steve Walker (2015). Fitting Linear Mixed-Effects Models Using lme4. Journal of Statistical Software, 67(1), 1-48. <a href="doi:10.18637/jss.v067.i01" class="uri">doi:10.18637/jss.v067.i01</a>.</td>
</tr>
<tr class="odd">
<td align="left">lmerTest</td>
<td align="left">3.1.1</td>
<td align="left">Kuznetsova A, Brockhoff PB, Christensen RHB (2017). “lmerTest Package:Tests in Linear Mixed Effects Models.” <em>Journal of StatisticalSoftware</em>, <em>82</em>(13), 1-26. doi: 10.18637/jss.v082.i13 (URL:<a href="https://doi.org/10.18637/jss.v082.i13" class="uri">https://doi.org/10.18637/jss.v082.i13</a>).</td>
</tr>
<tr class="even">
<td align="left">magick</td>
<td align="left">2.6.0</td>
<td align="left">Jeroen Ooms (2021). magick: Advanced Graphics and Image-Processing in R. R package version 2.6.0. <a href="https://CRAN.R-project.org/package=magick" class="uri">https://CRAN.R-project.org/package=magick</a></td>
</tr>
<tr class="odd">
<td align="left">magrittr</td>
<td align="left">2.0.1</td>
<td align="left">Stefan Milton Bache and Hadley Wickham (2020). magrittr: A Forward-Pipe Operator for R. R package version 2.0.1. <a href="https://CRAN.R-project.org/package=magrittr" class="uri">https://CRAN.R-project.org/package=magrittr</a></td>
</tr>
<tr class="even">
<td align="left">MASS</td>
<td align="left">7.3.51.4</td>
<td align="left">Venables, W. N. &amp; Ripley, B. D. (2002) Modern Applied Statistics with S. Fourth Edition. Springer, New York. ISBN 0-387-95457-0</td>
</tr>
<tr class="odd">
<td align="left">Matrix</td>
<td align="left">1.2.18</td>
<td align="left">Douglas Bates and Martin Maechler (2019). Matrix: Sparse and Dense Matrix Classes and Methods. R package version 1.2-18. <a href="https://CRAN.R-project.org/package=Matrix" class="uri">https://CRAN.R-project.org/package=Matrix</a></td>
</tr>
<tr class="even">
<td align="left">pbkrtest</td>
<td align="left">0.4.8.6</td>
<td align="left">Ulrich Halekoh, Søren Højsgaard (2014). A Kenward-Roger Approximation and Parametric Bootstrap Methods for Tests in Linear Mixed Models - The R Package pbkrtest. Journal of Statistical Software, 59(9), 1-30. URL <a href="http://www.jstatsoft.org/v59/i09/" class="uri">http://www.jstatsoft.org/v59/i09/</a>.</td>
</tr>
<tr class="odd">
<td align="left">psych</td>
<td align="left">1.9.12.31</td>
<td align="left">Revelle, W. (2019) psych: Procedures for Personality and Psychological Research, Northwestern University, Evanston, Illinois, USA, <a href="https://CRAN.R-project.org/package=psych" class="uri">https://CRAN.R-project.org/package=psych</a> Version = 1.9.12.</td>
</tr>
<tr class="even">
<td align="left">R</td>
<td align="left">3.6.2</td>
<td align="left">R Core Team (2019). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL <a href="https://www.R-project.org/" class="uri">https://www.R-project.org/</a>.</td>
</tr>
<tr class="odd">
<td align="left">report</td>
<td align="left">0.2.0</td>
<td align="left">Makowski, D., Lüdecke, D., &amp; Ben-Shachar, M.S. (2020). Automated reporting as a practical tool to improve reproducibility and methodological best practices adoption. CRAN. Available from <a href="https://github.com/easystats/report" class="uri">https://github.com/easystats/report</a>. doi: .</td>
</tr>
<tr class="even">
<td align="left">survival</td>
<td align="left">3.1.8</td>
<td align="left">Therneau T (2015). <em>A Package for Survival Analysis in S</em>. version2.38, &lt;URL: <a href="https://CRAN.R-project.org/package=survival" class="uri">https://CRAN.R-project.org/package=survival</a>&gt;.</td>
</tr>
<tr class="odd">
<td align="left">tidyr</td>
<td align="left">1.0.2</td>
<td align="left">Hadley Wickham and Lionel Henry (2020). tidyr: Tidy Messy Data. R package version 1.0.2. <a href="https://CRAN.R-project.org/package=tidyr" class="uri">https://CRAN.R-project.org/package=tidyr</a></td>
</tr>
</tbody>
</table>

</div>
