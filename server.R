library(shiny)
library(tidyverse)
library(ggplot2 )

server <- function(input, output) {
    
    files <- reactiveValues()
    
    observe(files$data <- real_app_data_csv)
    
    output$interactive_plot <- renderPlot({
        
        ggplot(data=real_app_data_csv, aes(x = files$data[[input$Age]], y = files$data[[Speakers]], fill = files$data[[input$Language]])) + geom_col() +
            labs(x = input$Age, y = input$Speakers)})}