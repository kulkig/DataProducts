shinyUI(navbarPage("Trip cost calculator - Vehicle Selection",
        #main display area where selections/filters are made and display
        tabPanel("Selection and Display",
                            
        # Sidebar
        sidebarLayout(
            sidebarPanel(
                helpText("Kindly provide information on the total distance expected to travel and vehicle preference"),
                numericInput('dis', 'Total trip distance (in miles):', 50, min = 1),
                numericInput('cost', 'Gasoline price (per gallon):', 2.51, min = 1.80, max = 3.50, step=0.01),
                numericInput('gas', 'Maximum budget spend on gasoline:', 50, min=1),
                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
                checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10)
                ),
 
        mainPanel(
            img(src='myImage.png', align = "right"),
            dataTableOutput('table')
            )
            )
            ),
        
        tabPanel("About",
        #secondary area where the instruction on how to use the application is displayed
        mainPanel(
        includeHTML("about.html")
        )
    )
)
)  