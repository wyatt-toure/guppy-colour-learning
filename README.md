# R code, data, and analysis documentation for 'Colour biases in learned foraging preferences in Trinidadian guppies'

## Authors

M. Wyatt Toure (Contact: wyatt.toure@gmail.com)\
Simon M. Reader

## Summary

This is the repository containing the R code and data to produce the analyses
and figures in the manuscript ‘Colour biases in learned foraging preferences in
Trinidadian guppies’. R version 3.6.2 was used for this project. A
reader-friendly website which walks through each of the models in the manuscript
is available at <https://wyatt-toure.github.io/guppy-colour-learning/>. This
README explains how to reproduce the results, provides the location of the
metadata for the data sheets, and gives descriptions of the root directory
contents and folder contents.

## How to reproduce the results

This project uses the `renv` package from RStudio to manage package dependencies
and ensure reproducibility through time. To ensure results are reproduced based
on the versions of the packages used at the time this project was created, you
will need to install `renv` using `install.packages("renv")` in R.

If you want to reproduce the results it is best to download the entire
repository onto your system. This can be done by clicking the Download button on
the FigShare repository (DOI: 10.6084/m9.figshare.14404868). This will download
a zip file of the entire repository. Unzip the zip file to get access to the
project files.

Once the repository is downloaded onto your system, navigate to the root
directory and open `guppy-colour-learning-project.Rproj`. It is important to
open the project using the `.Rproj` file to ensure the working directory is set
correctly. Then install the package dependencies onto your system using
`renv::restore()`. Running `renv::restore()` will install the correct versions
of all the packages needed to reproduce our results. Packages are installed in a
stand-alone library for this project and will not affect your installed R
packages anywhere else.

If you want to reproduce specific results from the analyses you can open either
`analysis-experiment-1.Rmd` for results from experiment 1 or
`analysis-experiment-2.Rmd` for results from experiment 2. Both are located in
the root directory. You can select the Run All option under the Code option in
the navbar of RStudio to execute all the code chunks. You can also run all
chunks independently as well though we advise that you do so sequentially since
variables necessary for the analysis are created as the script progresses.

## Metadata

Data are available in the `data/` directory. 

- `colour-learning-experiment-1-data.csv` are the data for experiment 1
- `colour-learning-experiment-2-full-data.csv` are the data for experiment 2

We provide the variable descriptions for the data sets in the file `metadata.md`
located in the `data/` directory. The packages required to conduct the analyses
and construct the website as well as their versions and citations are provided
in the file `required-r-packages.md`.

## Directory structure

  - `data/` contains the raw data used to conduct the analyses
  - `docs/` contains the reader-friendly html write-up of the analyses, the
    GitHub pages site is built from this folder
  - `R/` contains custom R functions used in the analysis
  - `references/` contains reference information and formatting for citations
    used in the project
  - `renv/` contains an activation script and configuration files for the renv
    package manager
  - `figs/` contains the individual files for the figures and residual
    diagnostic plots produced by the analysis scripts. This directory is created
    and populated by running `analysis-experiment-1.Rmd`,
    `analysis-experiment-2.Rmd` and `combined-figures.Rmd`

### Root directory contents

The root directory contains Rmd scripts used to conduct the analyses, create
figures, and render the website pages. Below we describe the contents of these
files as well as the additional files contained in the root directory.

  - `analysis-experiment-1.Rmd` is the R code and documentation for the
    experiment 1 data preparation and analysis. This script generates the 
    Analysis 1 page of the website.

  - `analysis-experiment-2.Rmd` is the R code and documentation for the
    experiment 2 data preparation and analysis. This script generates the
    Analysis 2 page of the website.

  - `protocols.Rmd` contains the protocols used to conduct the experiments and
    generate the data. This script generates the Protocols page of the website.

  - `index.Rmd` creates the Homepage of the project site.

  - `combined-figures.Rmd` is the R code used to create figures that combine
    data from experiments 1 and 2. Not used in the project site.

  - `treatment-object-side-assignment.Rmd` is the R code used to assign
    treatments and object sides during trials for experiment 2. Not used in the
    project site.
    
  - `renv.lock` is a JSON formatted plain text file which contains package
    information for the project. renv will install the packages listed in this
    file upon executing `renv::restore()`
    
  - `required-r-packages.md` is a plain text file containing the versions and
    sources of the packages required for the project.
    
  - `styles.css` contains the CSS formatting for the rendered html pages
  
  - `LICENSE.md` contains the license indicating the conditions upon which the
    code can be reused
  
  - `guppy-colour-learning-project.Rproj` is the R project file which sets the
    working directory of the R instance to the root directory of this
    repository. If trying to run the code in this repository to reproduce
    results it is important to open R by clicking on this `.Rproj` file.
