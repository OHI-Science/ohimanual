# Saving and Registering Data Layers

When you received your _Full Repo_, you would have already explored data, or started the process of data preparation, in the _Starter Repo_. To proceed to the next steps of assessment and calculate scores with the Toolbox, now you need to **save** prepared data layers in the `layers` folder and **register** them in `layers.csv`, and update pressures and resilience matrixes.

> Reading [Full Repo file system structure](http://ohi-science.org/manual/#file-system-organization) section to get familiar with the repository structure.

![This figure shows the location of your data layers. Mac navigation is shown above and Windows is shown below.](https://docs.google.com/drawings/d/1ztC3Warw_qWkxJsbPFcdrKRqPBmG-EqYzxHCK6RUQ8I/pub?w=1150&h=818)  

## Overview

Data layers are *.csv* files and are located in the `[assessmentYEAR/layers` folder (eg. bhi2015/layers), which is pre-loaded with data from the most recent global OHI assessment:

* Layers with the suffix `_glYEAR.csv` (*gl* for *global*) have been exactly copied from the global assessment and applied equally to each region, and therefore the values will be the same across all subcountry regions.
* Layers with the suffix `_scYEAR.csv` (*sc* for *subcountry*) have been spatially-extracted from global data or adjusted with spatially-extracted data so that each  region in your assessment has a unique value. For example, gross domestic product (GDP) used in the global assessment was reported at the national (most often country) level. Instead of being applied equally across all subcountry regions (which would incorrectly increase the nation's GDP several times), national GDP was down-weighted by the proportion of coastal population in each region compared with the total coastal population.

**Both types of default data layers are of coarse-resolution and should be replaced with local, high-resolution data when possible.** The priority should be to replace as much of the `_glYEAR.csv` data as possible.

**There are several steps to follow when finalizing your own data layers** after they are [properly formatted](http://ohi-science.org/manual/#formatting-data-for-the-toolbox):

1. Save the layer in the `layers` folder
2. Register the layer in `layers.csv`
3. Check (and update when appropriate) `pressures_matrix.csv` and `resilience_matrix.csv` (located in: `assessmentYEAR/conf`)

## Save data layers in the *layers* folder

When you modify existing or create new data layers, we recommend saving this as a new *.csv* file with a suffix identifying your assessment (eg. `_assessmentYEAR.csv`). Modifying the layer name provides an easy way to track which data layers have been updated regionally, and which rely on global data. Then, the original layers (`_glYEAR.csv` and `_scYEAR.csv`) can be deleted.  

> Filenames should not have any spaces: use an underscore ('_') instead. This will reduce problems when R reads the files.

## Register data layers in `layers.csv`  

When there are new filenames associated with each layer, they will need to be registered in `assessmentYEAR/layers.csv`. If a layer simply has a new filename, only the *filename* column needs to be updated:

![Register new layers in `layers.csv`. Be sure to note if there is a change in the filename.](https://docs.google.com/drawings/d/1adaERJXxzBxCxqBtmvp8uf5g68mHFfakR-Edbh2wwWo/pub?w=1677&h=687)  

However, **if a new layer has been added (for example when a new goal model is developed)**, you will open `layers.csv` in a spreadsheet software (i.e. Microsoft Excel), add a new row in the registry for the new data layer and fill in the first eight columns (columns A-H):

 + **targets:** Add the goal/dimension that the new data layer relates to. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes, with pressures, resilience, and spatial layers indicated separately.
 + **layer:** Add an identifying name for the new data layer, which will be referenced in R scripts like `functions.R` and *.csv* files like `pressures_matrix.csv` and `resilience_matrix.csv`.
 + **name:** Add a longer title for the data layer.
 + **description:** Add a longer description of the new data layer.
 + **fld_value:** Add the appropriate units for the new data layer. It is _the same as the column name in the data file_, which will be referenced in R scripts in subsequent calculations. (example: area_km2)
 + **units:** Add a description about the *units* chosen in the *fld_value* column above. Think about what units you would like to be displayed online when filling out "units." (example: km^2)
 + **filename:** Add a filename for the new data layer that matches the name of the *.csv* file that was created previously in the `layers` folder.
 + **fld_id_num:** Area designation that applies to the newly created data layer, such as: *rgn_id* and *fao_id*.

 It is important to check that you have filled you the fields correctly, for instance, if "fld_value" does not match the header of the source data layer, you will see an error message when you try to calculate scores. Other columns are generated later by the Toolbox as it confirms data formatting and content.

<!-- ### Check pressures and resilience matrices

If the new or modified layer is a pressures layer, check that `pressures_matrix.csv` and `resilience_matrix.csv` have been properly modified to register the new data layers. -->
