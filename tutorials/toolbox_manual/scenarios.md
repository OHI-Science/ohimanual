# The Ocean Health Index Toolbox Manual



## Scenarios: conducting regional analyses
After the user is familiar with the Toolbox App functioning and set-up, it is possible to begin modifying, adding or deleting files to explore alternate versions of the global analysis or to tailor the Index for a assessments at a regional scale. In this latter case, it will also be necessary to define regions and regions. This can be done using the commercial software ArcGIS.

### Creating a scenario
To create a new scenario, start by copying the folder scenario.Global2013.www2013 and renaming it in the same parent folder myohi.

The folder must start with the word ‘scenario’ followed by the region and year, separated by periods. This naming convention is important because the App looks for something called scenario.regionyear.

### Regions
Defining regions is an important step both for data discovery and acquisition (see HowTo_GatherAppropriateData from ohi-science.org) and also for working with data within the Toolbox.  

### When study area and region are the same
When the regional assessment study area is the same as the reporting region from the Global 2013 assessment, and there are no smaller regions within the study area, it is possible to work with the data as it is presented in the default Toolbox scenario scenario.Global2013.www2013. This would mean recalculating the Index for all of the Global 2013 regions but just focusing on the study area of interest. This approach will be improved shortly as the Toolbox App has further built-in capabilities with regions.

### When there are regions within the study area 
Defining reporting regions for spatial data will require spatial analysis software. Currently, the website ohi-science.org provides scripts to run within ArcGIS, which is commercial software requiring a paid license. In the future, approaches using free GIS software will be posted as well. Further information and scripts in Python that may be pasted into the ArcGIS command line is available at 
ohi-science.org/pages/create_regions.html. This approach will also be improved shortly. Future capabilities of the Toolbox include providing state/province-level spatial regions for every reporting region in the Global 2013 assessment. 

## Tips
  * The Toolbox works with files in comma separated value files (.csv). On most computers, these files will open by default with Microsoft Excel (if Excel is installed). R and the Toolbox will not be able to access files if they are simultaneously open in Excel and will indicate this with an error message. To prevent errors, it may be best to preview files in a text editor or in Open Office (www.openoffice.org/)
  * RStudio (www.rstudio.com/) is a free integrated development environment that runs R and allows for increased display functionality. However, this is not required: R is stand-alone software that works independently.
  * data(package = ‘ohicore’)  # displays all data in a package
  * Here are several technical R packages (plug-ins) used by the Toolbox App with which the advanced user may want to become familiar (can be identitified as packages required by ohicore (library(ohicore)):
  * plyr
    + http://plyr.had.co.nz/
  * reshape2
    + http://had.co.nz/reshape/
  * RJSONIO
    + http://cran.r-project.org/web/packages/RJSONIO/index.html