# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(graycode)

test_check("graycode")

test_that("correct conversion", {
  expect_equal(binary_to_gray("1010"), "1111")
  expect_equal(binary_to_gray("1100"), "1010")
})

test_that("invalid input", {
  expect_error(binary_to_gray("abc"))
  expect_error(binary_to_gray(""))
  expect_error(binary_to_gray("11111111111111111111111111111111111111111111111111111111111111111"))
})
