## Formatting Data for the Toolbox

>The OHI Toolbox expects each data layer to be
- in its own *.csv* file,
- with data available for every region within the study area,
- with data organized in 'long' format (as few columns as possible), and
- with a unique region identifier (*rgn_id*) associated with a single score or value.

As you discover and gather potential data sources, they can be prepared and explored in the Starter Repo. Data preparation is done in **R** using input data stored in **_.csv files_** (or 'comma-separated value'). These files can be opened as a spreadsheet using Microsoft Excel or similar programs. Each data layer (data input) has its own *.csv* file, which is combined with others within the Toolbox for the model calculations. These data layers are used for calculating goal scores, meaning that they are inputs for status, trend, pressures, and resilience. The global analysis included over 100 data layer files, and there will probably be as many in your own assessments. This section describes and provides examples of how to format the data layers for the Toolbox.

> It is highly recommended that layer preparation occurs in your repository's `prep` folder as much as possible, as it will also be archived by GitHub for future reference. The folder is divided into sub-folders for each goal and sub-goal, where you will upload the raw data and manipulate the data in `data_prep.R` scripts.

**OHI goal scores are calculated at the scale of the reporting unit**, which is called a ‘**region**’ and then combined using an area-weighted average to produce the score for the overall area assessed, called a ‘**study area**’. In order to calculate trend, input data should be available as a time series for at least 5 recent years (and the longer the time series the better, as this can be used in setting temporal reference points).

>Finalized data layers have at least two columns: the `rgn_id` column and a column with data that is best identified by its units (eg. _km2_ or _score_). There often may be a `year` column or a `category` column (for natural product categories or habitat types).

The example below shows information for a study area with 4 regions. There are two different (and separate) data layer files: tourism count (`tr_total.csv`) and natural products harvested, in metric tonnes (`np_harvest_tonnes.csv`). Each file has data for four regions (1-4) in different years, and the second has an additional 'categories' column for the different types of natural products that were harvested. In this example, the two data layers are appropriate for status calculations with the Toolbox because:

1. At least five years of data are available,
2. There are no data gaps
3. Data are presented in 'long' or 'narrow' format (not 'wide' format -- see "**Long Formatting**"" section).

### Uploading and formatting raw data files

Unformatted data files can be uploaded to the `pre-proc` folder in your github repository and processed with R. Saving raw data in the same repository helps to keep track of how the data has been treated.

Raw files can be uploaded as `.csv` or `.xlsx`. However, formatted data has to be saved as `.csv` in the `layers` folder.  

In addition to `pre-proc`, a `prep` folder has been set up for data formatting. Inside the folder:

- several sub-folders exist to house formatted data files for each goal/sub-goal
- `prep.r` is where formatting occurs for each goal/sub-goal.
- `README` is where you can record information on raw data files and processing for future reference

**Example of data in the appropriate format:**

![](./fig/formatting_data_example.png)

### Gapfilling

It is important that data prepared for the Toolbox have no missing values or 'gaps'. Data gaps can occur in two main ways: 1) **temporal gaps**: when several years in a time series in a single region have missing data, and 2) **spatial gaps**: when all years for a region have missing data (and therefore the whole region is 'missing' for that data layer).

How these gaps are filled will depend on the data and regions themselves, and requires thoughtful, logical  decisions to most reasonably fill gaps. Each data layer can be gapfilled using different approaches. Some data layers will require both temporal and spatial gapfilling. The examples below highlight some example of temporal and spatial gapfilling.  

All decisions of gapfilling should be documented to ensure transparency and reproducibility. The examples below are in Excel, but programming these changes in software like R is preferred because it promotes easy transparency and reproducibility.

#### Temporal gapfilling

Temporal gaps occur when a region is missing data for some years. The Toolbox requires data for each year for every region. It is important to make an informed decision about how to temporally gapfill data.

![](./fig/temporal_gaps.png)

Often, regression models are the best way to estimate data and fill temporal gaps. Here we give an example that assumes a linear relationship between the year and value variables within a region. If data do not fit a linear framework, other models may be fit to help with gapfilling. Here we give an example assuming linearity.

Using a linear model can be done in most programming languages using specific functions, but here we show this step-by-step using functions in Excel for Region 1.

**Temporal gapfilling example (assumes linearity: able to be represented by a straight line on a graph)):**

There are four steps to temporally gapfill with a linear model, illustrated in the figures with four columns.

**1. Calculate the slope for each region**

The first step is to calculate the slope of the line that is fitted through the available data points. This can be done in Excel using the **SLOPE(known_y's,known_x's)** function as highlighted in the figure below. In this case, the x-axis is *years* (2005, 2006, etc...), the y-axis is *count*, and the Excel function automatically plots and fits a line through the known values (177.14 in 2005, 212.99 in 2008, and 228.81 in 2009), and subsequently calculates the slope (12.69).

![](./fig/filling_temporal_gaps_slope.png)

**2. Calculate the y-intercept for each region**

The next step is to calculate the intercept of the line that is fitted through the available data points. This can be done in Excel similarly as for the slope calculation, using the the **INTERCEPT(known_y's,known_x's)** function that calculates the y-intercept (-25273.89) of the fitted line.

![](./fig/filling_temporal_gaps_intercept.png)

**3. Calculate y for all years**

The slope and y-intercept that were calculated in steps 1 and 2 can then be used along with the year (independent variable) to calculate the unknown 'y-values'. To do so, simply replace the known three values into the **y = mx + b** equation (m=slope, x=year, b=intercept), to calculate the unknown 'count' for a given year (189.39 in 2006, and 202.08 in 2007).

![](./fig/filling_temporal_gaps_value.png)

**4. Replace modeled values into original data where gaps had occurred**

Substitute these modeled values that were previously gaps in the timeseries. *The data layer is now ready for the Toolbox, gapfilled and in the appropriate format.*


#### Spatial gapfilling

Spatial gaps are when no data are available for a particular region. The Toolbox requires data for each region. It is important to make an informed decision about how to spatially gapfilling data.

![](./fig/gapfilling_spatial.png)

To fill gaps spatially, you must assume that one region is like another, and data from another region is adequate to be substituted in place of the missing data. This will depend on the type of data and the properties of the regions requiring gapfilling. For example, if a region is missing data but has similar properties to a different region that does have data, the missing data could be 'borrowed' from the region with information. Each data layer can be gapfilled using a different approach when necessary.  

**Characteristics of regions requiring gapfilling that can help determine which type of spatial gapfilling to use:**

1. proximity: can it be assumed that nearby regions have similar properties?

2. study area: are data reported for the study area, and can those data be used for your regions?

3. demographic information: can it be assumed a region with a similar population size has similar data?


**Spatial gapfilling example:**

For a certain data layer, suppose the second region (*rgn_id 2*) has no data reported, as illustrated in the figure above. How to spatially gapfill *rgn_id 2* requires thinking about the properties and characteristics of the region and the data, in this case, tourist count.

Here are properties that can be important for decision making:

*rgn_id 2*:

- is located between *rgn_id 1* and 3
- is larger than *rgn_id 1*
- has similar population size/demographics to *rgn_id 3*
- has not been growing as quickly as *rgn_id 4*

There is no absolute answer of how to best gapfill *rgn_id 2*. Here are a few reasonable possibilities:

Assign *rgn_id 2* values from:

- *rgn_id 1* because it is in close proximity to *rgn_id 2*
- *rgn_id 3* because it is in close proximity to *rgn_id 2* and has similar population size/demographics
- *rgn_id 1* and 3 averaged since they are in close proximity to *rgn_id 2*

Suppose the decision was made to gapfill *rgn_id 2* using the mean of *rgn_id 1* and *3* since this would use a combination of both of those regions. Again, other possibilities could be equally correct. But some form of spatial gapfilling is required so a decision must be made. The image below illustrates this in Excel.

![](./fig/gapfilling_spatial_example.png)

The data layer is now ready for the Toolbox, gapfilled and in the appropriate format.  

### Long formatting

The Toolbox expects data to be in 'long' or 'narrow' format. Below are examples of correct and incorrect formatting, and tips on how to transform data into the appropriate format.

**Example of data in an incorrect format:**

![](./fig/formatting_long_example.png)

With 'wide' format, data layers are more difficult to combine with others and more difficult to read and to analyze.

**Transforming data into 'narrow' format:**

Data are easily transformed in a programming language such as R.

In R, the `tidyr` package has the `gather` command, which will gather the data from a wide format into a narrow format. It also can `spread` the data back into a wide format if desired. R documentation:

- http://blog.rstudio.org/2014/07/22/introducing-tidyr/
- http://www.rstudio.com/resources/cheatsheets/

The final step is optional: ordering the data will make it easier for humans to read (R and the Toolbox can read these data without this final step):

**Example of data in the appropriate (long) format:**

![](./fig/formatting_long_example_2.png)

### Rescaling your data

<!---Notes from Github issue 389. Katie, develop--->

An important consideration is how to rescale your data when preparing it for use in the Toolbox. Rescaling involves turning a distribution of data into a value from zero to one. This is based on finding a highest observed or theoretical point in the distribution of the data, and from there, the relative value of the data can be calculated.

<!---Insert example: Data normalization; example with you rescaling to max, or to higher than max.--->

#### Example: Global Data Approach

You should base your decision on whether your consider it more appropriate to decide the reference point based on the data distribution of all data points, be they observed or interpolated, or whether we think we should only consider the observed data. If the interpolation covers large areas, and these get assigned values that aren't very frequent in the observed data, then the two distributions will be very different, and what value is in the 99.99th percentile is different too.

In theory, one would favor deciding the reference point based on as many observations as possible (i.e., interpolate first, then obtain the percentile). In practice, if we think that large interpolated areas are very unreliable, we might prefer to use real observations only (i.e., percentile first, then interpolate).

### Naming data layers

Please name each data layer with the following format so it is easy to keep all data organized:

`prefix_layername_regionYEAR_suffix.extension`

>There cannot be any white spaces in any part of the filename: instead, use underscores ('_').

The **prefix** will be the letters identifying each goal (two letters) or sub-goal (three letters):

|Goal           | Code | Subgoal   | Code |
|---------------|------|------------|-----|
|Food Provision                | FP   | Fisheries | FIS |
|                              |      | Mariculture | MAR|
|Artisanal Fishing Opportunity | AO   |             ||
|Natural Products              | NP   |             ||
|Coastal Protection            | CP   |             ||
|Carbon Storage                | CS   |             ||
|Livelihoods and Economies     | LE   | Livelihoods | LIV|
|                              |      | Economies   | ECO|
|Tourism and Recreation        | TR   |             ||
|Sense of Place                | SP   | Iconic Species | ICO|
|                              |      | Lasting Special Places | LSP|
|Clean Waters                  | CW   |      ||
|Biodiversity  | BD | Habitats | HAB  |
|                              | | Species | SPP|

The **layername** should be made of words or abbreviations to identify what the layer is (eg. unemployment)

The **regionYEAR** should identify the assessment scenario: **chn2015**. This will help separate updated data layers from global data layers ('glYEAR').

The **suffix** of the filename should identify who prepared the data so any questions can easily to sent to the correct person (eg. JL).

The **extension** identifies the filetype and is separated by a period (.). _You must save your files as comma separated values (*.csv*)_ since this is the format used by the OHI Toolbox.  

Here is an example of a properly named data layer for the  tourism and recreation goal, where the data are the percent of unemployment prepared by Julia Lowndes.

`tr_unemployment_chn2015_JL.csv`
