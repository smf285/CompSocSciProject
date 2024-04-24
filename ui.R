library(shiny)

ui <- fluidPage(
    titlePanel(title = "Interactive language visuals"),
    
    sidebarLayout(
        
        sidebarPanel(
        
        selectInput(inputId = "Age", 
                        label = "Select Age:", 
                        choices = unique(ACS_data$Age)),
        
        selectInput(inputId = "Language",
                        label = "Select Language Family:", 
                        choices = unique(ACS_data$Language))),
    
    
     mainPanel(
        
        plotOutput("interactive_plot")
        )
     )
     )