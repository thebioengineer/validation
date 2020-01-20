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
    subtitle = c("Ellis Hughes",
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


## Intro To Validation ----

pres_val_intro <- pres_title %>% 
  slide_multipanel(title = NULL,
  panel(tags$div(
    tags$p("VALIDATION",
           style="color: red; font-size: 300px; margin:auto;"),
    class = "center_content")),
  panel(tags$div(
    tags$img(src = "img/Rlogo.png", 
             style = "height:500px; margin:auto;"), 
    class = "center_content")),
  panel(tags$div(
    tags$div( style = "margin:auto;",
    tags$img(src = "img/step_brothers_best_friends.webp", 
             style = "height:450px; margin:auto;"), 
    tags$p("https://bethgittings.tumblr.com/post/34641171446",
           style = "font-size:10px;")),
    class = "center_content")))

pres_val_explained <- pres_val_intro %>% 
  
  slide_multipanel(title = tags$div(style = "font-weight:200","What is Validation?"),
                   
  panel(tags$div( tags$div(
  markdown_to_html("
  Establishing documentation that a
  
    - Procedure
    - Process
    - Activity
  
  is in compliance.
  ")),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  panel(tags$div(tags$div(
  markdown_to_html("
  Record proof that it does what we expect it to do             
  "),style= "margin:auto"),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  panel(tags$div(tags$div(
  markdown_to_html("
  Improves Safey And Quality
  ")),class = "center_content"),
  style = "margin-top: 100px; font-size: 50px;"))
  
# ## Bio ----
# pres_bio <- pres_val_intro %>% 
#   slide_markdown(title = tags$div(style = 'width:500px',"Ellis Hughes"),"
#       <div style = 'height:100%'>
#         <div style = 'display:inline-block; vertical-align: top; padding-right:20px; font-size: 30px;'>
#         - Statistical Programmer
#            - Statistical Genetics
#            - HIV Vaccine Research
#         <br>
#         - Community:
#           - Seattle UseR Organizer
#           - Cascadia R Conf Committee
#         <br><br>
#         - Seattle Native
#         - Cooking!
#         <br>
#         - <a href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none;' class=\"fa fa-twitter-square\"></a> @ellis_hughes
#         </div>
#         <div style = 'display:inline-block;height:inherit;'>
#          <img src = 'https://thebioengineer.github.io/images/r_in_pharma/img/ellis_hughes.jpg' style = '-webkit-transform: rotate(270deg);
#                  -moz-transform: rotate(270deg);
#                  -o-transform: rotate(270deg);
#                  -ms-transform: rotate(270deg);
#                  transform: rotate(270deg);
#                  height: 400px;
#                  margin-top: 100px;'/>
#         </div>
#       </div>")

## Fred Hutch and SCHARP ----
pres_FH_scharp <- pres_val_explained %>% 
  
  slide_multipanel(title = "Fred Hutch and SCHARP",
                   ## Fred Hutch ----
  panel(HTML("<div style=\"display:inline-block;padding-top:100px;z-index: 100;position: relative;\">
                    <style type=\"text/css\">
                      .fhcrc_info_container{
                      	width: 375px;
                      	display:inline-block;
                      	margin:auto;
                      	
                      }
                    </style>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_copy/image.img.png\" alt=\"Icon depicting blood stem cell transplantation and immunotherapy\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Blood Stem Cell Transplantation<br>and Immunotherapy</h4>  
    				        </div>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_813484303_/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Cancer Risk Factors, and Causes,<br>Prevention and Outcomes</h4>  
    				        </div>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_467138480_/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Vaccine Development<br>and Virus-Associated Cancers</h4>  
    				        </div>				
    				      </div>
    			        
    				      <div style = 'z-index: 100;position: relative;'>
    				        <div style=\"margin:auto;width:70%\">
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_copy_copy/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Molecular Underpinnings of Cancer</h4>  
    				        </div>
            
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_813484303__56068710/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Tumor-Specific Translational Research</h4>  
    				        </div>
    				        </div>
    				      </div>",
    				      HTML("
    				      <div style=\"right: -30%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;\">
    				      <img src=\"img/FH_logo.png\"/>
    				      </div>"))),
   ## SCHARP ----
   panel(HTML("<ul style=\"list-style-type: none;\">
            					<li><img src=\"img/logos/scharp.png\" style=\"max-width:800px;margin-top:100px;margin-bottom:50px;\"/></li>
            					<!-- <li> <b>Established 1992</b> </li><br>
            					<li> <b>Worldwide-impact in the fight against cancer,<br/> HIV/AIDS and other infectious diseases.</b> </li><br>
            					<li><b>Clinical Data Management</b></li>
            					<li><b>Laboratory Data Management</b></li>
            					<li><b>Statistical Support and Analysis</b></li> -->
            				</ul>")))

## Prompted Task ----
pres_assays <- pres_FH_scharp %>% 
  slide_multipanel(title = tags$div(style = 'padding-right: 100px;',"Assay Processing Pipelines"),
      panel(HTML("<img src=\"img/scharp_world.jpeg\"/>"), style = "padding-top:100px"),
      panel(HTML("<img src=\"https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg\"  style=\"max-height:500px;max-width:800px\"/>
			            <p style=\"font-size:20px\">image source: https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg </p>")),
      panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px\"/>")),
      panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px; position: relative;z-index: 10;\"/>
                  <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:180px; padding-left: 30px;position: relative;z-index: 8; margin-top:-500px;\"/>
                  <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:180px; padding-left: 60px;position: relative; z-index: 6; margin-top:-500px;\"/>")),
      panel(HTML("<img src=\"img/antibody_thinker.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/assaying.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/visc.PNG\"  style=\"max-height:600px;margin-top:100px\"/>")))



pres_prompt <- pres_assays %>% 
  slide_wide(title = NULL,
  HTML("<div class = \"slide_title\" style=\"padding: 20px;\">
  <h1 style=\"font-size:60px;;margin-top:100px\"\"> 
  We need a validated pipeline that is rigid enough to provide form and consistency between studies,
  but flexible enough to handle potential changes
  </h1></div>"))

pres_assays2 <- pres_prompt %>% 
  slide_wide(title = NULL,
  HTML("<img src='img/busybusybusy.gif' style = 'width:60%;margin:auto'/>"))

pres_prompt2 <- pres_assays2 %>% 
  slide_wide(title = NULL,
  HTML("<div class = \"slide_title\" style=\"padding: 20px;\">
  <h1 style=\"font-size:60px;;margin-top:100px\"\"> 
  We need a <span style = 'color:red'>validated</span> pipeline that is rigid enough to provide form and consistency between studies,
  but flexible enough to handle potential changes
  </h1></div>"))


## Validation ----
pres_val_elements <- pres_prompt2 %>% 
  slide_markdown(title = tags$div(style = 'width:500px',"Validation"),"
  <div style='font-size: 35px;'>
  <br>
  Specifications <br><br>
  Code<br><br>
  Test Cases<br><br>
  Test Case Code<br><br>
  Documentation
  </div>", style = "width:800px;")

pres_val_elements2 <- pres_val_elements %>% 
  slide(title = tags$div(style = 'width:800px',"Package Validation"),
  panel(
  tags$pre(
    tags$code( class = "language-dir","
    -- DESCRIPTION
    -- man
       |__hello.Rd
    -- NAMESPACE
    -- R
       |__jokes.R
    -- tests
       |__testthat
       |__testthat.R
    -- vignettes
      |__Validate.Rmd
      |__Validation
        |__Specifications
          |__specification_001.Rmd
        |__Test_Cases
          |__test_case_001.R
        |__Test_Case_Code
          |__test_test_case_001.R"))))


## Specifications ----
pres_val_specification <- pres_val_elements2 %>% 
  slide_multipanel(title = tags$div(style = 'width:700px',"Specifications"),
  panel_markdown("
  
  What are the requirements of the package?
  
    - Goals that must be attained
    - QC's to run
    - Expected endpoints
  
  **Note that writing good specifications is hard**
  
  <div>
  <img src = 'img/herc_flex.webp' style = 'height:420px;'/>
  <p style = 'font-size: 10px'>https://66.media.tumblr.com/a0ce2e276be1616c5c512e22a1fcae9f/tumblr_nzvf5y44ln1uggb2ao1_500.gifv'</p>
  </div>
  ", style = "font-size: 35px; margin-top: 70px;"),
  panel_markdown("
  
  ## Example
  
  ```
  - My RStudio::Conference presentation will educate attendees
    - Cover the 5 Elements of Validation
    - Be 15-20 minutes long.
  ```
  ", style = "font-size: 35px; margin-top: 70px;"),
  panel_markdown("

  - Assess current state
  - Language agnostic
  
  <div style ='padding-top:20px'>
  <img src= 'img/Herc_current_state.webp' style = 'height:420px;'/>
  <p style = 'font-size: 10px'>https://66.media.tumblr.com/91ad717cd3585e96f22705abe72e6f4b/tumblr_osvrktrJDd1qe6vjyo1_500.gifv</p>
  </div>
  ", style = "font-size: 35px;"),
  panel_markdown("
  - Define success
  - Set the goals of the project

  <div style ='padding-top:20px'>
  <img src= 'www/hercules_obstacle_success.gif' style = 'height:420px;'/>
  </div>", style = "font-size: 35px;"),
  panel_markdown("
  - Don't be too perscriptive in how to complete task
  - Don't be ambiguous in success measurements
  
  <div style ='padding-top:20px'>
  <img src= 'img/hercules_im_a_hero.gif' style = 'height:420px;'/>
  <p style = 'font-size: 10px'> https://66.media.tumblr.com/62aa49e2504ed9d1af0253a10ceae0de/tumblr_o2agxpicGU1ub6o1yo1_500.gifv </p>
  </div>", style = "font-size: 35px;"),
  # <img src= 'https://assets.teenvogue.com/photos/5952d6552c9db4790715babd/master/w_400%2Cc_limit/hercules-alt.gif' style = 'height:420px;' />
    
  panel_markdown("
  ## Example
  
  ```{r eval=FALSE, echo = TRUE}
  #' @title Specifications For RStudio Conf 2020 Success
  #' @section Last updated by:
  #' Ellis Hughes
  #' @section Last updated date:
  #' 2020/01/29
  
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Be entertaining by causing 3 laughter sessions.
    + 1.3 Inform and document each step necessary for success.
    + 1.4 (Optional) Fame and Glamour and start branded accessories chain.
  ```
  "),
  panel_markdown("
  ## Modular Specifications
  
  - Single file / idea
  - Easily shift and update
  - De-couple Specifications
  
  ```
  -- vignettes
      |__Validate.Rmd
      |__Validation
        |__Specifications
          |__specification_001.Rmd
  ```
  ", style = "font-size: 35px;"))



## Coding ----
pres_val_code <- pres_val_specification %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Code"),
                   
  panel(tags$div(tags$div(
    tags$img(src = "img/I_dont_need_help.gif", 
             style = "height:500px"),
    tags$p(style = "font-size:10px","https://imgur.com/gallery/QC6Nllw")
    ,style = "margin:auto;"), 
    class = "center_content")),
  
  panel(tags$div(tags$div(
    markdown_to_html("
  Dont worry, I won't be telling you how to code            
  "),style= "margin:auto"),class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  panel_markdown("
  ## Do it for your future self
  
  - Define function requirements
  - Assign Tasks

  <div>
  <img src = 'https://miro.medium.com/max/694/1*G45BFLThPqHFW9C16TNx5Q.gif' style = 'height:400px'/>
  <p style = 'font-size:10px;'>https://miro.medium.com/max/694/1*G45BFLThPqHFW9C16TNx5Q.gif</p>
  </div>
  "),
  
  panel_markdown("
  
  ### What is the purpose of this function?
  
  ```r  
  foo <- function(bar,baz){
    print(bar)
    Sys.sleep(3)
    print(baz)
  }
  ```
  "),
  
  panel_markdown("
  ## Document your code
  <div style = 'display: flex;vertical-align: top;'>
  <div style = 'display:inline-block'>
  - Standard Roxygen Documentation
    - @title
    - @description
    - @param
    - @output
    - @example
  </div>
  <div style = 'display:inline-block;'>
  - 'Unique' Validation tags
    - @section Last Edited By
    - @section Last Edit Date
  </div>
  </div>

  "),
  
  panel_markdown("
  ## Unit Test your code
  
  - As the function author, does it behave as you expect
  - Protection from accidental changes
  
  - testthat
    - test expectations around your code
    - check errors are fired
    - Check outputs are consistent
  
  "),

  panel_markdown("
  ## Github

  - Branching
  - Detailed code Review
    - Style guides

  <img src='img/GitHub-Mark-Light-120px-plus.png' style='height:400px;'/>

  "),
  panel_markdown("
  ## Documentation

  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @example
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last updated by:
  #' Ellis Hughes
  #' @section Last updated date:
  #' 2020/01/29
  
  joke <- function(Setup, Punchline){
    print(Setup)
    Sys.sleep(3)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  panel_markdown("
  ## Modular Function Documentation
  
  - Track Progress
  - Meet Regularly to discuss roadblocks
  - Ensure high quality code
  
  
  ```
  -- R
    |__jokes.R
  -- man
    |__hello.Rd
  -- tests
    |__testthat
    |__testthat.R
  ```
  "))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"A Case for Test Cases"),
  panel_markdown("
  Draw connections between specifications and functions

  <div>
  <img src = 'img/How-to-find-innovation.jpg' style = 'height:400px'/>
  <p style = 'font-size:10px'>https://nc3t.com/wp-content/uploads/2014/10/How-to-find-innovation.jpg</p>
  </div>
  "),
  panel_markdown("
  # Goal

  What Specifications are being satistified by the test passing
  
  setup
  inputs
  steps to follow
  expectations of results
  
  "),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/owl_how_to2.jpg", 
                       style = "height:450px; margin:auto;"), 
              tags$p("https://thevirtualinstructor.com/blog/wp-content/uploads/2019/01/how-step-by-step-drawing-tutorials-can-lead-you-astray.jpg",
                     style = "font-size:10px;")),
    class = "center_content")),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/owl_how_to_good.jpg", 
                       style = "height:450px; margin:auto;"), 
              tags$p("  https://thegraphicsfairy.com/wp-content/uploads/blogger/-D9oAqKr5JNU/TYocayndzhI/AAAAAAAALY8/T9igMEmEnII/s1600/draw-owls-gfairysm.jpg",
                     style = "font-size:10px;")),
    class = "center_content")),
  
  panel_markdown("
  ## How to Document Test Cases
  
  - Document the required data
  - Record the step to run without writing the code
  - Detail the expectations that need to be tested and how
  "),
  panel_markdown("
  ## Documentation
  
  ```{r eval=FALSE, echo = TRUE}
  #' @title RStudio Conf 2020 Success Test Cases 001
  #' @section Last updated by: 
  #' Ellis Hughes
  #' @section Last update date:
  #' 2020/01/29

  + _Test Cases_

  + Setup: Create RStudio::Conf 2020 Presentation 
    
  + T 1.1 Test that specifications 1.2, 1.2, and 1.3 by practicing presentation on unsuspecting co-workers
  
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
      |__Validate.Rmd
      |__Validation
        |__Test_Cases
          |__test_case_001.R
  ```
  "))

## Test Code ----

pres_val_test_code <- pres_val_test %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Case Coding"),
  panel_markdown("
  ## Benefits
  
  - Resolves interpretation errors
      - documentation
      - test cases
  
  - Identify improvements
                 
  "),
  panel_markdown("
  ## Approach
  
  - testthat format
  
  - Combine with Roxygen comments
  
  <div>
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  <img src='https://github.com/r-lib/roxygen2/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  </div>

  "),
  
  panel_markdown("
  ## Documentation
  
  ```{r eval=FALSE, echo = TRUE}
  context('RStudio Conf 2020 Success')
  
  #' @title RStudio Conf 2020 Success 
  #' @section Last updated by: 
  #' Ellis Hughes
  #' @section Last update date:
  #' 2020/01/29
  #' 
  testthat('T1.1',{
    
    joke_result <- joke('What do you call a fake noodle?','An Impasta')
    expect_true(is_dad_joke(joke_result))
    expect_true(caused_laugher(joke_result))
    expect_true(embarrased_offspring(joke_result))
    
  })
  
  ```
  "),
  panel_markdown("
  ## Evaluation 
  
  - testthat `reporter` object is created
    - success of expectations as 'As Expected'
    - failures with the code that fails
  
  <img src='img/test_table_example.PNG' style='width: 700px'/>
  "),
  panel_markdown("
  ## Modular Test Code Documentation
  
  - Easily update Test Code and expectations
  - Track updates
  "))

## Documentation ----

pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
  panel_markdown("
  ## What we have so far
  
  - Documents for each Specification in markdown
  - Roxygen documentation for Code
  - Documents for Test Cases in markdown
  - Test Case Code augmented with Roxygen documentation
  "),
  panel(HTML("<img src='img/captain_planet.gif' style = 'height:90%;width:90%;margins:auto' />"),
    style = "width: 600px;"),
  panel_markdown("
  ## Master Document that 
  
  - Record all elements in a single location
  
  - Scraping for Author and Edit Dates
  - Separating out specs into files allows for modular extension
  - Roxygen to document editing and edit dates
  - Testthat to evaluate and record test case code results"),
  panel_markdown("
  # EXAMPLE OF PDF
  "))


## Conclusion ----
pres_conclusion <- pres_val_doc %>% 
  slide_multipanel(title = NULL,
  panel_markdown("
  # Many thanks to all involved
  
  - Marie Vendettuoli
  - Anthony Williams
  - Jimmy Fulp 
  - Bharathi Lakshminarayanan
  - Alicia Sato
  - Shannon Grant
  - Paul Stutzman
  - Kate Ostbye
  
  "))


## Final ----
                   
                   
pres_final <- pres_conclusion %>%  
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 70px',"Thank You"),"
   ## Questions?
   
   
   <div style = 'margin:auto;padding-top:50px;padding-left:500px;text-align:left; transform: scale(1.2); z-index:21; position: relative;'>
   Connect:
   <ul>
    <li> Slides are available at <br>github.com/thebioengineer/RStudio_conf_2020 </li>
    <br>
    <br>
    <li> <a href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none;'  class=\"fa fa-twitter-square\"></a> @ellis_hughes </li>
    <li> <a href = 'https://linkedin.com/in/ellishughes' style = 'text-decoration: none;' class=\"fa fa-linkedin-square\"></a> linkedin.com/in/ellishughes </li>
    <li> <a href = 'https://github.com/thebioengineer' style = 'text-decoration: none;' class=\"fa fa-github-square\"></a> github.com/thebioengineer</li>
   </ul>
   </div>
   
   <div style=\"right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;\">
    <img src=\"img/FH_logo.png\"/>
   </div>
   
   ", style = "text-align: center;width:1600px; back")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("Approaches_to_Assay_Processing_Package_Validation.html"))


