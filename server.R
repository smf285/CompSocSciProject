library(tidyverse)
library(ggplot2)
library(shiny)

server <- function(input, output, global) {
  output$interactive_plot <- renderPlot({
    ggplot(data=ACS_data, aes(x = ACS_data[[input$Age]], y = ACS_data[[input$Language]])) + geom_col(color = (ACS_data[[input$Language]]) + theme_classic())))}}