require(shiny)
require(rCharts)

shinyUI(pageWithSidebar(
  headerPanel("JHU Coursera Project by Stephanie Tong: States Statistics (1977 US Census)"),
  sidebarPanel(
    p("This app sorts state statistics from the state dataset from the datasets library in R. Please note that the dataset is sourced by the 1977 US Census."),
    p("Toggle the main panel tabs to switch between table & chart outputs."),
    radioButtons("cat", "Categories",
                       c("Population" = 2,
                         "Income per capita" = 3, 
                         "Illiteracy Percentage" = 4,
                         "Life Expectancy in years" = 5,
                         "Murder Rate per 100,000 people" = 6,
                         "HS Graduation Rate" = 7,
                         "Average # of Days Below Freezing" = 8,
                         "Area in square miles" = 9)),
    radioButtons("rank", "Sort by:",
                 c("Highest" = TRUE,
                   "Lowest" = FALSE)),
    numericInput('num', 'Number of results', 5, min = 1, max = 50, step = 1),
    submitButton('Go!')
    ),
  mainPanel(
    tabsetPanel(
      tabPanel("Table", h3('Results'), tableOutput("table")),
      tabPanel("Chart", h3('Results'), p("(Mouse over the bars to display data values.)"), showOutput("plot", "polycharts"))
      )
    )
  ))