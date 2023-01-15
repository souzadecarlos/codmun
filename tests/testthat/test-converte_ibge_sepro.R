test_that("Converte ibge para tse corretamente", {
  expect_equal(converter(1100452, "ibge_completo", "tse"), 779)
})
test_that("Converte ibge para tse corretamente", {
  expect_equal(converter(1100049, "ibge_completo", "tse"), 94)
})