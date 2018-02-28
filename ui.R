#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that calculate Body Mass Index (MBI)
shinyUI(fluidPage(
        
        # Application title
        titlePanel("BMI Calculator"),
        
        
        # Sidebar with a slider input for number of bins 
        sidebarLayout(
                sidebarPanel(
                        h3("Your Height in Meters"),
                        numericInput("Height", "Height in Meters", value=1.75),     
                        h3("Your Weight in Kilograms"),
                        numericInput("Weight", "Weight in Kilograms", value=70)
                       
                ),
                
                
                
                
                # Show the number of BMI
                mainPanel(
                        h3("Your Body Mass Index"),     
                        textOutput("BMI")
                       
                        
                )
        )
))