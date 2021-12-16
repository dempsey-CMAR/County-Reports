

import_doc_history <- function(county){
  
  amend_2022 <- "New data release. Additional QAQC of previous release. Revised text in Section 1 for clarity."
  
  
  if("Annapolis" %in% county){
    
    hist.Annapolis <- tibble(
      `Version Number` = c(
        "V1", 
        "V2"
      ),
      Date = c(
        "2021-01-06", 
        "2022-01-06"
      ),
      Amendments = c(
        "New document", 
        amend_2022
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
      `Version Number` = c(
        "V1", 
        "V2"
      ),
      Date = c(
        "2021-01-26", 
        "2021-01-06"
      ),
      Amendments = c(
        "New document", 
        amend_2022
      )
    )
  } else hist.Digby  <- NULL
  
  
  if("Guysborough" %in% county){
    
    hist.Guysborough <- tibble(
      `Version Number` = c(
        "V1", 
        "V2", 
        "V3"
      ),
      Date = c(
        "2021-10-14", 
        "2021-01-26", 
        "2022-01-06"
      ),
      Amendments = c(
        "New document", 
        "New data release & additional QAQC of previous release",
        amend_2022
      )
    )
  } else hist.Guysborough  <- NULL
  
  
  
 if("Halifax" %in% county){
   
   hist.Halifax <- tibble(
     `Version Number` = c(
       "V1", 
       "V2", 
       "V3",
       "V4"
     ),
     Date = c(
       "2020-10-14",
       "2021-01-26",
       "2021-03-04",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       "New data release & additional QAQC of previous release",
       "Update coordinates for Shut-In Island 2018-04-25 deployment",
       amend_2022
       
     ),
   )
 } else hist.Halifax <- NULL
 

 if(county == "Lunenburg"){
   
   hist.Lunenburg <- tibble(
     `Version Number` = c(
       "V1", 
       "V2",
       "V3"
     ),
     Date = c(
       "2020-10-14",
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document", 
       "New data release",
       amend_2022
     )
   )
 } else hist.Lunenburg <- NULL

 
 if(county == "Inverness"){
   hist.Inverness <- data.frame(
     `Version Number` = c(
       "V1",
       "V2"
     ),
     Date = c(
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       "Revised text in Section 1 for clarity. Estimated quantitative depths for Pulp Mill deployment."
       )
   )
 } else hist.Inverness <- NULL
 
 if(county == "Pictou"){
   hist.Pictou <- tibble(
     `Version Number` = c(
       "V1",
       "V2"
     ),
     Date = c(
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       amend_2022
     )
   )
 } else hist.Pictou <- NULL
 
 if(county == "Queens"){
   hist.Queens <- tibble(
     `Version Number` = c(
       "V1"
     ),
     Date = c(
       "2022-01-06"
     ),
     Amendments = c(
       "New document"
     )
   )
 } else hist.Queens <- NULL
 
 if(county == "Richmond"){
   hist.Richmond <- tibble(
     `Version Number` = c(
       "V1",
       "V2"
     ),
     Date = c(
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       "Revised text in Section 1 for clarity. Estimated quantitative depths for 0667 deployment."
     )
   )
 } else hist.Richmond <- NULL
  
 
 if(county == "Shelburne"){
   hist.Shelburne <- tibble(
     `Version Number` = c(
       "V1",
       "V2"
     ),
     Date = c(
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       "Revised text in Section 1 for clarity. Corrected waterbody for Taylors Rock."
     )
   )
 } else hist.Shelburne <- NULL
 
 
 if(county == "Yarmouth"){
   hist.Yarmouth <- data.frame(
     `Version Number` = c(
       "V1",
       "V2"
     ),
     Date = c(
       "2021-01-26",
       "2022-01-06"
     ),
     Amendments = c(
       "New document",
       amend_2022
     )
   )
 } else hist.Yarmouth <- NULL
 
  # Document history for each county
  list(
    Annapolis = hist.Annapolis,
    Antigonish = hist.Antigonish,
    Colchester = hist.Colchester,
    Digby = hist.Digby,
    Guysborough = hist.Guysborough,
    Halifax = hist.Halifax,
    Inverness = hist.Inverness,
    Lunenburg = hist.Lunenburg,
    Pictou = hist.Pictou,
    Queens = hist.Queens,
    Richmond = hist.Richmond,
    Shelburne = hist.Shelburne,
    Yarmouth = hist.Yarmouth
  )
  
  
}



