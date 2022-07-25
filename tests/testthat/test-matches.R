test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("uss_make_matches() works",{
  spain <-  uss_make_matches( engsoccerdata::spain, "Spain" )
  expect_true( tibble::is_tibble(spain) )

  italy <- uss_make_matches( engsoccerdata::italy, "Italy" )
  expect_named(
    italy,
    c(
      "tier","country",'season','date','home',
      'visitor','goals_home','goals_visitor'
    )
  )

  england <- uss_make_matches( engsoccerdata::england, "England" )

  expect_identical( unique( england$country ), "England" )

  expect_s3_class(italy$tier, "factor")
})
