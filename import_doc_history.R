

import_doc_history <- function(county){
  
  if("Annapolis" %in% county){
    
    hist.Annapolis <- tibble(
      `Version Number` = c("V1", "V2"),
      Date = c("2021-01-06", "2022-01-06"),
      Amendments = c(
        "New document", 
        "New data release. Additional QAQC of previous release. Revised text in Section 1 for clarity."
      )
    ) 
  } else hist.Annapolis  <- NULL
  
  
  if("Antigonish" %in% county){

    hist.Antigonish <- tibble(
      `Version Number` = c("V1"),
      Date = c("2022-01-06"),
      Amendments = c(
        "New document"
      )
    ) 
  } else hist.Antigonish  <- NULL
  
  if("Colchester" %in% county){
    
    hist.Colchester <- tibble(
      `Version Number` = c("V1"),
      Date = c("2022-01-06"),
      Amendments = c(
        "New document"
      )
    ) 
  } else hist.Colchester  <- NULL
  
  if("Digby" %in% county){
    
    hist.Digby <- tibble(
      `Version Number` = c("V1", "V2"),
      Date = c("2021-01-26", "2021-01-06"),
      Amendments = c("New document", "New data release. Additional QAQC of previous release. Revised text in Section 1 for clarity.")
    )
  } else hist.Digby  <- NULL
  
  
  # d1 <- as_date("2020-Oct-14")
  # 
  # doc_date <- Sys.Date()
  # doc_amendment <- "New data release"
  # 
  # ## Halifax
  # hist.Halifax <- data.frame(
  #   `Version Number` = c("V1", "V2", "V3"),
  #   Date = c(d1, doc_date, as_date("2021-Mar-04")),
  #   Amendments = c("New document", 
  #                  "New data release & additional QAQC of previous release",
  #                  "Update coordinates for Shut-In Island 2018-04-25 deployment"),
  #   check.names = FALSE
  # ) 
  # 
  # ## Lunenburg
  # hist.Lunenburg <- data.frame(
  #   `Version Number` = c("V1", "V2"),
  #   Date = c(d1, doc_date),
  #   Amendments = c("New document", doc_amendment),
  #   check.names = FALSE
  # ) 
  # 
  # ## Guysborough
  # hist.Guysborough <- data.frame(
  #   `Version Number` = c("V1", "V2"),
  #   Date = c(d1, doc_date),
  #   Amendments = c("New document", "New data release & additional QAQC of previous release"),
  #   check.names = FALSE
  # ) 
  # 
  # 
  # 
  # 

  # 
  # ## Inverness
  # hist.Inverness <- data.frame(
  #   `Version Number` = c("V1"),
  #   Date = c(doc_date),
  #   Amendments = c("New document"),
  #   check.names = FALSE
  # ) 
  # 
  # ## Pictou
  # hist.Pictou <- data.frame(
  #   `Version Number` = c("V1"),
  #   Date = c(doc_date),
  #   Amendments = c("New document"),
  #   check.names = FALSE
  # ) 
  # 
  # ## Richmond
  # hist.Richmond <- data.frame(
  #   `Version Number` = c("V1"),
  #   Date = c(doc_date),
  #   Amendments = c("New document"),
  #   check.names = FALSE
  # ) 
  # 
  # ## Shelburne
  # hist.Shelburne <- data.frame(
  #   `Version Number` = c("V1"),
  #   Date = c(doc_date),
  #   Amendments = c("New document"),
  #   check.names = FALSE
  # ) 
  # 
  # ## Yarmouth
  # hist.Yarmouth <- data.frame(
  #   `Version Number` = c("V1"),
  #   Date = c(doc_date),
  #   Amendments = c("New document"),
  #   check.names = FALSE
  # ) 
  
  
  # Document history for each county
  list(
    Annapolis = hist.Annapolis,
    Antigonish = hist.Antigonish,
    Colchester = hist.Colchester,
    Digby = hist.Digby
    # Guysborough = hist.Guysborough,
    # Halifax = hist.Halifax,
    # Inverness = hist.Inverness,
    # Lunenburg = hist.Lunenburg,
    # Pictou = hist.Pictou,
    # Richmond = hist.Richmond,
    # Shelburne = hist.Shelburne,
    # Yarmouth = hist.Yarmouth
  )
  
  
}



