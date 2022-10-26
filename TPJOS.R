setwd("D:") #set directory
time <- as.POSIXlt(Sys.time(), "UTC")
ncin <-- nc_open()
ncin <-- nc_open("totalprecipitation.nc")
ncin <- nc_open ("totalprecipitation.nc")
lat <- ncvar_get("lat")
lat <- ncvar_get(ncin, "lat")
lat <- ncvar_get(ncin, "latitude")
lon <- ncvar_get(ncin, "lon")
lon <- ncvar_get(ncin, "longitude")
tori <- ncvar_get(ncin, "time")
tunits <- ncatt_get(ncin, "time", "units")
tunits <- ncatt_get(ncin, "ttime", "units")
latlim <- which.min(abs(lat--5.2))
lonlim <- which.min(abs(lon-105.5))
tp.array <- ncvar_get(ncin,"tp")
tp.slice <- tp.array[6,3,]
t1 <- ncdf4.helpers::nc.get.time.series(ncin,time.dim.name = "time")
write.csv(tp.slice, file = "*.csv") #export file

