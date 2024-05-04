library(tidyverse)
library(ggplot2)
library(shiny)

server <- function(input, output, global) {
  output$interactive_plot <- renderPlot({
    filtered_data <- ACS_data %>%
      filter(Age == input$Age)
    
    ggplot(filtered_data, aes(x = Age, y = Speakers, fill = Language)) +
      geom_col(position = "dodge") +
      theme_classic() +
      labs(title = "Number of Language Speakers in NJ by Age",
           x = "Age",
           y = "Number of Speakers")
  })
  output$text <- renderText({
    paste("This plot shows the distribution of speakers of different languages by age in NJ.
    DISCLAIMER: Take this app with a grain of salt. The values are not completely accurate due to margins of error. This is just to get an idea of the distribution of language knowledge and have fun.")
  })
  
  
  output$interactive_plot2 <- renderPlot({
    filtered_data2 <- ACS_data2 %>%
      filter(Level == input$Level)
    
    # Generate the plot
    ggplot(filtered_data2, aes(x = Level, y = Speakers, fill = Language)) +
      geom_col(position = "dodge") + 
      theme_classic() +
      labs(title = "Number of Language Speakers by Level",
           x = "Level",
           y = "Number of Speakers")
  })
  output$text2 <- renderText({
    paste("This plot shows the distribution of speakers by level (state or national).
    DISCLAIMER: Take this app with a grain of salt. The values are, again, not completely accurate due to margins of error. This is just to get an idea of the distribution of languages and have fun.")
  })
  
}