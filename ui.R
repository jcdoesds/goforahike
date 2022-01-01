#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(leaflet)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme("united"),

    # Application title
    titlePanel(
        div(
        h1("Go for a Hike - Find the One for You!", 
                  align = "center"),
        h5("See a map and details for hikes rated by WTA users for the whole state or just one region",
           align = "center")
        )
        ),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(style="height: 100vh ",
            h3("Controls & Details"),
            h5("You can use these tools to adjust what you see on the right"),
            #let user make choices
            uiOutput("regionControl"),
            uiOutput("numberControl"),
            # give user data information
            strong(textOutput(outputId = "regionName")),
            textOutput(outputId = "summaryInfo"),
            headerPanel(""),
            p("Map and Graph colors based on average ratings, red is low and blue is high; map size is number of ratings"),
            headerPanel(""),
            textOutput(outputId = "dataSourceNote")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            leafletOutput("leafMap"),
            plotOutput("distancePlot")
        )
    )
))
