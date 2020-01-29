library(sidescroller)
library(here)


pres <- sidescroller(
  list(
    htmltools::htmlDependency(
      name = "darker-grotesque",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css?family=Darker+Grotesque&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "VT323",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css?family=VT323&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "font-awesome",
      version = "4.7.0",
      src = c(href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/"),
      stylesheet = "font-awesome.min.css"),
  htmltools::htmlDependency(
    name = "RStudio_pres",
    version = "1.0",
    src = c(href = "www"),
    script = c("rstudio_conf_2020.js","prism.js"),
    stylesheet = c("RStudio_conf_2020.css","prism.css"))))

## Title ----
pres_title <- pres %>% 
  title_slide(
    title = tags$div(style = "font-weight:200","Approaches to Assay Processing Package Validation"),
    subtitle = list("Ellis Hughes",
                 HTML("<p class='subtitle_text'><i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none; color: white' class='fa fa-twitter'></i> @ellis_hughes</p>"),
                 "Fred Hutch Cancer Research Center - SCHARP - VISC"
                 ),
    style = "font-family: 'Darker Grotesque',Arial;
    font-size: 40px;
    font-weight: 300;
    background-image: url(img/rstudio_conf_background.png);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;"
  )

## Intro to the Pain

pres_val_explained <- pres_title %>% 
  
  slide_multipanel(title = NULL,
                   
  panel(tags$div(tags$div(style = "font-weight:200;margin:auto;font-size: 80px",
      p("What is Computer System Validation?")),
      class = "center_content"), style = "width:1200px"),
  
  panel(tags$div( tags$div(markdown_to_html("
  Establishing documentary evidence that your software performs a
  
    - Procedure
    - Process
    - Activity
  
  in compliance with specifications with a high degree of assurance.
  ")),class = "center_content"), style = "margin-top: 100px"),
  
  panel(tags$div(tags$div(markdown_to_html("
  Required for FDA submission<br><span style = 'color:orange'>21 CFR 11</span><br>General Principles of Software Validation (FDA 2002)
  "), style = "margin-top:50px"),class = "center_content"),
  style = "width: 1000px; margin-top: 100px;font-size:60px;" ),  
        
  panel(tags$div(tags$div(markdown_to_html("
  Improved Quality and Safety
  
  Results in Faster Processing
  
  Promotes Trust
  "), style = "margin-top:50px"),class = "center_content"),style = "margin-top: 100px;font-size:60px;"),
  
  panel(tags$div(tags$div(markdown_to_html("
  <p style = 'font-size: 60px'>Validation</p>
  
    - Does the system behave as we expect
    - Returns the correct value
    - Throws an error when values are unexpected
  
  <p style = 'font-size: 60px'>Verification</p>
  
    - Do the outputs match between two independent approaches
  "), style = "margin:auto"),class = "center_content")),
  style = "font-size: 50px;margin-top:100px;")

pres_pain <-pres_val_explained %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Validation in Practice"),
  
  panel_markdown("
  
  <p style = 'font-size: 60px'>Validation can be a high bar</p>
  
    - Labor-hours
    - Tracking Progress
  ", style = "margin-top: 200px; font-size: 50px"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
        img(src = "img/jim_carrey_file.gif", style = "height:100%"),
        div( style = "bottom:0px;position:absolute",
        p("Tom Shadyac, et al. BRUCE ALMIGHTY. USA, 2003.", style = "font-size:20px;color:grey;margin-bottom:0px"),
        p("https://media1.tenor.com/images/3267a92e265348c0cc435a7989d65e23/tenor.gif", style = "font-size:20px;color:grey")
        )
  ))),
  
  panel(div(div(markdown_to_html("
  Develop and get signoff on specifications"),
  style = "width: 1100px"),
  style = "position:fixed;"),
  style = "margin-top: 100px; font-size: 50px; font-size: 50px; margin-right: 500px;"),
  
  panel(div(div(markdown_to_html("
  Write Code following GPP and record function authorship"),
  style = "width: 1100px"),
  style = "position:fixed;"),  
  style = "margin-top: 200px; font-size: 50px; margin-left: -500px;"),
  
  panel(div(div(markdown_to_html("
  Develop Test Cases and get signoff"), 
  style = "width: 1100px"),
  style = "position:fixed;"),
  style = "margin-top: 300px; font-size: 50px; margin-left: -500px;"),
  
  panel(div(div(markdown_to_html("
  Write Test Code based on Test Cases"),
  style = "width: 1100px"),
  style = "position:fixed;"),
  style = "margin-top: 400px; font-size: 50px; margin-left: -500px;"),
  
  panel(div(div(markdown_to_html("
  Manually evaluate and document test code results"),
  style = "width: 1100px"),
  style = "position:fixed;"),
  style = "margin-top: 500px; font-size: 50px; margin-left: -500px;"),
  
  panel(div(div(markdown_to_html("
  Review documentation and get final signoffs for release"),
  style = "width: 1100px"),
  style = "position:fixed;"),
  style = "margin-top: 600px; font-size: 50px; margin-left: -500px;"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
             img(src = "img/mario_game_over.gif", style = "height:100%"),
             div( style = "bottom:0px;position:absolute",
                  p("Super Mario Bros., Nintendo, 1985, NES", style = "font-size:20px;color:grey; margin-bottom:0px"),
                  p("source: https://gfycat.com/earnestgiganticdorado", style = "font-size:20px;color:grey")
             )
        )),
    style = "padding-left: 500px;padding-right: 500px;")
  )


## Intro To Validation ----

pres_Friends <- pres_pain %>% 
  slide_multipanel(title = NULL,
                   
  panel(tags$div(
    tags$p("VALIDATION",style = "color: red; font-size: 400px; margin:auto; font-family: 'VT323', monospace;"),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin: auto;display: inline-flex; font-family: monospace;",
             p("+", style = "font-size: 400px;margin-bottom:50px"),
             tags$img(src = "img/Rlogo.png",style = "height:500px;"), 
    ),class = "center_content")),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/step_brothers_best_friends.webp", style = "height:450px; margin:auto;"),
              div( style = "bottom:0px;position:absolute",
                  p("Adam Mckay, et al. STEP BROTHERS . USA, 2008.",style = "font-size:20px;color:grey;margin-bottom:0px;"),
                  p("https://bethgittings.tumblr.com/post/34641171446",style = "font-size:20px;color:grey")
                )),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin:auto;",
              tags$img(src = "img/rmarkdown_testthat_roxygen2.png", 
                       style = "height:600px; margin:auto;")
             ),
    class = "center_content")),
  
  panel(tags$iframe(src = "img/Validate.pdf", style = "width: 1200px; height: 100%", frameborder="0", marginwidth="0"))
  
  )


  
# ## Bio ----
pres_bio <- pres_Friends %>%
  slide_markdown(title = tags$div(style = 'width:500px',"Ellis Hughes"),"
      <div style = 'height:100%'>
        <div style = 'display:inline-block; vertical-align: top; padding-right:20px; font-size: 45px;'>
        - Statistical Programmer
           - Statistical Genetics
           - HIV Vaccine Research
        <br>
        - Community
          - Seattle UseR Organizer
          - Cascadia R Conf Committee
        </div>
        <div style = 'display:inline-block;height:inherit;'>
         <img src = 'https://thebioengineer.github.io/images/r_in_pharma/img/ellis_hughes.jpg' style = '-webkit-transform: rotate(270deg);
                 -moz-transform: rotate(270deg);
                 -o-transform: rotate(270deg);
                 -ms-transform: rotate(270deg);
                 transform: rotate(270deg);
                 height: 500px;
                 margin-top: 100px;'/>
        </div>
      </div>", style = "margin-top:50px")

## Fred Hutch and SCHARP ----
pres_FH_scharp <- pres_bio %>%

  slide_multipanel(title = "Fred Hutch and SCHARP",
   ## Fred Hutch ----
  panel(HTML("<div style='display:inline-block;padding-top:100px;z-index: 100;position: relative;'>
                    <style type='text/css'>
                      .fhcrc_info_container{
                      	width: 375px;
                      	display:inline-block;
                      	margin:auto;

                      }
                    </style>
    				        <div class='fhcrc_info_container'>
    				        	<div>
    				        		<img src='img/Cellular_Therapy.png' alt='Icon depicting blood stem cell transplantation and immunotherapy' style='margin:auto'/>
    				        	</div>
    				        	<h4 style='text-align: center;'>Blood Stem Cell Transplantation<br>and Immunotherapy</h4>
    				        </div>
    				        <div class='fhcrc_info_container'>
    				        	<div>
    				        		<img src='img/Risk_Factors.png' style='margin:auto'/>
    				        	</div>
    				        	<h4 style='text-align: center;'>Cancer Risk Factors, and Causes,<br>Prevention and Outcomes</h4>
    				        </div>
    				        <div class='fhcrc_info_container'>
    				        	<div>
    				        		<img src='img/Vaccine_Development.png' style='margin:auto'/>
    				        	</div>
    				        	<h4 style='text-align: center;'>Vaccine Development<br>and Virus-Associated Cancers</h4>
    				        </div>
    				      </div>

    				      <div style = 'z-index: 100;position: relative;'>
    				        <div style='margin:auto;width:70%'>
    				        <div class='fhcrc_info_container'>
    				        	<div>
    				        		<img src='img/Molecular_Underpinnings.png' style='margin:auto'/>
    				        	</div>
    				        	<h4 style='text-align: center;'>Molecular Underpinnings of Cancer</h4>
    				        </div>

    				        <div class='fhcrc_info_container'>
    				        	<div>
    				        		<img src='img/Tumor_Specific.png' style='margin:auto'/>
    				        	</div>
    				        	<h4 style='text-align: center;'>Tumor-Specific Translational Research</h4>
    				        </div>
    				        </div>
    				      </div>",
    				      HTML("
    				      <div style='right: -30%;position: absolute;top: 25%;z-index: 0;opacity: 0.3;'>
    				      <img src='img/FH_logo_improved.png'/>
    				      </div>"))),
   ## SCHARP ----
   panel(HTML("
   <div class = 'center_content'>
    <div style = 'margin:auto'>
    <img src='img/logos/scharp.png' style='max-width:800px;margin: auto;'/>
    <p style='font-size: 50px'> Worldwide Impact on HIV/AIDS Vaccine Research </p>
    </div>
   </div>
   ")))


## Validation ----
pres_val_elements <- pres_FH_scharp %>% 
  slide_markdown(title = tags$div(style = 'width:500px',"Package Validation"),"
  <div style='font-size: 60px;'>
  <br>
  Specifications <br>
  Code<br>
  Test Cases<br>
  Test Case Code<br>
  Documentation
  </div>", style = "width:600px; margin-top: 50px;")


pres_val_elements2 <- pres_val_elements %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Package Structure"),
  panel(
    tags$div(
    tags$pre(tags$code( class = "language-dir","
    -- DESCRIPTION
    -- man
    -- NAMESPACE
    -- R
       |__functions.R
    -- tests
    -- vignettes"), style = "margin: auto;width:400px"),
  class = "center_content"), style = "width: 800px"))


## Specifications ----
pres_val_specification <- pres_val_elements2 %>% 
  slide_multipanel(title = tags$div(style = 'width:700px',"Specifications"),
  panel_markdown("
  
  What are the requirements of the package?
  
  - What will the package do?
  - What are the expected ouputs?
  - What are the high level steps that need to be followed?

  ", style = "font-size: 45px; margin-top: 120px;"),
  
  panel_markdown("
  
  ```
  - My RStudio::Conf presentation will 
    - The contents will cover my teams approach to validation
    - Be 15-20 minutes long
    - Be entertaining 
  
  ```
  ", style = "font-size: 40px; margin-top: 150px;"),
  
  panel_markdown("
  <p style = 'font-size:60px;margin-bottom: 10px;'>Recording specifications</p>
  
  <p style = 'margin-bottom: 0px;'>Record Specifications in Rmarkdown </p>
  
    - 1 file per specification
    - Number specifications and details
  
 <p style = 'margin-bottom: 0px;'> Augment Rmarkdown with Roxygen </p>
  
    - Specification Title
    - Document who and when

  ", style = "font-size: 50px;"),
  
  panel(
  div(div(markdown_to_html("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Specifications For RStudio Conf 2020 Success
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2020/01/28
  
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Presentation will be between 15-20 minutes long
    + 1.3 Be entertaining, sucess measures by causing at least 3 people to laugh.
    + 1.4 (Optional) Fame and Glamour and start branded accessories chain.
  ```
  "), 
  style = "margin:auto"),
  class = "center_content"),
  style = "font-size: 40px;"),
  
  
  panel_markdown("
  Quickly update
  
    - Specifications
    - Ownership
    
  Close proximity to the task
  
  De-couple Specifications
  
  ", style = "font-size: 50px; margin-top: 100px;"),
  
  panel(div(div(markdown_to_html("
  ```
  -- vignettes
         |__Validation
           |__Specifications
             |__specification_001.Rmd
  ```"), 
  style = "margin:auto"),
  class = "center_content"),
   style = "font-size: 50px;"))



## Coding ----
pres_val_code <- pres_val_specification %>% 
  
  slide_multipanel(title = tags$div(style = 'width:500px',"Code"),
                   
  panel(style = "width:0px"),
  
  panel(tags$div(tags$div(
    tags$img(src = "img/I_dont_need_help.gif", style = "height:500px"),
    div( style = "bottom:0px;position:absolute",
         p("Queen - I Want To Break Free, 1984",style = "font-size:20px;color:grey;margin-bottom:0px;"),
         p("https://imgur.com/gallery/QC6Nllw",style = "font-size:20px;color:grey")
    ),
    style = "margin:auto;"), 
    class = "center_content"), style = "margin-top: 50px;"),
  
  panel(tags$div(tags$div(
    markdown_to_html("
  Dont worry, I won't be telling you how to code            
  "),style= "margin:auto"),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  panel_markdown("
  Documenting code ownership
    
    - External resource
      - excel, word, smartsheet
    - After the fact
    - Cumbersome
                 
  ", style = "margin-top: 100px; font-size: 50px;"),
  
  # panel_markdown("
  # ## Roxygenize
  # <div style = 'display: flex;vertical-align: top;'>
  # <div style = 'display:inline-block; color: grey'>
  # - Standard Roxygen Documentation
  #   - @title
  #   - @description
  #   - @param
  #   - @output
  #   - @examples
  # </div>
  # <div style = 'display:inline-block;'>
  # - 'Unique' Validation tags
  #   - @section Last Updated By:
  #   - @section Last Update Date
  # </div>
  # </div>
  # ", style = "width:1200px;font-size: 50px"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @examples
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Updated Date:
  #' 2020/01/29
  
  joke <- function(Setup, Punchline){
    print(Setup)
    Sys.sleep(3)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel(div(
    img(src = "img/joke_man_page.PNG",
        style = "height:100%; margin:auto"),
    class = "center_content")),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @param wait how long to wait to serve the punchline
  #' @examples
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last Updated By:
  #' Not Ellis Hughes
  #' @section Last Update Date:
  #' 2020/01/30
  
  joke <- function(Setup, Punchline, wait = 3){
    print(Setup)
    Sys.sleep(wait)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),

  panel(div(div(markdown_to_html("

  ```
  -- R
    |__jokes.R
  -- man
    |__joke.Rd
  -- tests
    |__testthat.R
    |__testthat
        |__test_joke.R
  ```
  "),style = "font-size: 40px;margin:auto"),class = "center_content")))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"A Case for Test Cases"),
                   
  panel(div(markdown_to_html("
  Draw connections between specifications and functions
  ")),
   div(
     img(src = 'img/How-to-find-innovation.jpg',style = 'height:400px;margin:auto'),
       div( style = "bottom:0px;position:absolute",
            p("Source: https://nc3t.com/wp-content/uploads/2014/10/How-to-find-innovation.jpg",style = "font-size:20px;color:grey")
       )),
   style = "margin-top: 150px;font-size: 50px"),
  
  panel(div(div(markdown_to_html("
  
  <span style='color:red'>Distinct from Unit Tests</span>
  
  A single test case can satisfy multiple specifications
  
  Every single specification must map to at least one test case
                 
  "),style = "margin:auto"),class = "center_content"),style = "font-size: 50px;"),
  
  panel_markdown("
  ## How to Document Test Cases
  
  - Record which Specifications are being met
  - Specify the required data
  - Record the steps needed without writing the code
  - Detail the expectations that need to be tested and how

  ",style = "font-size: 40px;"),

  panel_markdown("
  ## Documenting Test Cases
  
  Record Test Cases in Rmarkdown
  
    - 1 file per Set of Test Cases
    - Number Test Cases
  
  Augment Rmarkdown with Roxygen 
  
    - Test Case Title
    - Record who and when
  ",style = "font-size: 40px;"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title RStudio Conf 2020 Success Test Cases 001
  #' @section Last Updated By: 
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2020/01/29

  + _Test Cases_

  + Setup: Create RStudio::Conf 2020 Presentation 
    
  + T 1.1 Test that specifications 1.1, 1.2, and 1.3 are met by practicing presentation on unsuspecting co-workers
  
    - Present to a captive audience of coworkers and later your significant other
    + T 1.1.1 Test that the presentation was informative by asking what your audience learned.
    + T 1.1.2 Time the presentation and make sure it was between 15 and 20 minutes.
    + T 1.1.3 Test that you were entertaining by counting the amount of chuckles (>3)
        + T 1.1.3.1 Alternatively, eye-rolls from your significant other (>4)
  ```
  ", style = "width: 1400px"),
  
  panel_markdown("
  ## Modular Test Case Documentation
  
  - Easily shift and update
  - Easily assign Test Cases
  - Track updates
  
  ```
  -- vignettes
      |__Validation
        |__Test_Cases
          |__test_case_001.Rmd
  ```
  ",style = "font-size: 40px;"))

## Test Code ----

pres_val_test_code <- pres_val_test %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Coding"),
  panel_markdown("
  
  Implement Test Cases
  
  Record results
  
  Third Party 
  
  ", style = "margin-top:150px; font-size: 50px;"),
  panel_markdown("
  <p style='font-size:60px'>Benefits</p>
  
  - Resolves interpretation errors
      - documentation
      - test cases
  
  - Identify improvements
                 
  ",style = "font-size: 50px;margin-top: 150px;"),
  panel_markdown("
  <div class = 'center_content'>
  <div style = 'margin:auto; width: 100%;'>
  <p style='font-size:60px'>Approach</p>
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  <img src='https://github.com/r-lib/roxygen2/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  </div></div>
  ", style = "width: 500px;font-size: 60px;"),

  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  context('RStudio Conf 2020 Success')
  
  #' @title RStudio Conf 2020 Success 
  #' @section Last Updated By: 
  #' Not Ellis Hughes
  #' @section Last Update Date:
  #' 2020/01/29
  
  test_that('T1.1',{
    
    joke_result <- joke('What do you call a fake noodle?','An Impasta')
    expect_true(is_dad_joke(joke_result))
    expect_true(caused_laugher(joke_result))
    expect_true(embarrased_significant_other(joke_result))
    
  })
  
  ```
  "),
  
  panel_markdown("
  
  <p style='font-size:60px'>testthat</p>
  
    - Familar framework
    - Can run and developed interactively
    - Automation
    
  ",style = "font-size: 50px;margin-top: 150px;"),
  
  panel_markdown("
  
  <p style='font-size:60px'>Reporter Objects</p>
  
    - Track each test and expectation
    - Reports Success
    - Records Failure mode
    - Easily access contents
                 
  ",style = "font-size: 50px;margin-top: 150px;"),
  
  panel_markdown("
  
  ```{r, eval = FALSE}
  |  OK F W S | Context
  |   3       | RStudio Conf 2020 Success [3.2 s]
  
  ══ Results ═══════════════════════════════════════
  Duration: 3.2 s
  
  OK:       3
  Failed:   0
  Warnings: 0
  Skipped:  0
  ```           
  ",style = "font-size: 50px; margin-top:100px;"),
  
  panel_markdown("
  
  Using a custom print function the Reporter object<br><br>

  <img src='img/test_table_example.PNG' style='width: 700px; margin: auto'/>
  
  ",style = "font-size: 50px; margin-top:150px;"),
  
  panel_markdown("
  <p style='font-size:60px'>Modular Test Code Documentation</p>
  
  - Easily update Test Code and expectations
  - Track updates
  
  ```
  -- vignettes
      |__Validation
        |__Test_Code
          |__test_code_001.R
  ```
  ",style = "font-size: 50px;"))

## Documentation ----

pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
                   
  panel_markdown("
  ## What we have so far
  
  - Documents for each Specification in markdown
  - Roxygen documentation for Code
  - Documents for Test Cases in markdown
  - Test Case Code augmented with Roxygen documentation
  ",style = "font-size: 40px;margin-top: 50px;"),
  
  panel_markdown("
  ## Roxygen2
    - Generate list of ownership of all documentation

  ## Rmarkdown
    - Record Specifications and Test Cases
    - Generate Final Validation Document
    
  ## Testthat
    - Record results of test code
  ",style = "font-size: 40px;margin-top: 50px;"),
  
  panel(div(
    HTML("<img src='img/captain_planet.gif' style = 'height:800px;margin:auto' />"),
    div( style = "bottom:0px;position:absolute",
         p("'Captain Planet and the Planeteers' Theme Song: Turner Broadcasting System",style = "font-size:20px;color:grey"),
         p("Source: https://www.syfy.com/sites/syfy/files/styles/1100xauto/public/captain-planet.gif",style = "font-size:20px;color:grey")
    ),
    
    class = "center_content"),style = "margin-top: 50px;"),
  
  # panel_markdown("
  # # Single Rmarkdown 
  # 
  #   - gather all the information
  #   - run all the tests
  #   - Generate the Report
  # ",style = "font-size: 40px;"),
  
  panel(tags$iframe(src = "img/Validate.pdf", style = "width: 1200px; height: 100%", frameborder="0", marginwidth="0"),style = "margin-top: 50px;"),
  
  panel_markdown("
  ```
  -- DESCRIPTION
  -- man
  -- NAMESPACE
  -- tests
  -- R
    |__jokes.R
  -- vignettes
    |__Validation.Rmd
    |__Validation.pdf
    |__Validation
      |__Specifications
        |__specification_001.Rmd
      |__Test_Cases
        |__test_case_001.Rmd
      |__Test_Code
        |__test_code_001.R
  ```               
  ",style = "font-size: 40px;margin-top: 50px;"))
  
pres_val_doc2 <- pres_val_doc %>% 
  slide_wide(title = NULL,
    tags$div(
    tags$img(src = "img/val_and_R_forever2.png", 
             style = "height:100%; margin:auto;"), 
    class = "center_content", style = "height: 110%"))


## Conclusion ----
pres_conclusion <- pres_val_doc2 %>% 
  slide_multipanel(title = NULL,
  panel_markdown("
  ### Many thanks to all involved
  
  - Marie Vendettuoli
  - Anthony Williams
  - Jimmy Fulp 
  - Bharathi Lakshminarayanan
  - Rafael Kuttner
  - Alicia Sato
  - Shannon Grant
  - Paul Stutzman
  - Kate Ostbye
  
  - Many many more people
  ", style = "font-size: 40px;"))


## Final ----
                   
                   
pres_final <- pres_conclusion %>%  
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 120px',"Thank You"),"
  
   <div style = 'margin:auto;padding-top:20px;text-align:left; z-index:21; position: relative;'>
   <br>
   <div style = 'background-color: #ffffff;opacity: .5;border-radius: 10px;width: 900px;padding: 20px;font-size: 60px;margin:auto;color: black;'>
    <p style = 'margin-bottom: 0; font-size: 70px;'>Presentation available at: <br><a href = 'https://thebioengineer.github.io/validation' style='text-decoration: none;'>   thebioengineer.github.io/validation</a></p>
    <br>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;' class='fa fa-github-square'></i> github.com/thebioengineer/validation</p>
    <br>
    <div style = 'margin:auto'>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;'  class='fa fa-twitter-square'></i> @ellis_hughes</p>
    </div>
    </div>
   </div>
   
   <p style = 'margin-bottom: 0;'> Presentation brought to you by {sidescroller} </p>
   
   <div style='right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;'>
    <img src='img/FH_logo_improved.png'/>
   </div>
   
   ", style = "text-align: center;width:1600px; margin-top: 50px;")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("Approaches_to_Assay_Processing_Package_Validation.html"))


