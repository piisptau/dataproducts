shinyUI(pageWithSidebar(
  headerPanel('Interest calculation'),
  sidebarPanel(
    numericInput("years", "Number of years", 2,
        min = 1, max = 100, step=1),
    numericInput("interest", "Rate of interest", 1.5,
        min = 0.5, max = 20.0, step=0.5),
    numericInput("stcap", "Initial sum", 1000,
        min = 1000, max = 10000, step=1000),
    selectInput("compPer","Compounding period", choices =c("12 months", "6 months", "3 months"), selected="12 months")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))

