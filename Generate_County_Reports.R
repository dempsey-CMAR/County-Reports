# DATE:
# NAME:
# NOTES:

# This script generates county reports for all counties specified in the <<county>> variable

# SECTION 1: Specify counties for which to generate report

# SECTION 2: Specify the document history for each county

# SECTION 3: Generate report(s)



# SECTION 1: Specify counties ---------------------------------------------

report <- "C:/Users/Danielle Dempsey/Desktop/RProjects/test_report/County_Report.Rmd"

county <- c("Halifax", "Lunenburg", "Guysborough", "Yarmouth")


# SECTION 2: Document History ---------------------------------------------

## Halifax
hist.Halifax <- data.frame(
  `Version Number` = c(2, 1),
  Date = c("2020-Nov-25", "2020-Oct-14"),
  Amendments = c("Test", "New document")
) 

## Lunenburg
hist.Lunenburg <- data.frame(
  `Version Number` = c(2, 1),
  Date = c("2020-Nov-25", "2020-Oct-14"),
  Amendments = c("Test", "New document")
) 

## Guysborough
hist.Guysborough <- data.frame(
  `Version Number` = c(2, 1),
  Date = c("2020-Nov-25", "2020-Oct-14"),
  Amendments = c("Test", "New document")
) 

## Yarmouth
hist.Yarmouth <- data.frame(
  `Version Number` = c(2, 1),
  Date = c("2020-Nov-25", "2020-Nov-03"),
  Amendments = c("Test", "New document")
) 


# Document histor for each county
DOC.HIST <- list(
  Halifax = hist.Halifax,
  Lunenburg = hist.Lunenburg,
  Guysborugh = hist.Guysborough,
  Yarmouth = hist.Yarmouth
)




# SECTION 3: GENERATE REPORTS --------------------------------------------------------

sapply(county, function(x) {
  rmarkdown::render(input = report, 
                    output_file = sprintf("County_Report_%s.docx", x),
                    params = list(county = x,
                                  doc.hist = DOC.HIST[[x]]))
})


