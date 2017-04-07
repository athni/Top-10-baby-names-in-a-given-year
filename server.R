#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(dtplyr)
library(data.table)

baby <- read.csv("C:/Users/nkopp/Desktop/Coursera/BabyNames/StateNames.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$table <- DT::renderDataTable(DT::datatable({
    
    set.seed(04-07-2017)
          data <- baby[baby$Year==input$InputYear,]
         data <- data[data$Gender==input$InputSex,]
        
                     
          final <- data.table(data, keep.rownames=TRUE)
          head(final[order(-Count),],10)
    
  }))
  
})
