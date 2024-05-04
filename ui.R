library(shiny)

ui <- fluidPage(
    titlePanel(title = "Investigative language visuals"),
    
    sidebarLayout(
        
        sidebarPanel(
        
        selectInput(inputId = "Age", 
                        label = "Select Age:", 
                        choices = unique(ACS_data$Age)),
        
        selectInput(inputId = "Level",
                    label = "Select Level:",
                    choices = unique(ACS_data2$Level))
        
        ),
    
    
     mainPanel(
        
        plotOutput("interactive_plot"),
        
        textOutput("text"),
        
        plotOutput("interactive_plot2"),
        
        textOutput("text2")
        )
     )
     )