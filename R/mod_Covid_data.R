#' Covid_data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Covid_data_ui <- function(id){
  ns <- NS(id)
  tagList(
      h2("module covid"),
      plotOutput(ns("IrisPlot"))
  )
}

#' Covid_data Server Functions
#'
#' @noRd
mod_Covid_data_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$IrisPlot <- renderPlot({
      plot(iris)
    })
  })
}

## To be copied in the UI


## To be copied in the server

