shinyUI(fluidPage(
  titlePanel("Independent sample T-Test Simulation"),
  fluidRow(
    column(3, wellPanel(
      textInput("Runs", "Number of Simulations", 100),
      h3("Group 1"),
      textInput("n1", "Number of Subjects", 20),
      textInput("m1", "Mean", 500),
      textInput("s1", "Standard Deviation", 150),
      h3("Group 2"),
      textInput("n2", "Number of Subjects", 20),
      textInput("m2", "Mean", 550),
      textInput("s2", "Standard Deviation", 150),
      submitButton("Submit")
    )),
    column(6,
           plotOutput("plot1", width = 500, height = 500),
           h3("Proportion of significant simulations"),
           verbatimTextOutput("text1")
    ),
    column(3,
           h3("Instructions"),
           p("Enter the number of subjects, mean and standard deviation for each group. Then choose how many simulations to run."),
           br(),
           p("The simulator will sample data from normal distributions (with your specified parameters), and then conduct an independent samples t-test."),
           br(),
           p("The p-value from each new simulation is stored. The histogram shows the frequency with which different p-values occur."))
  )
))
