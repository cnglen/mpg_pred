model <-  function(wt,  qsec, am) {
    -2.937 * wt + 1.017 * qsec + (14.079 - 4.141 * wt) * am
}

output$mpg <- renderPrint(
    ifelse(model(input$wt,  input$qsec, as.integer(input$am)) < 0,
           "Warning: get a value < 0",
           model(input$wt,  input$qsec, as.integer(input$am)))
)
