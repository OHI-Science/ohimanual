## Modifying and creating data layers

<!---OM: this is an optional new figure; drafts are commented like so in these Tbx sections: ![A figure showing key steps in the process of creating and preparing your data layers.](https://docs.google.com/drawings/d/1faQjNMY3Z_R2X2U53hQ9ChqhxlyEa3xRe8jz5FnXsbU/pub?w=960&h=859)--->

Data layers are *.csv* files and are located in the `[assessment]/subcountry2014/layers` folder. Remember that all data layers provided in your repository are extracted from the global 2014 assessment.

![This figure shows the location of your data layers. Mac navigation is shown above and Windows is shown below.](https://docs.google.com/drawings/d/1ztC3Warw_qWkxJsbPFcdrKRqPBmG-EqYzxHCK6RUQ8I/pub?w=1150&h=818)  

* Layers with the suffix `_gl2014.csv` (*gl* for *global*) have been exactly copied from the global assessment and applied equally to each region, and therefore the values will be the same across all subcountry regions.
* Layers with the suffix `_sc2014.csv` (*sc* for *subcountry*) have been spatially-extracted from global data or adjusted with spatially-extracted data so that each  region in your assessment has a unique value. For example, gross domestic product (GDP) used in the global assessment was reported at the national (most often country) level. Instead of being applied equally across all subcountry regions (which would incorrectly increase the nation's GDP several times), national GDP was down-weighted by the proportion of coastal population in each region compared with the total coastal population.

Both types of default data layers are of coarse-resolution and should be replaced with local, high-resolution data when possible. The priority should be to replace as much of the `_gl2014.csv` data as possible.

**There are several steps to follow when working with data layers:**

1. Modify or create data layer with proper formatting
2. Save the layer in the `layers` folder
3. Register the layer in `layers.csv`
4. Check (and update when appropriate) `pressures_matrix.csv` and `resilience_matrix.csv` (located in: `[assessment]/subcountry2014/conf`)

### Create data layers with proper formatting

The OHI Toolbox expects each data layer to be in its own *.csv* file and to be in a specific format, with data available for every region within the study area, with data organized in 'long' format (as few columns as possible), and with a unique region identifier (*rgn_id*) associated with a single score or value. See the **'Formatting data for the Toolbox'** section for more information.

### Save data layers in the *layers* folder

When you modify existing or create new data layers, we recommend saving this as a new *.csv* file with a suffix identifying your assessment (example: `_sc2014.csv`). Modifying the layer name provides an easy way to track which data layers have been updated regionally, and which rely on global data. Then, the original layers (`_gl2014.csv` and `_sc2014.csv`) can be deleted.  

\* Note: filenames should not have any spaces: use an underscore (‘_’) instead. This will reduce problems when R reads the files.

### Register data layers in `layers.csv`  

When there are new filenames associated with each layer, they will need to be registered in `[assessment]/subcountry2014/layers.csv`. If a layer simply has a new filename, only the *filename* column needs to be updated:

![Register new layers in `layers.csv`. Be sure to note if there is a change in the filename.](https://docs.google.com/drawings/d/1adaERJXxzBxCxqBtmvp8uf5g68mHFfakR-Edbh2wwWo/pub?w=1677&h=687)  

> TIP: This part is done manually. If you prefer not to manipulate your file by hand, you can generate a script that automates this.

However, if a new layer has been added (for example when a new goal model is developed), you will need to add a new row in the registry for the new data layer and fill in the first eight columns (columns A-H). It is important to check that you have filled you the fields correctly, for instance, if "fld_value" does not match the header of the source data layer, you will see an error message when you try to calculate scores. Other columns are generated later by the Toolbox as it confirms data formatting and content:


 + **targets:** Add the goal/dimension that the new data layer relates to. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer:** Add an identifying name for the new data layer, which will be used in R scripts like `functions.R` and *.csv* files like `pressures_matrix.csv` and `resilience_matrix.csv`.
 + **name:** Add a longer title for the data layer--this will be displayed on your WebApp.
 + **description:** Add a longer description of the new data layer--this will be displayed on your WebApp.
 + **fld_value:** Add the appropriate units for the new data layer (which will be referenced in subsequent calculations).
 + **units:** Add a description about the *units* chosen in the *fld_value* column above.
 + **filename:** Add a filename for the new data layer that matches the name of the *.csv* file that was created previously in the `layers` folder.
 + **fld_id_num:** Area designation that applies to the newly created data layer, such as: *rgn_id* and *fao_id*.

 >TIP: Think about what units you would like to be displayed on the WebApp when filling out "units."

### Check pressures and resilience matrices

If the new or modified layer is a pressures layer, check that `pressures_matrix.csv` and `resilience_matrix.csv` have been properly modified to register the new data layers.
