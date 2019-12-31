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
      stylesheet = "font-awesome.min.css")
    )
)

## Title ----
pres_title <- pres %>% 
  title_slide(
    title = "Approaches to Assay Processing Package Validation",
    subtitle = c("Ellis Hughes",
                 "Fred Hutch Cancer Research Center - SCHARP - VISC",
                 "rstudio::conf(2020L)"
                 ),
    style = "
    font-family: 'Darker Grotesque',Arial;
    font-weight: 300;
    background: black;
    "
  )

## Bio ----
pres_bio <- pres_title %>% 
  slide(title = "Ellis Hughes",
        HTML("<table style = \"width:100%;\">
          			<tr>
          				<td style=\"height:100%;width:40%; font-size:30px;\">
            				<ul style = \"list-style-type: none;\">
                      <li> Statistical Programmer </li>
  					          <li> Seattle UseR Organizer </li>
  					          <li> Cascadia R Conf Committee </li>
  					          <li> &nbsp </li>
  					          <li> &nbsp </li>
  					          <li> <a href=\"https://twitter.com/ellis_hughes\" class=\"fa fa-twitter-square\"></a> @ellis_hughes </li>
            				</ul>
          				</td>
          				<td style=\"height: 500px;width: 30%;padding-top: 100px;\">
            				<div style=\"height:100%\">
            					<img src=\"img/ellis_hughes.jpg\" style=\"margin: auto; height:100%;transform: rotate(-90deg);\"/>
            				</div>
          				</td>
          			</table>"),
        style = "width:1000px;")

## Background ----



save_sidescroller(pres_bio,
                  here("Approaches_to_Assay_Processing_Package_Validation.html"))
