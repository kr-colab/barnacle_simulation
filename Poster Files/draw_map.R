# Make a map using RNaturalData
setwd("<path to working data>")
library(ggplot2)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)

# Load overall map data
map_dat <- ne_countries(scale = "medium", returnclass = "sf")
# map_dat <- ne_coastline(scale='large', returnclass='sf')

# Set coordinate limits
lat_lims    <- c(40,50) # Y axis
lon_lims    <- c(-130,-120) # X axis

# Plot
map_fig <- ggplot(data = map_dat) +
  # Draw Map
  geom_sf(fill='white', color='white') +
  # Set the lat long limits
  coord_sf(xlim = lon_lims, ylim = lat_lims, expand = T) +
  # Set titles
  labs(x='Longitude', y='Latitude') +
  # Add the scale annotation
  # annotation_scale(location = "br", width_hint = 0.2) +
  # Set the general theme
  theme_void() + theme(legend.position = "none", 
                       panel.background = element_rect(fill='black'))

map_fig
ggsave('./barnacles_v1.png', device='png', plot=map_fig)


