# Analysis documentation for 'Colour biases in learned foraging preferences in Trinidadian guppies'

## Authors

M. Wyatt Toure (Contact: wyatt.toure@gmail.com)\
Simon M. Reader

## Summary

This is the repository containing all the code to produce the analyses and figures in the manuscript <span style="text-decoration:underline">‘Colour biases in learned foraging preferences
in Trinidadian guppies’</span>. 

## Website

A reader-friendly website which walks through each of the models in the manuscript is available at https://wyatt-toure.github.io/guppy-colour-learning/.

## How to reproduce the results

If you want to reproduce the results you need to download the entire repository
onto your system and open
[analysis.Rmd](https://github.com/wyatt-toure/guppy-colour-learning/blob/main/analysis.Rmd)
in RStudio. You will then need to install the packages required for the analysis
which are listed in the Required tools and references of this README. Then you
can select the Run All option under the Code option in the navbar. You can also
run all chunks independently as well though you should do so sequentially since
variables necessary for the analysis are created as the script progresses.

## Directory structure

- `data/` contains the raw data used to conduct the analyses
- `docs/` contains the reader-friendly html write-up of the analyses, the GitHub pages site is built from this folder
- `R/` contains custom R functions used in the analysis
- `figs/` contains the individual files for the figures and residual diagnostic plots produced by the analysis script 
- `images/` contains relevant images and videos of the experiment

The root directory contains all the Rmd scripts used to conduct the analyses and render the website. 

The R code for the analysis can be found in [analysis.Rmd](https://github.com/wyatt-toure/guppy-colour-learning/blob/main/analysis.Rmd). 

The methods page is built from the [methods.Rmd](https://github.com/wyatt-toure/guppy-colour-learning-project/blob/main/methods.Rmd) file and the home page is built from the [index.Rmd](https://github.com/wyatt-toure/guppy-colour-learning/blob/main/index.Rmd) file.

## Metadata

Data are available in the [colour-learning-project-data.csv](https://github.com/wyatt-toure/guppy-colour-learning/blob/main/data/colour-learning-project-data.csv) file.

Below I provide the variable descriptions for the dataset and the [packages required](#required-tools-and-references) to conduct the analyses and construct the website as well as their versions and citations. 

### Variable descriptions

| Variable                    | Description                                                  |
| --------------------------- | ------------------------------------------------------------ |
| id                          | The individual ID of a guppy                                 |
| trial                       | The trial number                                             |
| distance.moved              | The distance moved (centimeters)                             |
| mean.velocity               | The mean velocity (centimeters per second)                   |
| time.in.periphery           | The amount of time spent in the periphery of the tank (seconds) |
| time.in.center              | The amount of time spent in the center of the tank (seconds) |
| left.visits.object          | The number of times a guppy came within 4 cm of the object placed on the left side of the tank |
| left.time.object            | The amount of time a guppy spent within 4 cm of the object placed on the left side of the tank (seconds) |
| left.latency.object         | The time it took for a guppy to first come within 2 body lengths of the object placed on the left side of the tank (seconds). Dashes represents no visit. 0 indiciates an immediate visit (i.e. as soon as the release glass was lifted) |
| right.visits.object         | The number of times a guppy came within 4 cm of the object placed on the right side of the tank |
| right.time.object           | The amount of time a guppy spent within 4 cm of the object placed on the left side of the tank (seconds) |
| right.latency.object        | The time it took for a guppy to first come within 4 cm of the object placed on the left side of the tank (seconds). Dashes represent no visit. 0 indiciates an immediate visit (i.e. as soon as the release glass was lifted) |
| freezes                     | The number of times a guppy spent more than 1 second motionless |
| time.freezing               | The total amount of time a guppy spent not moving (seconds)  |
| object.side.my.view         | The side of the tank the rewarding object was on from my perspective |
| object.side.etho.view       | The side of the tank the rewarding object was on from the camera's perspective (inverted from mine) |
| time.with.trained.object    | The amount of time a guppy spent within 4 cm of the object they were trained to (seconds). In the paper we refer to this as the rewarded object. |
| time.with.untrained.object  | The amount of time a guppy spent within 4 cm lengths of the object they were not trained to (seconds). In the paper we refer to this as the unrewarded. |
| latency.trained.object      | The amount of time it took a guppy to get within 4 cmof the object they were trained to (seconds). 0 indiciates an immediate visit (i.e. as soon as the release glass was lifted) |
| latency.untrained.object    | The amount of time it took a guppy to get within 4 cm of the object they were not trained to (seconds). 0 indiciates an immediate visit (i.e. as soon as the release glass was lifted) |
| prop.time.trained.object    | The proportion of time guppies spent within 4 cm of the object they were trained to |
| visits.trained.object       | The number of times a guppy came within 4 cm of the object they were trained to |
| visits.untrained.object     | The number of times a guppy came within 4 cm of the object they were not trained to |
| rewarding.object.colour     | The colour of the object a guppy was trained to              |
| first.choice                | The first object a guppy came within 4 cm of                 |
| distance.moved.in.periphery | The distance moved in the periphery (centimeters)            |
| distance.moved.in.center    | The distance moved in the center (centimeters)               |
| ate                         | Whether a guppy ate during the trial or not                  |
| trial.type                  | The type of trial (training or testing)                      |

### Required tools and references

| Package     | Version  | Reference                                                                                                                                                                                                                                                                                                        |
|-------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| broom       | 0.5.5    | David Robinson and Alex Hayes (2020). broom: Convert Statistical Analysis Objects into Tidy Tibbles. R package version 0.5.5. https://CRAN.R-project.org/package=broom                                                                                                                                           |
| broom.mixed | 0.2.6    | Ben Bolker and David Robinson (2020). broom.mixed: Tidying Methods for Mixed Models. R package version 0.2.6. https://CRAN.R-project.org/package=broom.mixed                                                                                                                                                     |
| carData     | 3.0.3    | John Fox, Sanford Weisberg and Brad Price (2019). carData: Companion to Applied Regression Data Sets. R package version 3.0-3. https://CRAN.R-project.org/package=carData                                                                                                                                        |
| cowplot     | 1.0.0    | Claus O. Wilke (2019). cowplot: Streamlined Plot Theme and Plot Annotations for ‘ggplot2’. R package version 1.0.0. https://CRAN.R-project.org/package=cowplot                                                                                                                                                   |
| DHARMa      | 0.3.3.0  | Florian Hartig (2020). DHARMa: Residual Diagnostics for Hierarchical (Multi-Level / Mixed) Regression Models. R package version 0.3.3.0. http://florianhartig.github.io/DHARMa/                                                                                                                                  |
| dplyr       | 1.0.3    | Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2021). dplyr: A Grammar of Data Manipulation. R package version 1.0.3. https://CRAN.R-project.org/package=dplyr                                                                                                                                 |
| effects     | 4.1.4    | John Fox and Sanford Weisberg (2019). An R Companion to Applied Regression, 3rd Edition. Thousand Oaks, CA http://tinyurl.com/carbook                                                                                                                                                                            |
| emmeans     | 1.5.1    | Russell Lenth (2020). emmeans: Estimated Marginal Means, aka Least-Squares Means. R package version 1.5.1. https://CRAN.R-project.org/package=emmeans                                                                                                                                                            |
| ggplot2     | 3.3.3    | H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.                                                                                                                                                                                                                         |
| ggpubr      | 0.2.5    | Alboukadel Kassambara (2020). ggpubr: ‘ggplot2’ Based Publication Ready Plots. R package version 0.2.5. https://CRAN.R-project.org/package=ggpubr                                                                                                                                                                |
| glmmTMB     | 1.0.0    | Mollie E. Brooks, Kasper Kristensen, Koen J. van Benthem, Arni Magnusson, Casper W. Berg, Anders Nielsen, Hans J. Skaug, Martin Maechler and Benjamin M. Bolker (2017). glmmTMB Balances Speed and Flexibility Among Packages for Zero-inflated Generalized Linear Mixed Modeling. The R Journal, 9(2), 378-400. |
| knitr       | 1.30     | Yihui Xie (2020). knitr: A General-Purpose Package for Dynamic Report Generation in R. R package version 1.30.                                                                                                                                                                                                   |
| lme4        | 1.1.21   | Douglas Bates, Martin Maechler, Ben Bolker, Steve Walker (2015). Fitting Linear Mixed-Effects Models Using lme4. Journal of Statistical Software, 67(1), 1-48. doi:10.18637/jss.v067.i01.                                                                                                                        |
| lmerTest    | 3.1.1    | Kuznetsova A, Brockhoff PB, Christensen RHB (2017). “lmerTest Package:Tests in Linear Mixed Effects Models.” Journal of StatisticalSoftware, 82(13), 1-26. doi: 10.18637/jss.v082.i13 (URL:https://doi.org/10.18637/jss.v082.i13).                                                                               |
| magrittr    | 2.0.1    | Stefan Milton Bache and Hadley Wickham (2020). magrittr: A Forward-Pipe Operator for R. R package version 2.0.1. https://CRAN.R-project.org/package=magrittr                                                                                                                                                     |
| MASS        | 7.3.51.4 | Venables, W. N. & Ripley, B. D. (2002) Modern Applied Statistics with S. Fourth Edition. Springer, New York. ISBN 0-387-95457-0                                                                                                                                                                                  |
| Matrix      | 1.2.18   | Douglas Bates and Martin Maechler (2019). Matrix: Sparse and Dense Matrix Classes and Methods. R package version 1.2-18. https://CRAN.R-project.org/package=Matrix                                                                                                                                               |
| R           | 3.6.2    | R Core Team (2019). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.                                                                                                                                            |
| report      | 0.2.0    | Makowski, D., Ben-Shachar, M.S., Patil, I. & Lüdecke, D. (2020). Automated reporting as a practical tool to improve reproducibility and methodological best practices adoption. CRAN. Available from https://github.com/easystats/report. doi: .                                                                 |
| tidyext     | 0.3.6    | Michael Clark (2021). tidyext: Tidy Extensions for Data Processing. https://m-clark.github.io/tidyext, https://github.com/m-clark/tidyext.                                                                                                                                                                       |
| tidyr       | 1.0.2    | Hadley Wickham and Lionel Henry (2020). tidyr: Tidy Messy Data. R package version 1.0.2. https://CRAN.R-project.org/package=tidyr                                                                                                                                                                                |
