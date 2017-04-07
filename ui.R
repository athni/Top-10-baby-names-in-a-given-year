#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(DT)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Want to check if your name is on top 10 in US??"),
  
   
  sidebarLayout(
    sidebarPanel(
            selectInput("InputYear", "Pick a Year", c(unique(as.integer(baby$Year)))),
            selectInput("InputSex", "Choose a gender", choices = c("boy", "girl")),
            submitButton("Show Results")
    ),
    
 
    mainPanel(
            h3("There you gooooo"),
            DT::dataTableOutput("table")
           
    )
  )
))
