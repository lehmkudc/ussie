
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

``` r
# install.packages("devtools")
devtools::install_github("lehmkudc/ussie")
#> Downloading GitHub repo lehmkudc/ussie@HEAD
#> 
#>          checking for file 'C:\Users\lehmk\AppData\Local\Temp\Rtmp0QBd1M\remotes11843ac9651c\lehmkudc-ussie-cb1a84b/DESCRIPTION' ...  v  checking for file 'C:\Users\lehmk\AppData\Local\Temp\Rtmp0QBd1M\remotes11843ac9651c\lehmkudc-ussie-cb1a84b/DESCRIPTION'
#>       -  preparing 'ussie':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>   -  checking for empty or unneeded directories
#>       -  building 'ussie_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/lehmk/AppData/Local/Temp/RtmpWmjilo/temp_libpath52c6f307dbe'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)

uss_make_matches( engsoccerdata::england, country = "England")
#> # A tibble: 192,004 x 8
#>    tier  country season date       home            visitor       goals~1 goals~2
#>    <fct> <chr>    <int> <date>     <chr>           <chr>           <int>   <int>
#>  1 1     England   1888 1888-12-15 Accrington F.C. Aston Villa         1       1
#>  2 1     England   1888 1889-01-19 Accrington F.C. Blackburn Ro~       0       2
#>  3 1     England   1888 1889-03-23 Accrington F.C. Bolton Wande~       2       3
#>  4 1     England   1888 1888-12-01 Accrington F.C. Burnley             5       1
#>  5 1     England   1888 1888-10-13 Accrington F.C. Derby County        6       2
#>  6 1     England   1888 1888-12-29 Accrington F.C. Everton             3       1
#>  7 1     England   1888 1889-01-26 Accrington F.C. Notts County        1       2
#>  8 1     England   1888 1888-10-20 Accrington F.C. Preston Nort~       0       0
#>  9 1     England   1888 1889-04-20 Accrington F.C. Stoke City          2       0
#> 10 1     England   1888 1888-11-24 Accrington F.C. West Bromwic~       2       1
#> # ... with 191,994 more rows, and abbreviated variable names 1: goals_home,
#> #   2: goals_visitor
#> # i Use `print(n = ...)` to see more rows
```
