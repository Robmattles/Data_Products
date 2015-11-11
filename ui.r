shinyUI(pageWithSidebar(
  headerPanel("Random Distribution Explorer"),
  sidebarPanel(
    textInput('n', 'Select size of distribution',value = 1000),
    h2(' '),
    h3(textOutput('mdizzle')),
    h3(textOutput('devizzle'))),
  mainPanel(
    h3("Generates specified random distribution"),
    h5("Calculates Standard Deviation and Mean of distribution and displays histogram"),
    p("This is a simple way to generate and then view descriptive statistics for several basic random distribution types. You can adjust the size of the distribution with the text box on the left and choose among the three distribution types via the radio buttons on the right.  The random uniforms are generated in a range from 1 to 200.  The normals are  generatedwith mean  100 and standard deviation 100.  The exponentialdistribution is generated with rate .05.

A histogram will beplotted of the resulting distribution and the mean and standard deviation of the distribution will be displayed on the left.
"),
    radioButtons("dist", "Distribution type:",
                 c("Normal" = "norm",
                   "Uniform" = "unif",
                   "Exponential" = "exp")),
    plotOutput('newHist')

  )
))