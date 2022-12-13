# December 22, 2021

# hist_file: path to the document history file, include file name and extension
# county: vector of character strings indicating which counties to extract the document history table

import_doc_history <- function(hist_file, county){
  
  if("Annapolis" %in% county){
    
    hist.Annapolis <- read_excel(hist_file, sheet = "Annapolis")
    
  } else hist.Annapolis  <- NULL
  
  
  if("Antigonish" %in% county){
    
    hist.Antigonish <- read_excel(hist_file, sheet = "Antigonish")
    
  } else hist.Antigonish  <- NULL
  
  if("Cape Breton" %in% county){
    
    hist.CapeBreton <- read_excel(hist_file, sheet = "Cape Breton")
    
  } else hist.CapeBreton  <- NULL
  
  if("Colchester" %in% county){
    
    hist.Colchester <-  read_excel(hist_file, sheet = "Colchester")
    
  } else hist.Colchester  <- NULL
  
  
  if("Digby" %in% county){
    
    hist.Digby <-  read_excel(hist_file, sheet = "Digby")
    
  } else hist.Digby  <- NULL
  
  
  if("Guysborough" %in% county){
    
    hist.Guysborough <-  read_excel(hist_file, sheet = "Guysborough")
    
  } else hist.Guysborough  <- NULL
  
  
  if("Halifax" %in% county){
    
    hist.Halifax <-  read_excel(hist_file, sheet = "Halifax")
    
  } else hist.Halifax <- NULL
  
  
  if("Lunenburg" %in% county){
    
    hist.Lunenburg <- read_excel(hist_file, sheet = "Lunenburg")
    
  } else hist.Lunenburg <- NULL
  
  
  if("Inverness" %in% county){
    
    hist.Inverness <-  read_excel(hist_file, sheet = "Inverness")
    
  } else hist.Inverness <- NULL
  
  
  if("Pictou" %in% county){
    
    hist.Pictou <-  read_excel(hist_file, sheet = "Pictou")
    
  } else hist.Pictou <- NULL
  
  
  if("Queens" %in% county){
    
    hist.Queens <-  read_excel(hist_file, sheet = "Queens")
    
  } else hist.Queens <- NULL
  
  
  if("Richmond" %in% county){
    
    hist.Richmond <-  read_excel(hist_file, sheet = "Richmond")
    
  } else hist.Richmond <- NULL
  
  
  if("Shelburne" %in% county){
    
    hist.Shelburne <-  read_excel(hist_file, sheet = "Shelburne")
    
  } else hist.Shelburne <- NULL
  
  
  if("Victoria" %in% county){
    
    hist.Victoria <-  read_excel(hist_file, sheet = "Victoria")
    
  } else hist.Victoria <- NULL
  
  
  if("Yarmouth" %in% county){
    
    hist.Yarmouth <-  read_excel(hist_file, sheet = "Yarmouth")
    
  } else hist.Yarmouth <- NULL
  
  # Document history for each county
  list(
    Annapolis = hist.Annapolis,
    Antigonish = hist.Antigonish,
    `Cape Breton` = hist.CapeBreton,
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
    Victoria = hist.Victoria,
    Yarmouth = hist.Yarmouth
  )
  
  
}



