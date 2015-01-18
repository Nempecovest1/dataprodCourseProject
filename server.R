library(shiny)

data(mtcars)
predictMPG = function(vars) {
    data = mtcars[, c("mpg", vars)]
    summary(lm(mpg ~ ., data=data))
}

myPairsPlot = function(vars) {
    data = mtcars[, c("mpg", vars)]
    pairs(data)
}

shinyServer(
    function(input, output){
        output$opredictors = renderPrint({
            if (length(input$predictors) == 0) "No predictors selected."
            else predictMPG(input$predictors)
        })
        output$pairsPlot = renderPlot({
            if (length(input$predictors) == 0) "No predictors selected."
            else myPairsPlot(input$predictors)
        })
    }
)