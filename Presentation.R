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
    src = c(href = here("www")),
    stylesheet = "RStudio_conf_2020.css")))

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

## Bio ----
pres_bio <- pres_title %>% 
  slide_markdown(title = tags$div(style = 'width:500px',"Ellis Hughes"),"
      <div style = 'height:100%'>
        <div style = 'display:inline-block; vertical-align: top; padding-right:20px; font-size: 30px;'>
        - Statistical Programmer
           - Statistical Genetics
           - HIV Vaccine Research
        <br><br>
        - Community:
          - Seattle UseR Organizer
          - Cascadia R Conf Committee
        <br><br>
        - Seattle Native
        - Cooking!
        <br><br>
        - <a class=\"fa fa-twitter-square\"></a> @ellis_hughes
        </div>
        <div style = 'display:inline-block;height:inherit;'>
         <img src = 'https://thebioengineer.github.io/images/r_in_pharma/img/ellis_hughes.jpg' style = '-webkit-transform: rotate(270deg);
                 -moz-transform: rotate(270deg);
                 -o-transform: rotate(270deg);
                 -ms-transform: rotate(270deg);
                 transform: rotate(270deg);
                 height:100%'/>
        </div>
      </div>")

## Background ----
pres_background <- pres_bio %>%
  slide_markdown(title = tags$div(style = 'width:500px',"Outline"),
  content = "
  <div style = 'font-size: 33px;position: absolute;z-index: 2;'>
  - Fred Hutch and SCHARP
  <br><br>
  - Assay Pipelines
  <br><br>
  - Validation
  </div>",
  HTML("
  <div style=\"right: -30%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;\">
  <img src=\"img/FH_logo.png\"/>
  </div>
  "))

## Fred Hutch and SCHARP ----
pres_FH_scharp <- pres_background %>% 
  slide_multipanel(title = "Fred Hutch and SCHARP",
                   ## Fred Hutch ----
                   panel(HTML("<div style=\"display:inline-block;padding-top:100px\">
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
    			        
    				      <div>
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
    				      </div>")),
                   ## SCHARP ----
                   panel(HTML("<ul style=\"list-style-type: none;\">
            					<li><img src=\"img/logos/scharp.png\" style=\"max-width:800px;margin-top:100px;margin-bottom:50px;\"/></li>
            					<li> <b>Established 1992</b> </li><br>
            					<li> <b>Worldwide-impact in the fight against cancer,<br/> HIV/AIDS and other infectious diseases.</b> </li><br>
            					<li><b>Clinical Data Management</b></li>
            					<li><b>Laboratory Data Management</b></li>
            					<li><b>Statistical Support and Analysis</b></li>
            				</ul>")))

## Prompted Task ----
pres_assays <- pres_FH_scharp %>% 
  slide_multipanel(title = "Assay Processing Pipelines",
      panel(HTML("<img src=\"img/scharp_world.jpeg\"/>"), style = "padding-top:100px"),
      panel(HTML("<img src=\"https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg\"  style=\"max-height:500px;max-width:800px\"/>
			            <p style=\"font-size:20px\">image source: https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg </p>")),
      panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px\"/>")),
      panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px; position: relative;z-index: 10;\"/>
                  <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:180px; padding-left: 30px;position: relative;z-index: 8; margin-top:-500px;\"/>
                  <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:180px; padding-left: 60px;position: relative; z-index: 6; margin-top:-500px;\"/>")),
      panel(HTML("<img src=\"img/thinker.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/assaying.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/visc.PNG\"  style=\"max-height:600px;margin-top:100px\"/>")))

## Validation ----
pres_val_elements <- pres_assays %>% 
  slide_markdown(title = tags$div(style = 'width:500px',"Validation"),"
  <div style='font-size: 33px;'>
  <br><br>
  Write Specifications <br><br>
  Code<br><br>
  Design Test Cases<br><br>
  Evaluate Test Cases<br><br>
  Document Results for Final Sign Off
  </div>")


## Specifications ----
pres_val_specification <- pres_val_elements %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Specifications"),
  panel_markdown("
  ## Do:
  
  - Set the goals of the project
  - Define current state
  - Specific Features
  - System agnostic
  - Define success
  - Set a time line
  
  <div style ='padding-top:20px'>
  <img src= 'www/hercules_obstacle_success.gif' style = 'height:420px;'/>
  </div>"),
  panel_markdown("
  ## Dont:
  
  - Leave ambiguity final product
  - Define exact process
  - Leave Success metrics up to interpretation
  
  <div style ='padding-top:100px'>
  <img src= 'https://assets.teenvogue.com/photos/5952d6552c9db4790715babd/master/w_400%2Cc_limit/hercules-alt.gif' style = 'height:420px;'/>
  </div>"),
  panel_markdown("
  ## Documentation
  
  - 1 Specification Family : 1 file
  
  - Record pertinent information
  
  - Detail
      - Spec
      - Measureables
      - success
  
  ```
  #' @title Function Specifications 001
  #' @section Last updated by:
  #' Ellis Hughes
  #' @section Last updated date:
  #' 2020-1-27
  #' 
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Be entertaining.
    + 1.3 Inform and document each step necessary for success.
    + 1.4 Fame and Glamour.
  ```
  "))

## Coding ----
pres_val_code <- pres_val_specification %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Code"),
  panel_markdown("
  - GitHub and Code Review
  - Unit Testing - Testthat
  - Roxygen
  "))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Cases"),
  panel_markdown("
  - Specifically test that Code meets Specs
  - Detailed without writing code
  - Resolves interpretation errors and improves code
  "))

## Test Code ----

pres_val_test_code <- pres_val_test %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Test Cases"),
  panel_markdown("
  - Test that format
  - Combine with Roxygen comments
  - Breaking out
      - each family of tests into a file
      - each sub-test as a testthat case
  "))

## Documentation ----
pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
  panel_markdown("
  - Record All elements in a single location
  
  - Following good programming practices led to
    - Scraping functions for author/edits
    - separating out specs into files allows for modular extension
    - Roxygen to document editing and edit dates
    - using testthat like structure led to ability to using testthat reports to document success/failures
    - Automation is mo betta"))


## Conclusion ----
pres_conclusion <- pres_val_doc %>% 
  slide_multipanel(title = tags$div(style = 'width:500px',"Final Document"),
  panel_markdown("
  Many thanks to all involved
  "),
  panel_markdown("
  Fred Hutch, Managers, and Team
  "))


## Final ----
                   
                   
pres_final <- pres_conclusion %>% 
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 70px',"Thank You"),"
   ## Any Questions?
   
   
   <div style = 'margin:auto;padding-top:50px;padding-left:600px;text-align:left; transform: scale(1.5)'>
   Connect:
   <ul>
    <li> <a class=\"fa fa-twitter-square\"></a> @ellis_hughes </li>
    <li> <a class=\"fa fa-linkedin-square\"></a> linkedin.com/in/ellishughes </li>
    <li> <a class=\"fa fa-github-square\"></a> github.com/thebioengineer</li>
   </ul>
   </div>
   
   <div style=\"right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;\">
    <img src=\"img/FH_logo.png\"/>
   </div>
   
   ", style = "text-align: center;width:1600px")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("Approaches_to_Assay_Processing_Package_Validation.html"))


