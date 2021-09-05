install.packages('leaflet')
install.packages('mapview')

library(leaflet)
library(mapview)

# leaflet(options = leafletOptions(minZoom = 3, maxZoom = 18))

options(browser = "firefox")

m <-
leaflet(options = leafletOptions(minZoom = 2, maxZoom = 18, WorldCopyJump=TRUE)) %>% 
# addTiles(urlTemplate = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png") %>%
# addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
# addProviderTiles(providers$Esri.WorldImagery) %>%
# addProviderTiles(providers$CartoDB.Positron) %>%
# addProviderTiles(providers$Esri.WorldGrayCanvas) %>%
addProviderTiles(providers$Esri.WorldTopoMap) %>%
setView(20, -1, zoom = 2.5) %>%
addMarkers(lat=-0.408, lng=-76.968, label="Ecuador", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=174.841, lat=-41.134, label="New Zealand", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lat=-33.841, lng=151.214, label="Australia", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=-152.274, lat=65.276, label="Alaska", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=7.585, lat=47.561, label="Basel", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=10.210, lat=51.103, label="Germany", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=-103.335, lat=39.835, label="USA", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=12.553, lat=43.028, label="Italy", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=36.818, lat=-1.277, label="Kenya", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=-105.622, lat=60.086, label="Canada", labelOptions = labelOptions(noHide = F)) %>%
addMarkers(lng=23.721, lat=37.999, label="Greece", labelOptions = labelOptions(noHide = F))
# addMarkers() %>%
# addMouseCoordinates(style = "basic")

clearBounds(m)

setMaxBounds(m, -152.274, 65.276, 174.841, -41.134)

# Nasa: NASAGIBS.ViirsEarthAtNight2012
# Google map: Esri.WorldImagery
# Gray: Esri.WorldGrayCanvas
# Terrain: Esri.WorldTerrain
# Topo Map: Esri.WorldTopoMap



Greece  37.99913913410868, 23.72144762736455

Ecuador -0.40842022013770235, -76.96812596580249

Kenya -1.2778085376348882, 36.818212237993414


NZ  -41.13484106555699, 174.8412684252871

USA  39.83549133906906, -103.33569390761696

Italy 43.02892270112339, 12.553075914725712

Basel  47.561, 7.585 (lat lng)

Germany 51.103780779435006, 10.210610838150929