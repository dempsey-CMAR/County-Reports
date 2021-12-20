# February 4, 2021

# This script looks at all of the data submitted to Open Data Portal and:
## makes a table with the number of observations for each county (useful as a check to make sure Open Data 
### uploaded all data);
## extracts unique stations and coordinates

# As the data submitted increases this will take a long time to run

library(strings)
library(dplyr)
library(readr)
library(ggplot2)
library(ggspatial)
library(ggsflabel)
library(leaflet)
library(openxlsx)
library(purrr)
library(sf)

# Paths to data for each county ------------------------------------------------------------

# counties submitted to Open Data
counties <- "ALL"
# c("Annapolis", "Digby", "Guysborough",
#             "Halifax", "Inverness", "Lunenburg", 
#             "Pictou", "Richmond", "Shelburne",
#             "Yarmouth")

path_submission <- "Y:/Coastal Monitoring Program/Open Data/Submissions"
path_fig <- "Y:/Coastal Monitoring Program/Open Data/Station Locations"

# Import county data ------------------------------------------------------

DATA <- import_strings_data()

# check if there are any longitudes missing the "-"
check <- DATA %>% 
  filter(LONGITUDE > 0) %>% 
  distinct(STATION, .keep_all = TRUE)     

# count the number of rows for each county (send to Open Data so they can check)
n_obs <- DATA %>% 
  group_by(COUNTY) %>% 
  summarize(n_Observations= n())
  
# distinct stations with lat/long to send to Open Data  
stations <- DATA %>% 
  distinct(STATION, .keep_all = TRUE) %>%                   # find unique Station names
  select(COUNTY, WATERBODY, STATION, LATITUDE, LONGITUDE) %>% 
  arrange(COUNTY, WATERBODY)                                 # sort rows alphabetically by county then waterbody


# Plot to check -----------------------------------------------------------

# # convert to sf object
# stations_plot <- stations %>% 
#   st_as_sf(coords = c("LONGITUDE", "LATITUDE"), remove = FALSE,
#            crs = 4326, agr = "constant")
# 
# ggplot() +
#   annotation_map_tile(type="cartolight", zoomin = 0) +
#   geom_sf(data = stations_plot) +
#   geom_sf_label_repel(data = stations_plot, aes(label = STATION),
#                       label.size = NA,
#                       fill = NA, size = 3,
#                       max.overlaps = getOption("ggrepel.max.overlaps", default = 30)) +
#   annotation_scale(location = "br") +
#   annotation_north_arrow(location = "tl", which_north = "true",
#                          height = unit(1, "cm"),
#                          width = unit(1, "cm")) +
#   theme(text=element_text(size=16),
#         axis.title = element_blank()) 


# leaflet plot ------------------------------------------------------------
leaflet(data = stations) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addCircleMarkers(~LONGITUDE, ~LATITUDE, popup =  ~ STATION,
                   radius = 4, fillOpacity = 1, stroke = FALSE)  

# EXPORT ------------------------------------------------------------------

date.today <- Sys.Date()
write_csv(stations, paste0(path_submission, "/Station_Locations_", date.today, ".csv"))

ggsave(filename = paste0("Station_Locations_", date.today, ".png"),
       path = path_fig,
       device = "png",
       width = 31, height = 18, units = "cm")

write_csv(n_obs,
           file = paste0(path_submission, "/number_rows_", date.today, ".csv"))
