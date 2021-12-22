# This script generates county reports for all counties specified in the <<county>> variable

# SECTION 1: Specify counties for which to generate report

# SECTION 2: Specify the document history for each county

# SECTION 3: Generate report(s)

library(dplyr)
library(here)
library(readxl)

source(here("functions/import_doc_historyv2.R"))


# SECTION 1: Specify counties ---------------------------------------------

doc_history <- here("document_history.xlsx")
report <- here("County_Report.Rmd")

# county <-  c("Annapolis", "Colchester", "Digby", "Guysborough",
#              "Halifax", "Inverness", "Lunenburg", "Pictou", "Queens",
#              "Richmond", "Shelburne", "Yarmouth")

county <- "Pictou"


DOC.HIST <- import_doc_history(doc_history, county)

library(readxl)

# SECTION 3: GENERATE REPORTS --------------------------------------------------------

sapply(county, function(x) { 
  
  rmarkdown::render(
    input = report, 
    output_file = paste0("County_Report_", x, ".docx"),
    params = list(county = x, doc.hist = DOC.HIST[[x]]))
  
})




