
library(lubridate)

# This script generates county reports for all counties specified in the <<county>> variable

# SECTION 1: Specify counties for which to generate report

# SECTION 2: Specify the document history for each county

# SECTION 3: Generate report(s)


# SECTION 1: Specify counties ---------------------------------------------

report <- "Y:/Coastal Monitoring Program/Open Data/County Reports/County_Report.Rmd"

# county <-  c("Annapolis", "Digby", "Guysborough",
#              "Halifax", "Inverness", "Lunenburg",
#              "Pictou", "Richmond", "Shelburne",
#              "Yarmouth")

county <-  c("Halifax", "Richmond", "Shelburne")

# SECTION 2: Document History ---------------------------------------------

d1 <- as_date("2020-Oct-14")

doc_date <- Sys.Date()
doc_amendment <- "New data release"

## Halifax
hist.Halifax <- data.frame(
  `Version Number` = c("V1", "V2"),
  Date = c(d1, doc_date),
  Amendments = c("New document", "New data release & additional QAQC of previous release"),
  check.names = FALSE
) 

## Lunenburg
hist.Lunenburg <- data.frame(
  `Version Number` = c("V1", "V2"),
  Date = c(d1, doc_date),
  Amendments = c("New document", doc_amendment),
  check.names = FALSE
) 

## Guysborough
hist.Guysborough <- data.frame(
  `Version Number` = c("V1", "V2"),
  Date = c(d1, doc_date),
  Amendments = c("New document", "New data release & additional QAQC of previous release"),
  check.names = FALSE
) 


## Annapolis
hist.Annapolis <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Digby
hist.Digby <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Inverness
hist.Inverness <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Pictou
hist.Pictou <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Richmond
hist.Richmond <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Shelburne
hist.Shelburne <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 

## Yarmouth
hist.Yarmouth <- data.frame(
  `Version Number` = c("V1"),
  Date = c(doc_date),
  Amendments = c("New document"),
  check.names = FALSE
) 


# Document history for each county
DOC.HIST <- list(
  Annapolis = hist.Annapolis,
  Digby = hist.Digby,
  Guysborough = hist.Guysborough,
  Halifax = hist.Halifax,
  Inverness = hist.Inverness,
  Lunenburg = hist.Lunenburg,
  Pictou = hist.Pictou,
  Richmond = hist.Richmond,
  Shelburne = hist.Shelburne,
  Yarmouth = hist.Yarmouth
)


# SECTION 3: GENERATE REPORTS --------------------------------------------------------

sapply(county, function(x) {
  rmarkdown::render(input = report, 
                    output_file = sprintf("County_Report_%s.docx", x),
                    params = list(county = x,
                                  doc.hist = DOC.HIST[[x]]))
})


