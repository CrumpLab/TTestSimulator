shinyUI(fluidPage(
  titlePanel("Independent sample T-Test Simulator"),
  fluidRow(
    column(3, wellPanel(
      textInput("Runs", "Number of Simulations", 100),
      textInput("n1", "x1 number of subjects", 200),
      textInput("m1", "x1 mean", 200),
      textInput("s1", "x1 sd", 25),
      textInput("n2", "x2 number of subjects", 200),
      textInput("m2", "x2 mean", 200),
      textInput("s2", "x2 sd", 25),
      submitButton("Submit")
    )),
    column(6,
           plotOutput("plot1", width = 400, height = 300),
           verbatimTextOutput("text")
    )
  )
))
