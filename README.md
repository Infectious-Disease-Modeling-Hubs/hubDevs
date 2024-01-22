
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hubDevs

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/hubDevs)](https://CRAN.R-project.org/package=hubDevs)
[![R-CMD-check](https://github.com/Infectious-Disease-Modeling-Hubs/hubDevs/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Infectious-Disease-Modeling-Hubs/hubDevs/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of hubDevs is to provide utilities for creating and
standardising Hubverse packages

## Installation

You can install the development version of hubDevs from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("Infectious-Disease-Modeling-Hubs/hubDevs")
```

## Creating a hubverse package skeleton

First create a package skeleton.

This creates all basic infrastucture including a hubverse README and
intiates the package as a git repository.

``` r
library(hubDevs)

temp_dir <- tempdir()
path <- fs::path(temp_dir, "testPkg")
create_hubdev_pkg(path)
#> ✔ Creating '/var/folders/p2/ywqk6z3n5nq3csvhfnvwfpzh0000gp/T/RtmpoyuIeh/testPkg/'
#> ✔ Setting active project to '/private/var/folders/p2/ywqk6z3n5nq3csvhfnvwfpzh0000gp/T/RtmpoyuIeh/testPkg'
#> ✔ Creating 'R/'
#> ✔ Writing 'DESCRIPTION'
#> Package: testPkg
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * Anna Krystalli <annakrystalli@googlemail.com> [aut, cre] (<https://orcid.org/0000-0002-2378-4915>)
#> Description: What the package does (one paragraph).
#> License: `use_mit_license()`, `use_gpl3_license()` or friends to pick a
#>     license
#> Encoding: UTF-8
#> Roxygen: list(markdown = TRUE)
#> RoxygenNote: 7.2.3
#> ✔ Writing 'NAMESPACE'
#> ✔ Writing 'testPkg.Rproj'
#> ✔ Adding '^testPkg\\.Rproj$' to '.Rbuildignore'
#> ✔ Adding '.Rproj.user' to '.gitignore'
#> ✔ Adding '^\\.Rproj\\.user$' to '.Rbuildignore'
#> ✔ Setting active project to '<no active project>'
#> ✔ Setting active project to '/private/var/folders/p2/ywqk6z3n5nq3csvhfnvwfpzh0000gp/T/RtmpoyuIeh/testPkg'
#> ✔ Adding '.DS_Store', '.Rhistory', '.Rdata', '.httr-oauth', and '.secrets' to '.gitignore' and '.Rbuildignore'
#> 
#> ✔ Adding 'testthat' to Suggests field in DESCRIPTION
#> ✔ Adding '3' to Config/testthat/edition
#> ✔ Creating 'tests/testthat/'
#> ✔ Writing 'tests/testthat.R'
#> • Call `use_test()` to initialize a basic test file and open it for editing.
#> ✔ Adding 'MIT + file LICENSE' to License
#> ✔ Writing 'LICENSE'
#> ✔ Writing 'LICENSE.md'
#> ✔ Adding '^LICENSE\\.md$' to '.Rbuildignore'
#> ✔ Writing 'README.Rmd'
#> ✔ Adding '^README\\.Rmd$' to '.Rbuildignore'
#> ✔ Adding Lifecycle: experimental badge to 'README.Rmd'
#> • Re-knit 'README.Rmd' with `devtools::build_readme()`
#> ✔ Adding CRAN status badge to 'README.Rmd'
#> • Re-knit 'README.Rmd' with `devtools::build_readme()`
#> ℹ Installing testPkg in temporary library
#> ℹ Building
#>   '/private/var/folders/p2/ywqk6z3n5nq3csvhfnvwfpzh0000gp/T/RtmpoyuIeh/testPkg/README.Rmd'
#> ✔ Creating '.github/'
#> ✔ Adding '^\\.github$' to '.Rbuildignore'
#> ✔ Adding '*.html' to '.github/.gitignore'
#> ✔ Writing '.github/CODE_OF_CONDUCT.md'
#> ✔ Writing '.github/CONTRIBUTING.md'
#> ✔ Initialising Git repo
#> ✔ Adding '.quarto' to '.gitignore'
#> ✔ Writing '.git/hooks/pre-commit'
#> ✔ Setting active project to '<no active project>'
```

``` r
fs::dir_tree(path)
#> /var/folders/p2/ywqk6z3n5nq3csvhfnvwfpzh0000gp/T/RtmpoyuIeh/testPkg
#> ├── DESCRIPTION
#> ├── LICENSE
#> ├── LICENSE.md
#> ├── NAMESPACE
#> ├── R
#> ├── README.Rmd
#> ├── README.md
#> ├── testPkg.Rproj
#> └── tests
#>     ├── testthat
#>     └── testthat.R
```

## Set up package on GitHub

Once the new package is launched, you can set it up on GitHub with:

``` r
use_hubdev_github()
```

*Note: Your GitHub token must have rights to create a repository in the
hubverse organisation for this to succeed.*

The function runs a number of internal utilities for setting up a
hubverse package on GitHub:

- Creates a repo in the hubverse GitHub organisation
- Adds details of the repository to the DESCRIPTION file
- Initailises pkgdown documentation
- Creates GitHub Action workflows for:
  - standard R CMD CHECK
  - test coverage
  - linting with `lintr`
  - building pkgdown documentation and deploying production docs to
    GitHub Pages and PR previews to a Netlify site

## Code of Conduct

Please note that the hubDevs package is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md). By contributing to this
project, you agree to abide by its terms.

## Contributing

Interested in contributing back to the open-source Hubverse project?
Learn more about how to [get involved in the Hubverse
Community](https://hubdocs.readthedocs.io/en/latest/overview/contribute.html)
or [how to contribute to the hubDevs package](.github/CONTRIBUTING.md).