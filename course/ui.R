#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Old Faithful Geyser Data"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "Just give me a num", value = 1000, min = 1, max = 1000, step=10),
            
            sliderInput("sliderX",
                        "Choose X",
                        min = 1,
                        max = 500,
                        value = 30)
        ,
        ),
        sliderInput("sliderY", "Choose Y",
                    min = 1, max = 500, value = 30),
        
        # Show a plot of the generated distribution
        mainPanel(
            h3("Normal Distribution"),
            plotOutput("plot1")
        )
    
))
