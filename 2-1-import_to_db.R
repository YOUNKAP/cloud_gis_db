library(sf)
library(RPostgreSQL) 

# Connect
con = dbConnect(
  PostgreSQL(), 
  dbname = "chad_db", 
  host = "localhost", 
  port = 5432, 
  user = "younkap", 
  password = "younkap"
)

# Import table to database
dat = st_read("zones_controle_v20.geojson")
st_geometry(dat) = "geom"  ## According to PostGIS convention
st_write(obj = dat, dsn = con, layer = "ctr", delete_layer = TRUE)

# Disconnect
dbDisconnect(con)

# Quit R
q()