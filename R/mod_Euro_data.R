#' Euro_data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Euro_data_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("module Euro"),
    plotOutput(ns("AirQualityPlot"))
  )
}

#' Euro_data Server Functions
#'
#' @noRd
mod_Euro_data_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$AirQualityPlot <- renderPlot({
      plot(airquality)
    })
  })
}

## To be copied in the UI


## To be copied in the server

