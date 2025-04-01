# UI for Rights page
rights_ui <- fluidPage(
  
  titlePanel("Leisure travelers' prior experience with Generative AI"),
  sidebarLayout(
    sidebarPanel(
      h4("Insights"),
      p("Leisure travelers have been experimenting with generative AI and are largely pleased with their experiences. In particular, ",
        strong("84% of respondents"), 
        " reported being ",
        em("satisfied or very satisfied"),
        " with the quality of generative AI’s recommendations."
      ),
      h4("Sources"),
      p(em("Oliver Wyman August 2023 Generative AI Travel & Leisure survey")),
      p(em("Sentiment Analysis on Twitter Dataset"))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Use", plotOutput("use_genai_plot")),
        tabPanel("Satisfaction", plotOutput("satisfaction_genai_plot")),
        tabPanel("Sentiment", plotOutput("sentiment_twitter_plot"))
      )
    )
  ),

  
  ### NEW IDEA
  
  titlePanel("TravelPlanning Benchmarking 2"),
  sidebarLayout(
    sidebarPanel(
      # Setting
      radioGroupButtons(
        inputId = "setting",
        label = "Select Setting:", 
        choices = c("tools+planning", "planning"),
        status = "primary"
      ),
      
      # Metric
      radioGroupButtons(
        inputId = "metric",
        label = "Select Metric:", 
        choices = c("delivery_rate" = "test_delivery_rate", 
                    "commonsense_pass_rate" = "test_commonsense_pass_rate", 
                    "hard_constraint_pass_rate" = "test_hard_constraint_pass_rate", 
                    "final_pass_rate" = "test_final_pass_rate"),
        status = "primary"
      ),
      
      h4("Sources"),
      p(em("Xie, J., Zhang, K., Chen, J., Zhu, T., Lou, R., Tian, Y., Xiao, Y., & Su, Y. (2024). TravelPlanner: A Benchmark for Real-World Planning with Language Agents."))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Benchmark", plotOutput("plot1"))
      )
    )
  )
)


### deprecated

# titlePanel("TravelPlanning Benchmarking"),
# sidebarLayout(
#   sidebarPanel(
#     # setting,method,llm,set,metric,value
#     selectizeInput("setting", "Select Setting:", selected="tool+planning", choices = unique(benchmark_genai$setting), multiple=TRUE),
#     selectizeInput("method", "Select Method:", selected="ReAct", choices = unique(benchmark_genai$method), multiple=TRUE),
#     selectizeInput("llm", "Select LLM:", selected="GPT-3.5-Turbo", choices = unique(benchmark_genai$llm), multiple=TRUE),
#     selectizeInput("set", "Select Set:", selected="test", choices = c("validation","test"), multiple=TRUE),
#     selectizeInput("metric", "Select Metric:", selected="final_pass_rate", choices = unique(benchmark_genai$metric), multiple=TRUE),
#   ),
#   mainPanel(
#     dataTableOutput("benchmark_genai_table")
#   )
# ),




