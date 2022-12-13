# This script generates county reports for all counties specified in << county >> 

# SECTION 1: Read in document history and report files

# SECTION 2: Specify county(ies) for which to generate reports

# SECTION 2: Generate report(s)

# SECTION 1: SET UP ---------------------------------------------

library(dplyr)
library(here)
library(readxl)

doc_history <- read_excel(
  "Y:/coastal_monitoring_program/tracking_sheets/water_quality_report_tracker.xlsx",
  sheet = "Tracking"
)

report <- here("County_Report.Rmd")


# SECTION 1: SET UP ---------------------------------------------

county <-  c("Inverness")


# SECTION 2: GENERATE REPORTS --------------------------------------------------------

sapply(county, function(x) { 
  
  rmarkdown::render(
    input = report, 
    output_file = paste0("County_Report_", x, ".docx"),
    params = list(county = x, doc.hist = filter(doc_history, County == x)))
  
})




