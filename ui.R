library(shiny)

ui <- fluidPage(
    titlePanel(title = "Interactive language visuals"),
    
    sidebarLayout(
        
        sidebarPanel(
        
        selectInput(inputId = "Age", 
                        label = "Select Age:", 
                        choices = Age,
        
        selectInput(inputId = "Language",
                        label = "Select Language Family:", 
                        choices = Language)),
    
    
     mainPanel(
        
        plotOutput("interactive_plot")
        ))))