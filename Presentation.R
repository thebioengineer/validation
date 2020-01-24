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
                 "Fred Hutch Cancer Research Center - SCHARP - VISC",
                 "rstudio::conf(2020L)"
                 ),
    style = "font-family: 'Darker Grotesque',Arial;
    font-size: 40px;
    font-weight: 300;
    background: black;
    ",
    text_align = "left"
  )

## Intro to the Pain

pres_val_explained <- pres_title %>% 
  slide_multipanel(title = NULL,
                   
  panel(tags$div(tags$div(style = "font-weight:200;margin:auto;font-size: 80px",
      p("What is Computer System Validation?")),
      class = "center_content")),
  
  panel(tags$div( tags$div(markdown_to_html("
  Establishing documentary evidence that your software performs a
  
    - Procedure
    - Process
    - Activity
  
  in compliance with specifications with a high degree of assurance.
  ")),class = "center_content"), style = "margin-top: 100px"),
  
  panel(tags$div(tags$div(markdown_to_html("
  <p style = 'font-size: 60px'>Validatation</p>
  
    - Does the system behave as we expect
    - Returns the correct value
    - Throws an error when values are unexpected
  
  <p style = 'font-size: 60px'>Verification</p>
  
    - Do the outputs match between two approaches
  "), style = "margin:auto"),class = "center_content")), 
  
  panel(tags$div(tags$div(markdown_to_html("
  Required by Federal Law<br><span style = 'color:orange'>21 CFR 11</span>
  "), style = "margin:auto"),class = "center_content"),
  style = "width: 1000px; margin-top: 100px;font-size:70px;" ),  
        
  panel(tags$div(tags$div(markdown_to_html("
  Improved Quality and Safety
  
  Creates Faster Results
  
  Promotes Trust
  "), style = "margin:auto"),class = "center_content"),style = "margin-top: 100px;"),
  style = "font-size: 50px;")

pres_pain <-pres_val_explained %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Validation in Practice"),
  
  panel_markdown("
  
  <p style = 'font-size: 60px'>Validation can be a high bar</p>
  
    - Labor-hours
    - Progress tracking
  ", style = "margin-top: 100px; font-size: 50px"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
        img(src = "img/jim_carrey_file.gif", style = "height:100%"),
        p("https://media1.tenor.com/images/3267a92e265348c0cc435a7989d65e23/tenor.gif", style = "font-size:10px;color:grey")
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
             p("https://thumbs.gfycat.com/EarnestGiganticDorado-mobile.mp4", style = "font-size:10px;color:grey")
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
    tags$img(src = "img/step_brothers_best_friends.webp", 
             style = "height:450px; margin:auto;"), 
    tags$p("https://bethgittings.tumblr.com/post/34641171446",
           style = "font-size:10px;color:grey")),
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
      </div>")

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
   <img src='img/logos/scharp.png' style='max-width:800px;margin: auto;'/>
   <p style='font-size: 50px'> Worldwide Impact on HIV/AIDS Vaccine Research </p>
   </div>
   ")))

## Prompted Task ----
# pres_assays <- pres_FH_scharp %>% 
#   slide_multipanel(title = tags$div(style = 'padding-right: 100px;',"Assay Processing Pipelines"),
#       panel(tags$div(tags$img(src = 'img/scharp_world.jpeg', style = "height:500px; margin:auto;"), class = "center_content")),
#       panel(tags$div(tags$img(src = 'img/crowd_of_people.png', style = "height:300px; margin:auto;"), class = "center_content")),
#       panel(HTML("<img src='img/sample_coll.png'  style='max-height:600px; padding-top:200px'/>")),
#       panel(tags$div(tags$img(src = 'img/ab.png', style = "height:300px; margin:auto;"), class = "center_content")),
#       panel(HTML("<img src='img/sample_coll.png'  style='max-height:600px; padding-top:200px; position: relative;z-index: 10;'/>
#                   <img src='img/sample_coll.png'  style='max-height:600px; padding-top:180px; padding-left: 30px;position: relative;z-index: 8; margin-top:-500px;'/>
#                   <img src='img/sample_coll.png'  style='max-height:600px; padding-top:180px; padding-left: 60px;position: relative; z-index: 6; margin-top:-500px;'/>")),
#       panel(tags$div(tags$img(src = 'img/antibody_thinker.PNG', style = "height:600px; margin:auto;"), class = "center_content")),
#       panel(tags$div(tags$img(src = 'img/assaying_clear.png', style = "height:500px; margin:auto;"), class = "center_content")),
#       panel(tags$div(tags$img(src = 'img/visc.PNG', style = "height:500px; margin:auto;"), class = "center_content")))
# 
# 
# pres_prompt <- pres_assays %>% 
#   slide_wide(title = NULL,
#   markdown_to_html("
#   Need a validated pipeline
#   
#   - -rigid enough to provide form and consistency
#   - -flexible enough to handle potential changes
#   
#   "), style = "font-size: 60px")
# 
# pres_assays2 <- pres_prompt %>% 
#   slide_wide(title = NULL,
#              tags$div(tags$img(src = 'img/busybusybusy.gif', style = "height:600px; margin:auto;"), class = "center_content"))
# 
# pres_prompt2 <- pres_assays2 %>% 
#   slide_wide(title = NULL,
#   markdown_to_html("
#   We need a <span style = 'color:red;font-size: 80px'>validated</span> pipeline
#   
#   - -rigid enough to provide form and consistency
#   - -flexible enough to handle potential changes
#   
#   "), style = "font-size: 60px")


## Validation ----
pres_val_elements <- pres_FH_scharp %>% 
  slide_markdown(title = tags$div(style = 'width:500px',"Validation"),"
  <div style='font-size: 60px;'>
  <br>
  Specifications <br>
  Code<br>
  Test Cases<br>
  Test Case Code<br>
  Documentation
  </div>", style = "width:600px;")

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
  class = "center_content"), style = "width: 600px"))


## Specifications ----
pres_val_specification <- pres_val_elements2 %>% 
  slide_multipanel(title = tags$div(style = 'width:700px',"Specifications"),
  panel_markdown("
  
  What are the requirements of the package?
  
  - What will the package do?
  - What are the expected ouputs?

  ", style = "font-size: 45px; margin-top: 70px;"),
  panel_markdown("
  
  ```
  - My RStudio::Conf presentation will 
    - The contents will cover an approach to validation
    - Be 15-20 minutes long
    - Be entertaining 
  
  ```
  ", style = "font-size: 40px; margin-top: 150px;"),
  
  panel(div(markdown_to_html("
  
  Assess current state
  
  Processes and Agreements already in place
  
  Consult Subject Matter Experts
  "),
  div(
    img(src = 'img/Herc_current_state.webp', style = 'height:400px;'),
    p(style = 'font-size: 10px; color: grey;', 'https://66.media.tumblr.com/91ad717cd3585e96f22705abe72e6f4b/tumblr_osvrktrJDd1qe6vjyo1_500.gifv'))
  ),
  style = "font-size: 40px; width: "),
  
  panel(div(markdown_to_html("
  
  Detail the goals of the project
  
  Set success criteria

  "),
  div( style = "margin-top:130px;",
    img(src = 'img/hercules_im_a_hero.gif', style = 'height:400px;'),
    p(style = 'font-size: 10px; color: grey;', 'https://66.media.tumblr.com/62aa49e2504ed9d1af0253a10ceae0de/tumblr_o2agxpicGU1ub6o1yo1_500.gifv'))
  ),
  style = "font-size: 40px;"),
  
  panel(div(div(markdown_to_html("
  
  Be language agnostic
  
  Leave details in how to complete task out
  
  Use specific success measurements
  
  "), style = "margin:auto;font-size: 50px; font-weight: 600"), class = "center_content"),
  style = "font-size: 35px; color: red;"),
  
  panel_markdown("
  ## How to Record Specifications
  
  Record Specifications in Rmarkdown
  
    - 1 file per specification
    - Number specifications and details
  
  Augment Rmarkdown with Roxygen 
  
    - Specification Title
    - Record who and when
  ", style = "font-size: 40px;"),
  
  panel_markdown("
  ## Example
  
  ```{r eval=FALSE, echo = TRUE}
  #' @title Specifications For RStudio Conf 2020 Success
  #' @section Last updated by:
  #' Ellis Hughes
  #' @section Last update date:
  #' 2020/01/29
  
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Inform and document each step necessary for success.
    + 1.3 Be entertaining by causing at least 3 people to laugh.
    + 1.4 (Optional) Fame and Glamour and start branded accessories chain.
  ```
  ",style = "font-size: 40px;"),
  panel_markdown("
  ## Modular Specifications
  
  - Easily shift and update
  - De-couple Specifications
  
  ```
  -- vignettes
         |__Validation
           |__Specifications
             |__specification_001.Rmd
  ```",style = "font-size: 40px;"))



## Coding ----
pres_val_code <- pres_val_specification %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Code"),
  panel(style = "width:0px"),
  panel(tags$div(tags$div(
    tags$img(src = "img/I_dont_need_help.gif", 
             style = "height:500px"),
    tags$p(style = "font-size:10px;color:grey","https://imgur.com/gallery/QC6Nllw")
    ,style = "margin:auto;"), 
    class = "center_content")),
  
  panel(tags$div(tags$div(
    markdown_to_html("
  Dont worry, I won't be telling you how to code            
  "),style= "margin:auto"),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  # 
  # panel(div(markdown_to_html("
  # ## Team Coding Principals
  # 
  # - Follow Good Programming Practices
  # - Define function requirements
  # 
  # ")),
  # # div(img(src= 'img/kondo_calm.gif', style = 'height:400px'),
  # # p(style = 'font-size: 10px; color: grey;','https://miro.medium.com/max/694/1*G45BFLThPqHFW9C16TNx5Q.gif')))
  # style = "font-size: 40px"),
  
  panel_markdown("
  ## Roxygenize
  <div style = 'display: flex;vertical-align: top;'>
  <div style = 'display:inline-block; color: grey'>
  - Standard Roxygen Documentation
    - @title
    - @description
    - @param
    - @output
    - @examples
  </div>
  <div style = 'display:inline-block;'>
  - 'Unique' Validation tags
    - @section Last updated by:
    - @section Last updated date
  </div>
  </div>
  ", style = "width:1000px;font-size: 40px"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @example
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last Eed by:
  #' Ellis Hughes
  #' @section Last updated date:
  #' 2020/01/29
  
  joke <- function(Setup, Punchline){
    print(Setup)
    #Pause for the punchline
    Sys.sleep(3)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel_markdown("
  ## Unit Tests
  
  - As the function author, does it behave as you expect
  - Protection from accidental changes
  
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='height:200px;margin:auto'/>
  
  ",style = "font-size: 40px"),

  # panel_markdown("
  # ## Github
  # 
  # - Branching
  # - Pull Requests
  # - Visually Track Progress
  # 
  # <img src='img/GitHub-Mark-Light-120px-plus.png' style='height:200px;margin:auto;'/>
  # 
  # ",style = "font-size: 40px"),
  
  panel_markdown("
  ## Modular Functions, Documentation and Tests
  
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
  ",style = "font-size: 40px"))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"A Case for Test Cases"),
                   
  panel(div(markdown_to_html("
  Draw connections between specifications and functions
  ")),
   div(img(src = 'img/How-to-find-innovation.jpg',style = 'height:400px;'),
     p(style = 'font-size: 10px; color: grey;','https://nc3t.com/wp-content/uploads/2014/10/How-to-find-innovation.jpg')),
   style = "margin-top: 100px;font-size: 50px"),
  
  panel(div(div(markdown_to_html("
  
  <span style='color:red'>Distinct from Unit Tests</span>
  
  A single test case can satisfy multiple specifications
  
  Every single specification must map to at least one test case
                 
  "),style = "margin:auto"),class = "center_content"),style = "font-size: 50px;"),
  
  panel_markdown("
  ## How to Document Test Cases
  
  - Specify the required data
  - Record the steps needed without writing the code
  - Detail the expectations that need to be tested and how

  ",style = "font-size: 40px;"),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/owl_how_to_2.jpg", 
                       style = "height:450px; margin:auto;"), 
              tags$p("https://thevirtualinstructor.com/blog/wp-content/uploads/2019/01/how-step-by-step-drawing-tutorials-can-lead-you-astray.jpg",
                     style = "font-size:10px;color:grey")),
    class = "center_content")),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/owl_how_to_good.jpg", 
                       style = "height:450px; margin:auto;"), 
              tags$p("https://thegraphicsfairy.com/wp-content/uploads/blogger/-D9oAqKr5JNU/TYocayndzhI/AAAAAAAALY8/T9igMEmEnII/s1600/draw-owls-gfairysm.jpg",
                     style = "font-size:10px;color:grey")),
    class = "center_content")),
  
  panel_markdown("
  ## Documenting Test Cases
  
  Record Specifications in Rmarkdown
  
    - 1 file per Set of Test Cases
    - Number Test Cases and Specifications
  
  Augment Rmarkdown with Roxygen 
  
    - Specification Title
    - Record who and when
  ",style = "font-size: 40px;"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title RStudio Conf 2020 Success Test Cases 001
  #' @section Last updated by: 
  #' Ellis Hughes
  #' @section Last update date:
  #' 2020/01/29

  + _Test Cases_

  + Setup: Create RStudio::Conf 2020 Presentation 
    
  + T 1.1 Test that specifications 1.2, 1.2, and 1.3 are met by practicing presentation on unsuspecting co-workers
  
    - Present to a captive audience of coworkers and later your significant other
    +  T 1.1.1 Test that the presentation was informative by asking what your audience learned.
    +  T 1.1.2 Test that you were entertaining by counting the amount of chuckles (>3)
        + T 1.1.2.1 Alternatively, groans from your significant other at your jokes (>4)
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
  
  ", style = "margin-top:100px; font-size: 50px;"),
  panel_markdown("
  ## Benefits
  
  - Resolves interpretation errors
      - documentation
      - test cases
  
  - Identify improvements
                 
  ",style = "font-size: 40px;"),
  panel_markdown("
  ## Approach
  <br>
  <br>
  <div class = 'center_content'>
  <div style = 'margin:auto; width: 100%;'>
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  <img src='https://github.com/r-lib/roxygen2/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  </div></div>
  ", style = "width: 500px;font-size: 40px;"),
  
  panel_markdown("
  ## Documenting Test Code
  
  - 1 file per Set of Test Cases
  - In the description of the test, record Test Case
  
  Augment Rmarkdown with Roxygen 
  
    - Specification Title
    - Record who and when
  ",style = "font-size: 40px;"),
  

  panel_markdown("
  ## Documentation
  
  ```{r eval=FALSE, echo = TRUE}
  context('RStudio Conf 2020 Success')
  
  #' @title RStudio Conf 2020 Success 
  #' @section Last updated by: 
  #' Not Ellis Hughes
  #' @section Last update date:
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
  
  ## testthat Reporter Objects
  
    - Track each test and expectation
    - Reports Success
    - Records Failure mode
  
  Using a custom print function:
  <img src='img/test_table_example.PNG' style='width: 700px'/>
  ",style = "font-size: 40px;"),
  
  panel_markdown("
  ## Modular Test Code Documentation
  
  - Easily update Test Code and expectations
  - Track updates
  
  ```
  -- vignettes
      |__Validation
        |__Test_Code
          |__test_code_001.R
  ```
  ",style = "font-size: 40px;"))

## Documentation ----

pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
                   
  panel_markdown("
  ## What we have so far
  
  - Documents for each Specification in markdown
  - Roxygen documentation for Code
  - Documents for Test Cases in markdown
  - Test Case Code augmented with Roxygen documentation
  ",style = "font-size: 40px;"),
  
  panel_markdown("
  ## Roxygen2
    - Generate list of ownership of all documentation

  ## Rmarkdown
    - Record Specifications and Test Cases
    - Generate Final Validation Document
    
  ## Testthat
    - Record results of test code
  ",style = "font-size: 40px;"),
  
  panel(div(HTML("<img src='img/captain_planet.gif' style = 'height:800px;margins:auto' />"),class = "center_content")),
  
  panel_markdown("
  # Single Rmarkdown 
  
    - gather all the information
    - run all the tests
    - Generate the Report
  ",style = "font-size: 40px;"),
  
  panel(tags$iframe(src = "img/Validate.pdf", style = "width: 1200px; height: 100%", frameborder="0", marginwidth="0")),
  
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
  ",style = "font-size: 40px;"))
  
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
  # Many thanks to all involved
  
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
  "))


## Final ----
                   
                   
pres_final <- pres_conclusion %>%  
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 120px',"Thank You"),"
   ## Many Thanks to the folks at RStudio for organizing this great event!
   
   
   <div style = 'margin:auto;padding-top:50px;text-align:left; z-index:21; position: relative;'>
   <br>
   <div style = 'background-color: #ffffff;opacity: .5;border-radius: 10px;width: 900px;padding: 20px;font-size: 40px;margin:auto;color: black;'>
    <p style = 'margin-bottom: 0; font-size: 50px;'>Slides are available at <br>github.com/thebioengineer/RStudio_conf_2020</p>
    <br>
    <p style = 'margin-bottom: 0;'><i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none;'  class='fa fa-twitter-square'></a> @ellis_hughes</p>
    <p style = 'margin-bottom: 0;'><i href = 'https://linkedin.com/in/ellishughes' style = 'text-decoration: none;' class='fa fa-linkedin-square'></a> linkedin.com/in/ellishughes </p>
    <p style = 'margin-bottom: 0;'><i href = 'https://github.com/thebioengineer' style = 'text-decoration: none;' class='fa fa-github-square'></a> github.com/thebioengineer </p>
    </div>
   </div>
   
   <div style='right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;'>
    <img src='img/FH_logo_improved.png'/>
   </div>
   
   ", style = "text-align: center;width:1600px; back")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("Approaches_to_Assay_Processing_Package_Validation.html"))


