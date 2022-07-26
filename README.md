
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/lehmkudc/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lehmkudc/ussie/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/lehmkudc/ussie/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/lehmkudc/ussie/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The goal of ussie is to work with football data.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` undefined
install.packages("devtools")
devtools::install_github("lehmkudc/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)

uss_make_matches( engsoccerdata::england, country = "england")
#> # A tibble: 192,004 x 8
#>    country tier  season date       home            visitor       goals~1 goals~2
#>    <chr>   <fct>  <int> <date>     <chr>           <chr>           <int>   <int>
#>  1 england 1       1888 1888-12-15 Accrington F.C. Aston Villa         1       1
#>  2 england 1       1888 1889-01-19 Accrington F.C. Blackburn Ro~       0       2
#>  3 england 1       1888 1889-03-23 Accrington F.C. Bolton Wande~       2       3
#>  4 england 1       1888 1888-12-01 Accrington F.C. Burnley             5       1
#>  5 england 1       1888 1888-10-13 Accrington F.C. Derby County        6       2
#>  6 england 1       1888 1888-12-29 Accrington F.C. Everton             3       1
#>  7 england 1       1888 1889-01-26 Accrington F.C. Notts County        1       2
#>  8 england 1       1888 1888-10-20 Accrington F.C. Preston Nort~       0       0
#>  9 england 1       1888 1889-04-20 Accrington F.C. Stoke City          2       0
#> 10 england 1       1888 1888-11-24 Accrington F.C. West Bromwic~       2       1
#> # ... with 191,994 more rows, and abbreviated variable names 1: goals_home,
#> #   2: goals_visitor
#> # i Use `print(n = ...)` to see more rows
```

Can also filter results

``` r
uss_get_matches("england", season == 1966) |>
  dplyr::glimpse()
#> Rows: 2,028
#> Columns: 8
#> $ country       <chr> "England", "England", "England", "England", "England", "~
#> $ tier          <fct> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,~
#> $ season        <int> 1966, 1966, 1966, 1966, 1966, 1966, 1966, 1966, 1966, 19~
#> $ date          <date> 1966-08-27, 1966-09-17, 1966-12-03, 1967-02-04, 1967-04~
#> $ home          <chr> "Arsenal", "Arsenal", "Arsenal", "Arsenal", "Arsenal", "~
#> $ visitor       <chr> "Aston Villa", "Blackpool", "Burnley", "Chelsea", "Evert~
#> $ goals_home    <int> 1, 1, 0, 2, 3, 1, 0, 2, 1, 1, 1, 2, 1, 2, 1, 4, 3, 2, 0,~
#> $ goals_visitor <int> 0, 1, 0, 1, 1, 0, 1, 4, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 2,~
```
