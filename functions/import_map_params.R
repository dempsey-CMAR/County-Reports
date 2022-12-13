

import_map_params <- function(county, crs = 4326){
  
  if(county == "Annapolis"){
    
    # county bounding box:
    # dummy_points <- data.frame(Long = c(-65.759, -64.771), Lat = c(44.311, 45.067)) %>%
    #   st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    dummy_points <- data.frame(Long = c(-66, -65.4), Lat = c(44.5, 44.8)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
    
  } 
  
  if(county == "Antigonish"){
    
    # county bounding box:
    dummy_points <- data.frame(Long = c(-62.235, -61.4362), Lat = c(45.383, 45.888)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    # dummy_points <- data.frame(Long = c(-61.950, -61.8), Lat = c(45.645, 45.687)) %>%
    #   st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- 0
    
  } 
  
  
  if(county == "Cape Breton"){

    dummy_points <- data.frame(Long = c(-60.6,  -59.8), Lat = c(45.95, 46.35)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- 0
    
  } 
  
  if(county == "Colchester"){
    
    # dummy_points <- data.frame(Long = c(-63.6, -62.8), Lat = c(45.3, 45.9)) %>%
    #   st_as_sf(coords = c("Long", "Lat"), crs = crs)
    dummy_points <- data.frame(Long = c(-63.45, -63), Lat = c(45.7, 45.9)) %>%
       st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
    
  } 
  
  if(county == "Digby"){
    
    dummy_points <- data.frame(Long = c(-66.395, -65.332), Lat = c(44.002, 44.692)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
    
  } 
  
  if(county == "Guysborough"){
    
    dummy_points <- data.frame(Long = c(-62.7, -60), Lat = c(44.9, 45.65)) %>%
       st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
    
  } 
  
  if(county == "Halifax"){
    
    dummy_points <- data.frame(Long = c(-64.24, -61.9), Lat = c(44.4, 45.2)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
    
  } 
  
  if(county == "Inverness"){
    
    dummy_points <- data.frame(Long = c(-61.60, -60.56), Lat = c(45.60, 46.2)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 

  
  if(county == "Lunenburg"){
    
    dummy_points <- data.frame(Long = c(-64.5, -63.99), Lat = c(44.13, 44.89)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 
  
  if(county == "Pictou"){
    
    dummy_points <- data.frame(Long = c(-63.15, -62.09), Lat = c(45.28, 45.83)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 
  
  if(county == "Queens"){
    
    dummy_points <- data.frame(Long = c(-65.40, -64.52), Lat = c(43.79, 44.3)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- 0
  } 
  
  if(county == "Richmond"){
    
    dummy_points <- data.frame(Long = c(-61.37, -60.4), Lat = c(45.47, 45.7)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 
  
  if(county == "Shelburne"){
    
    dummy_points <- data.frame(Long = c(-65.80, -64.92), Lat = c(43.38, 44.23)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- 0
  } 
  
  if(county == "Victoria"){
    
    dummy_points <- data.frame(Long = c(-61, -60), Lat = c(45.7, 47)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 
  
  
  
  if(county == "Yarmouth"){
    
    dummy_points <- data.frame(Long = c(-66.17, -65.39), Lat = c(43.38, 44)) %>%
      st_as_sf(coords = c("Long", "Lat"), crs = crs)
    
    zoomin <- -1
  } 
  
  
  list(dummy_points = dummy_points, zoomin = zoomin)
  
  
}



