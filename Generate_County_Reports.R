
# This script generates county reports for all counties specified in the <<county>> variable

# SECTION 1: Specify counties for which to generate report

# SECTION 2: Specify the document history for each county

# SECTION 3: Generate report(s)


# SECTION 1: Specify counties ---------------------------------------------

report <- "Y:/Coastal Monitoring Program/Open Data/County Reports/County_Report.Rmd"

county <- c("Halifax", "Yarmouth")


# SECTION 2: Document History ---------------------------------------------

## Halifax
hist.Halifax <- data.frame(
  `Version Number` = c(1, 2),
  Date = c("2020-Oct-14", "2020-Nov-27"),
  Amendments = c("New document", "SOP Example")
) 

## Lunenburg
hist.Lunenburg <- data.frame(
  `Version Number` = c(1),
  Date = c("2020-Oct-14"),
  Amendments = c("New document")
) 

## Guysborough
hist.Guysborough <- data.frame(
  `Version Number` = c(1),
  Date = c("2020-Oct-14"),
  Amendments = c("New document")
) 

## Yarmouth
hist.Yarmouth <- data.frame(
  `Version Number` = c(1),
  Date = c("2020-Nov-27"),
  Amendments = c("New document")
) 


# Document history for each county
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


