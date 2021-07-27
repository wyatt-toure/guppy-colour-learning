# R code, data, and analysis documentation for 'Colour biases in learned foraging preferences in Trinidadian guppies'

## Authors

M. Wyatt Toure (Contact: wyatt.toure@gmail.com)\
Simon M. Reader

## Summary

This is the repository containing all the code to produce the analyses and
figures in the manuscript ‘Colour biases in learned foraging preferences in
Trinidadian guppies’. A reader-friendly website which walks through each of the
models in the manuscript is available at
<https://wyatt-toure.github.io/guppy-colour-learning/>. 

## How to reproduce the results

This project uses the
[`renv`](https://rstudio.github.io/renv/articles/renv.html) package from RStudio
to manage package dependencies and ensure reproducibility through time. To
ensure results are reproduced based on the versions of the packages used at the
time this project was created, you will need to install `renv` using
`install.packages("renv")` in RStudio.

If you want to reproduce the results it is best to download the entire
repository onto your system. This can be done either by clicking the green code
button on the GitHub repository homepage and then clicking Download ZIP or from
the command line using

`git clone https://github.com/wyatt-toure/guppy-colour-learning`

which will download the repository to your current directory. It may preferable
to download the repository as a ZIP file since cloning the repository downloads
the entire git history as well. Many binary files were included in the commits
causing the size of the git repository to be quite large (250+ MB compared to 20
MB for just the files in the directory).

Once the repository is downloaded onto your system, navigate to the root
directory and open `guppy-colour-learning-project.Rproj`. It is important to
open the project using the `.Rproj` file to ensure the working directory is set
correctly. Then install the package dependencies onto your system using
`renv::restore()`. Running `renv::restore()` will install the correct versions
of all the packages needed to reproduce our results. Packages are installed in a
stand-alone library for this project, and will not affect your installed R
packages anywhere else.

If you want to reproduce specific results from the analyses you can open either
`analysis-experiment-1.Rmd` for results from experiment 1 or
`analysis-experiment-2.Rmd` for results from experiment 2. Both are located in
the root directory. You can select the Run All option under the Code option in
the navbar of RStudio to execute all the code chunks. You can also run all
chunks independently as well though we advise that you do so sequentially since
variables necessary for the analysis are created as the script progresses.

## Directory structure

  - `data/` contains the raw data used to conduct the analyses
  - `docs/` contains the reader-friendly html write-up of the analyses, the
    GitHub pages site is built from this folder
  - `R/` contains custom R functions used in the analysis
  - `references/` contains reference information and formatting for citations
    used in the project
  - `figs/` contains the individual files for the figures and residual
    diagnostic plots produced by the analysis scripts. This directory is created
    and populated by running `analysis-experiment-1.Rmd`,
    `analysis-experiment-2.Rmd` and `combined-figures.Rmd`

### Root directory contents

The root directory contains Rmd scripts used to conduct the analyses, create
figures, and render the website pages. Below we describe the contents of the
root directory `.Rmd` files.

  - `analysis-experiment-1.Rmd` is the R code and documentation for the
    experiment 1 data preparation and analysis. This script generates the
    [Analysis 1](https://wyatt-toure.github.io/guppy-colour-learning/analysis-experiment-1.html)
    page of the website.

  - `analysis-experiment-2.Rmd` is the R code and documentation for the
    experiment 2 data preparation and analysis. This script generates the
    [Analysis 2](https://wyatt-toure.github.io/guppy-colour-learning/analysis-experiment-2.html)
    page of the website.

  - `protocols.Rmd` contains the protocols used to conduct the experiments and
    generate the data. This script generates the
    [Protocols](https://wyatt-toure.github.io/guppy-colour-learning/protocols.html)
    page of the website.

  - `index.Rmd` creates the
    [Homepage](https://wyatt-toure.github.io/guppy-colour-learning/index.html)
    of the project site.

  - `combined-figures.Rmd` is the R code used to create figures that combine
    data from experiments 1 and 2. Not used in the project site.

  - `treatment-object.side-assignment.Rmd` is the R code used to assign
    treatments and object sides during trials for experiment 2. Not used in the
    project site.

## Metadata

Data are available in the `data/` directory. 

- `colour-learning-experiment-1-data.csv` are the data for experiment 1
- `colour-learning-experiment-2-full-data.csv` are the data for experiment 2

We provide the variable descriptions for the data sets in the file `metadata.md`
located in the `data/` directory. The packages required to conduct the analyses
and construct the website as well as their versions and citations are provided
in the file `i_dont_know_yet.md`.