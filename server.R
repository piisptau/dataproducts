shinyServer(function(input, output, session) {

  nper = function () {if (input$compPer == "12 months") return (1)
  if (input$compPer == "6 months") return(2)
  if (input$compPer == "3 months") return(4) }

  grow = function (x) input$stcap*(1+((input$interest/100)/nper()))^(x*nper())


  output$plot1 <- renderPlot({
    par(las=1)
    curve(grow(x),from=1,to=input$years, log="y", xlab="Year",ylab="Compound sum", main="Interest compounding example")
  })

})

