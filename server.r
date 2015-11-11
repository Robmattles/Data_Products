library(UsingR)
data(galton)

shinyServer(
  function(input, output) {

      n <- reactive({n<-input$n})
      dist<-reactive({dist<-input$dist})
      x<-reactive({if (dist()=="norm"){return(rnorm(n(),100,100))}
      if (dist()=="unif"){return(runif(n(),1,200))}
      if (dist()=="lnorm"){return(runif(n(),100,100))}
      if (dist()=="exp"){return(rexp(n(),.05))}})
      
      output$mdizzle<-renderText(paste("Mean: ",as.character(mean(x()))))
      output$devizzle<-renderText(paste("Standard Deviation: ",as.character(sd(x()))))
      output$newHist <- renderPlot({
        hist(x(), xlab='Values', col='red',main='Histogram')
      
    })
    
  }
)