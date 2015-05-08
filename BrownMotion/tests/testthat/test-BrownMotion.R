context("BrownMotion, Data generating")

test_that("My Brown Motion",{

	expect_equal(dim(BrownMotion(1993))[1], 1993)
	expect_equal(dim(BrownMotion(1994))[2], 2)
})
