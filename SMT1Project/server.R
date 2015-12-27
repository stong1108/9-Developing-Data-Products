library(datasets)
library(rCharts)

data(state)
stateDF <- data.frame(state.x77)
State <- row.names(stateDF)
row.names(stateDF) <- NULL
stateDF <- cbind(State, stateDF)

rankList <- function(cat, rank, num) {
  cat <- as.numeric(cat)
  num <- as.numeric(num)
  desired <- stateDF[, c(1, cat)]
  sorted <- desired[order(desired[, 2], decreasing = rank), , drop = FALSE]
  return(sorted[1:num,])
}

rankPlot <- function(cat, rank, num) {
  cat <- as.numeric(cat)
  num <- as.numeric(num)
  desired <- stateDF[, c(1, cat)]
  sorted <- desired[order(desired[, 2], decreasing = rank), , drop = FALSE]
  sorted <- sorted[1:num, ]
  origNames <- names(sorted)
  names(sorted) <- c('x','y')
  r1 <- rPlot(y~x, data = sorted, type = 'bar')
  r1$guides(x = list(title = origNames[1]), y = list(title = origNames[2]))
  return(r1)
 }

shinyServer(
  function(input, output) {
    output$inputNum <- renderPrint({input$num})
    output$table <- renderTable({rankList(input$cat, input$rank, input$num)},
                                include.rownames = FALSE)
    output$plot <- renderChart2({rankPlot(input$cat, input$rank, input$num)})
  })