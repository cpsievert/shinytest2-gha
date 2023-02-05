library(shinytest2)

test_that("{shinytest2} recording: app", {
  app <- AppDriver$new(name = "app", height = 1000, width = 1427)
  app$expect_values()
  app$set_inputs(name = "carson")
  app$click("greet")
  app$expect_values()
})
