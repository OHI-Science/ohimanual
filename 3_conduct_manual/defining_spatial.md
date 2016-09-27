# Defining spatial boundaries

OHI scores are calculated for each _assessment region_, and the region boundaries will be used to aggregate or disaggregate input information reported at different spatial scales. There is no limit to the number of regions in  your assessment. However, the number of regions is usually constrained by two things: data availability for those regions, and the utility of having scores calculated for those regions. Ideally, boundaries are drawn per management jurisdiction, and are informed by the scale at which information is available.

The **Starter Repository** will help you organize preliminary data and make sure data availability matches your desired region assignments. Once you've defined your regions and drawn spatial boundaries, the OHI team can create a **Full Repository** for your assessment.  

## Balancing geopolitical boundaries and data limitation

The spatial boundaries of OHI regions are typically set based on:

- _Management boundaries_: geopolitical boundaries, where policy decisions are made (countries, provinces, etc)
- _Biogeographic boundaries_: based on natural geography (bay, seas, gulf, etc)
- _Data_: information availability (spatial scale where are data collected)

OHI utilizes data from dozens to >100 data layers collected by many agencies. Some data are collected within boundaries suitable for your desired geopolitical boundaries. Often they are not. For example, you may wish to assess ocean health for each of the ten states along the coast. However, some measurements are taken on the national level and it is difficult to disaggregate data to the state level, or some measurements might only make sense at the watershed level across a few states.

Data disaggregation and gap-filling are possible methods of dealing with missing data, but can dilute the information quality within your assessment. If many data layers don't fit your desired boundaries, you may consider changing your boundaries. Exploring the data sources in the **Starter Repo** can help you balance jurisdictional boundaries and information availability, and finalize spatial boundaries that make the most sense for the purpose of your assessment.

> Note that the OHI does not take a stance on disputed territories. The boundaries are defined by the original map data providers.

## Drawing spatial boundaries

**Regions must be unique (non-overlapping), and boundaries must be drawn offshore**. Offshore boundaries should be made with spatial methods in order to extend boundaries from those designated on land.  

Spatial boundaries must be drawn with geographic information system (GIS) mapping software such as ArcGIS, QGIS, or GRASS. You will need someone with GIS skills to create a shapefile that will be used by the Toolbox to display your information. The shapefile will also be used to extract information for each of your defined regions when data are reported in raster format for a different area. For more information see Wikipedia for [Geographic information systems](https://en.wikipedia.org/wiki/Geographic_information_system) and [Shapefiles](http://en.wikipedia.org/wiki/Shapefile).

Illustrated below are the conceptual steps required for creating a spatial file with your offshore boundaries. You will ultimately decide where to draw the offshore boundaries. The example below shows a simple example of extending the land boundaries in a straight line; you should consult with a GIS specialist to make sure any extensions make sense with the coastline and natural features, and also make sure they does not conflict with important [jurisdictional boundaries](http://ohi-science.org/manual/#strategically-define-spatial-boundaries-balance-information-availability-and-decision-making-scales).

![](https://docs.google.com/drawings/d/17G4bcyoFg8kaEGys_6aA7dQEPVteHPQBk9YQl4iA6Dw/pub?w=960&h=720)

> Data for different goals often cover different spatial extents offshore. For example, Fisheries might use data from the entire EEZ, while Carbon Storage might only cover 3nm from shore. When mapped, OHI scores do not show different spatial extents, but instead show all to the greatest spatial extent. Exclusive Economic Zone (EEZ) boundaries are most often the greatest extent offshore that OHI scores will represent. These regional spatial boundaries do not affect data preparation and analyses, where you could use any spatial extent appropriate for each goal.  

**One possible method is to create boundaries with Thiessen Polygons**, and we provide a Python script that can be used, but it requires ArcGIS. The Python script and further details can be found [here](http://ohi-science.org/pages/create_regions.html).

<!-- It can also be done in [R](http://gis.stackexchange.com/questions/136542/r-function-for-thiessen-polygons).  -->


## Request a Full Repository with offshore boundaries

**In order to create a Full Repository for your assessment, we will need the shapefile for your offshore boundaries** (and the name of your scenario, which is to the unit of your assessment and the year, for example, `province2016`). This will help us disaggregate global data to your local regions and populate usable data layers. Please send a .zip file of all files produced to _info@ohi-science.org_. Files with the following extensions are required (but you can send all files):

- `.dbf`
- `.shp`
- `.shx`
- `.prj`

The `.dbf` file needs the following in its attribute table:

- **rgn_id** (unique numeric region identifier)
- **rgn_name** (unique named region identifier)
- **area_km2** or **area_hectare** (area in km2 or hectares)

<!---From Mel: I just looked at what R produces for shapefiles, and it is: .dbf, .prj, .shp, .shx
shp = boundaries
dbf = database (attribute table)
prj = projection information
not sure what shx is....
So I am guessing that is all that is really needed.--->

<!-- Using Thiessen Polygons, offshore boundaries are created with the following steps.

1. Start with land-based boundaries
2. Draw offshore buffers for each region  
3. But the buffers overlap
4. For the Thiessen Polygon approach, the overlap is divided
5. To produce the borders between the regions

![image](https://docs.google.com/drawings/d/17qXZ8Ah6WPYhP1_RQOsIA5gHBNlP8mGAFcDIxkizM58/pub?w=960&h=720) -->

<!-- ## Buffers

When drawing your regions, it is also a good idea to create _inland and offshore_ buffers that will be used to extract data in your assessment. Buffers are not necessary for display in the WebApp but they will be important for later layer preparation. For example, the global assessment used coastal population information, and raster data were available for entire countries. This meant that 'coastal' had to be defined: for global assessments it was defined as 25 miles from the coast. To extract just the coastal population from the population raster file, we created a 25 mile inland buffer for each reporting region. But to extract mangrove data for each region from raster files, global assessments used 1km inland and 1km offshore as the buffer.  

At this point, you may not know which buffers you will need, as they depend on the data available, your goal models and definitions. Some buffers used in the global assessments were 1km inland, 25miles inland, 1km offshore, 3nm offshore.-->
