setwd("~/GitHub/barnacle_simulation/Poster Files")
map_monthly_temp_surf <- read.csv("~/GitHub/barnacle_simulation/Poster Files/map_monthly_temp_surf.csv", comment.char="#")
View(map_monthly_temp_surf)

plot(map_monthly_temp_surf$x,map_monthly_temp_surf$y,
     xlim=c(1180000,1220000),
     ylim=c(180000,220000))

map_monthly_sal_surf <- read.csv("~/GitHub/barnacle_simulation/Poster Files/map_monthly_sal_surf.csv", comment.char="#")
View(map_monthly_sal_surf)

plot(map_monthly_sal_surf$x,map_monthly_sal_surf$y,
     xlim=c(1180000,1220000),
     ylim=c(180000,220000))

install.packages("ggplot2")
