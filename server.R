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
dpath <- "https://raw.githubusercontent.com/yoshiohasegawa/wta-scraper/master/Results/2021-04-25_wta_hike_data.csv"
trail_data <- read_csv(dpath)
df <- trail_data %>% 
    filter(!is.na(LATITUDE), LATITUDE < 80, LONGITUDE < 0, RATING > 0) %>% 
    group_by(LATITUDE, LONGITUDE, TITLE, REGION) %>% 
    summarise(RATING = mean(RATING, na.rm=TRUE), 
              DISTANCE = mean(DISTANCE, na.rm=TRUE),
              REPORTS = sum(REPORT_COUNT),
              .groups="drop"
    ) %>%
    mutate(REGIONF = factor(REGION), 
           RATINGB = round(RATING, 0),
           POPUP = paste(TITLE, 
                         paste0("Ratings: ", REPORTS),
                         paste0("Avg. Rating: ", round(RATING,1)),
                         paste0("Region: ", REGION), sep="<br>"))
 

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$dataSourceNote <- renderText({
        paste0("Data are from ", dpath, ".")
        })
    output$regionControl <- renderUI({
        regions <- as.list(c("All", levels(df$REGIONF)))
        selectInput(inputId = "regionSelect", 
                    label = div(h4("Region to show:"),
                                p("Set to All for whole state or pick a region to filter the map and graphs")),
                    choices = regions,
                    selected = "All")
    })
    output$numberControl <- renderUI({
        sliderInput(inputId = "numberSelect",
                    label = div(h4("Number to show:"),
                              p("Change the number of longest and shortest hikes shown on graphs")),
                    min = 1,
                    max = 20,
                    value = 10)
    })
    
    # allow user to change region 
    map_data_react <- reactive({
        if(is.null(input$regionSelect)){ 
            df
        } else if(input$regionSelect == "All"){
            df
        } else {
            df %>% dplyr::filter(REGION == input$regionSelect)
        }
    })
    
    
    output$regionName <- renderText({
        paste0("Showing: ", input$regionSelect, ".")
    })
    
    # allow user to change number to show
    number_react <- reactive({
        if(is.null(input$numberSelect)){
           10
        } else{
            input$numberSelect
        }
    })
    
    output$summaryInfo <- renderText({
        region_df <- map_data_react()
        ratedHikes <- nrow(region_df)
        avgRating <- round(mean(region_df$RATING),1)
        maxRating <- round(max(region_df$RATING),1)
        minRating <- round(min(region_df$RATING),1)
        minDistance <- min(region_df$DISTANCE, na.rm = TRUE)
        maxDistance <- max(region_df$DISTANCE, na.rm = TRUE)
        paste("You are looking at rated hikes from the snapshot of Washington Trails Association (WTA) for Region:",
              input$regionSelect,
              "which has ",
              ratedHikes, 
              "rated hikes, ranging from ",
              minDistance,
              "to",
              maxDistance,
              "miles in length, and an average rating of",
              avgRating,
              "ranging from: ",
              minRating,
              "stars to",
              maxRating, 
              "stars"
              )
    })
    
    # display filtered map
    output$leafMap <- renderLeaflet({

        library(leaflet)
        region_df <- map_data_react()
        
        colorrate <- leaflet::colorBin("RdBu", region_df$RATINGB) 
        
        leaflet(region_df) %>% addTiles(
            options = tileOptions(minZoom = 6, maxZoom = 10)
        ) %>%
            addCircleMarkers(
                radius = ~REPORTS/100 + 1,
                lng = ~LONGITUDE, lat = ~LATITUDE,
                color = ~colorrate(RATINGB),
                popup = ~POPUP,
                fillOpacity = 0.3,
                
            ) 

    })
    
    
    
    # display Distance data
    output$distancePlot <- renderPlot({
        user_n <- number_react()
        library(patchwork)
        ddf <- map_data_react()
        ddf <- ddf %>%
            mutate(rcolor = as.factor(RATINGB))
        ldf <- filter(ddf, !is.na(DISTANCE)) %>%
            slice_max(DISTANCE, n = user_n)
        
        ldf$TITLE <-  with(ldf, reorder(TITLE, DISTANCE))
        l <- ggplot(ldf, aes(TITLE, DISTANCE, fill = rcolor)) +
            geom_col() +
            scale_fill_brewer(palette="RdBu", drop=FALSE) +
            coord_flip() +
            labs(title = "Longest Hikes", x="", y = "Distance (Miles)", fill="Average Rating") +
            theme_minimal() 
        
        didf <- filter(ddf, !is.na(DISTANCE)) %>%
            slice_min(DISTANCE, n = user_n)
        
        didf$TITLE <-  with(didf, reorder(TITLE, -DISTANCE))
        s <- ggplot(didf, aes(TITLE, DISTANCE, fill = rcolor)) +
            geom_col() +
            scale_fill_brewer(palette="RdBu", drop=FALSE) +
            coord_flip() +
            labs(title = "Shortest Hikes", x="", y = "Distance (Miles)", fill="Average Rating") +
            theme_minimal() 
        
        combined <- l + s & theme(legend.position = "bottom")
        combined + plot_layout(guides = "collect")
    })
    
    
    

})
