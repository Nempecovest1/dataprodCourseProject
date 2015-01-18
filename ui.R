library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Miles per gallon prediction app"),
    sidebarPanel(
        p('With this app you can select various variables from the `mtcars`
          data set. The selected variables will then be used to predict miles
          per gallon. This is achieved by fitting a linear model with miles
          per gallon as the outcome and the selected variables as the 
          predictors.'),
        checkboxGroupInput("predictors", "Select predictors",
                           c("Number of cylinders" = "cyl",
                             "Displacement (cu.in.)" = "disp",
                             "Gross horepower" = "hp",
                             "Rear axle ratio" = "drat",
                             "Weight (lb/1000)" = "wt",
                             "1/4 mile time" = "qsec",
                             "V/S" = "vs",
                             "Transmission" = "am",
                             "Number of forward gears" = "gear",
                             "Number of carbutretors" = "carb"))
    ),
    mainPanel(
        p('The predictors you selected yield the following model:'),
        verbatimTextOutput("opredictors"),
        p('Here is a set off scatterplots with the variables you selected:'),
        plotOutput('pairsPlot')
    )
))