#------------------------------------------
# Interactive Reporting with shiny

# shiny: The Basics
#------------------------------------------

# Install and load shiny
# install.packages("shiny")
library(shiny)

#------------------------------------------

## What is shiny?
# shiny is a package for making interactive web apps using R.
# You can create standalone documents or you can embed them in a
# Markdown document.

## The shiny basics
# shiny documents are .R script files that contain 3 main components:

# 1. a user interface (ui) object: controls the layout and appearance
ui <- fluidPage("This is a shiny app!")

# 2. a server function: instructions on how to build the app
server <- function(input,output){}

# 3. a call to the shinyApp function: creates the app from the ui/server information
shinyApp(ui=ui, server=server)

## a shiny example
# shiny provides from built in examples
# We will use the runExample() function to look at "01_hello"
# This example uses the built-in faithful data set to create a histogram
# You will be able to interactively change the number of bins

# let's view some of the faithful data
head(faithful)

# Let's build a histogram of the waiting time between eruptions
# we will build the default plot in our example
hist(faithful$waiting, xlab="Waiting Time to Eruption", 
     main="Histogram of Waiting Times", breaks=30, col = "#75AADB", border = "white")

# Now let's take a look at the example shiny app
runExample("01_hello")

