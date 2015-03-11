shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    pSave<-c()
    n1=as.numeric(input$n1)
    m1=as.numeric(input$m1)
    s1=as.numeric(input$s1)
    n2=as.numeric(input$n2)
    m2=as.numeric(input$m2)
    s2=as.numeric(input$s2)
    for(i in 1:as.numeric(input$Runs)){
      x1<-rnorm(n1,m1,s1)
      x2<-rnorm(n2,m2,s2)
      pSave<-c(pSave,t.test(x1,x2,var.equal=TRUE)$statistic)
    }
    hist(pSave,breaks=seq(0,1,.05))
    Nsig<-length(pSave[pSave<.05])/as.numeric(input$Runs)
    output$text1 <-renderText(Nsig)
  })
  
})
