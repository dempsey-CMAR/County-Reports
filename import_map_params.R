

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
  
  
  list(dummy_points = dummy_points, zoomin = zoomin)
  
  
}



