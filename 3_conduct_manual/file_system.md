# Full Repository

## File system organization

This section is an orientation to the files within your _Full Repository_. The file system organization is the same for all assessment repositories, and can be viewed at `github.com/OHI-Science` or on your computer. While reading this section it is helpful to explore a repository at the same time to become familiar with its contents and structure. The following uses the assessment repository for Ecuador (*ecu*) as an example, available at _www.github.com/OHI-Science/ecu_.

**Most of your time will be spent preparing input layers and developing goal models**. You will also register prepared layers to be used in the goal models. This all will be an iterative process, but generally speaking you will work goal-by-goal, preparing the layers first, registering them, and then developing the goal models in *R*. to calculate the scores.

### Main folders within your Full Repo

The **scenario folder** is the most important folder within the repository; by default it is named `subcountry` to indicate that the assessment is conducted at the region scale (province, state, district, etc.), based on input layers and goal models used in the most recent global assessment. It contains all of the inputs needed to calculate OHI scores, and you will modify these inputs when conducting your assessment. The scenario folder is explained in detail in this section.
<!-- * All other files in the assessment repository are accessory files. Files with names beginning with a ‘.’ are required for versioning capabilities by GitHub and do not appear when the assessment repository is viewed on your computer. -->

![](https://docs.google.com/drawings/d/1eHViTehnAuxSDw1fYI54C3X5YgBktGtaVt71R3OXYeE/pub?w=600&h=500)

![Navigating the assessment repository. The figure shows Mac folder navigation above and Windows navigation below.](https://docs.google.com/drawings/d/13536h0d6hahYCBrxIItlG_q-r9FmezfN1lcpf-5BMHc/pub?w=692&h=820)

When conducting your assessment, you can rename your scenario folder to reflect the subcountry regions in your study area and year the assessment was completed. For example, `province2015` would indicate the assessment was conducted for coastal provinces in the year 2015.

Once you complete your assessment with the `assessmentYEAR` (or equivalent) scenario, further assessments can be done simply by copying the `assessmentYEAR` folder and renaming it. This can be done for future assessments, for example `assessment2016` or `assessment2018`, which eventually would enable you to track changes in ocean health over time. You can also copy scenario folders to explore different policy and management scenarios, for example `assessmentYEAR_policy1`.

This figure illustrates the files contained within the assessment repository's `assessmentYEAR` scenario folder, and in which step of the Toolbox workflow they are associated with. Important files are either *.csv* text files or *.R* script files. Files are organized into different folders within the `assessmentYEAR` folder, and you will modify some of these files while leaving others as they are.

![](https://docs.google.com/drawings/d/1zHe1Gp2L7xN04w3NO_uQvOrl47Ug_oogyj2E338J90U/pub?w=1150)

The **conf** folder within the `assessmentYEAR` scenario folder, the `conf` folder includes important configuration files required to calculate OHI scores. Most of the maneuvering in this phase is done within this folder. There are both *.R* scripts (`config.R` and `functions.R`) and *.csv* files (`goals.csv`, `pressures_matrix.csv`, `resilience_matrix.csv`, and `resilience_weights.csv`), which will be introduced individually in the next section.

![The `conf` folder contains important R functions and *.csv* files.](./fig/layers_folder_location_conf.png)

The **prep** folder is important in the beginning of your assessment, as it is where you will store and manipulate raw data to get them ready for calculations.

Over all, all the main files you will encounter are either of the two file types:

- ** _.csv_ files** contain data inputs or configuration information.
- ** _.R_ scripts** are written in the programming language R and use data inputs for processing and calculations.

We will introduce those files below roughly in the order and the frequency of use:  

### Data layers

* raw data files in `prep` folder
* `layers` folder
* `layers.csv`
* `goals.csv`
* `layers-empty_swampping-global-mean.csv`
* `pressures_categories.csv`
* `pressures_matrix.csv`
* `resilience_categories.csv`
* `resilience_matrix.csv`
* `scores.csv`

**raw data layers in "prep" folder**

This is where you will store (and manipulate) raw data files before modifying goal models. We recommend separating data layers into different folders by goal.  

*layers* folder

This folder contains all layers required to calculate goal scores, and each layer is an individual *.csv* file. _The names of the *.csv* files within the layers folder correspond to those listed in the *filename* column of the `layers.csv`._ All *.csv* files can be read in R, or with text editors or spreadsheet editors like Microsoft Excel.

![The `layers` folder contains every data layer as an individual *.csv* file. Mac navigation is shown on the left and Windows navigation is shown on the right.](https://docs.google.com/drawings/d/151Hw1Eb13T4KgndEKXM31BDjvdbB5JO7VGneqdUwGQU/pub?w=1702&h=476)

Note that each *.csv* file within the `layers` folder has been formatted consistently. The Toolbox expects all data layers to be in the correct ['long format'](http://ohi-science.org/manual/#long-formatting) and in separate files. Each file also has a column with unique region identifier (*rgn_id*). These numeric region identifiers have region names associated with them, that are set in `rgn_labels.csv` and can be modified.  

> TIP: You can check your region identifiers (*rgn_id*) in the `rgn_labels.csv` file in the `layers` folder.

*/glYEAR* and */scYEAR* suffixes

In your repository, layers are provided for your country based on input information from the YEAR global assessment. The global assessment had information for your country at the the spatial scale of the entire country, whereas your assessment has information for each subcountry region within your country. In most cases, layers from the global assessment was allocated equally to all regions in your study area (country). When this occurred, the layer was given a suffix of `_glYEAR` to indicate that information is equal across all regions in the study area. While these layers may not provide much useful information to your assessment, the proper input structure is provided in these layers. Some layers contain information such as km2 of habitat that could not be equally allocated across all regions since this would provide a sum much greater than reality. In these cases, layers were down-weighted based on the proportion of offshore area or coastal population density. These layers have the suffix `_scYEAR` with an indication of what was used to downweight. While this method removes any error of inflated sums and provides the Toolbox with functioning layers, the allocation of these values may not be sensical to your study (i.e. if corals are only present in some regions of your study area but they are allocated to all).

![Differences in input layers with equal information for each region (suffixed with `_glYEAR`) and weighted information for each region (suffixed with `_scYEAR`). ](https://docs.google.com/drawings/d/1QlpBKXfBZFPROK5Xvexkj6ABwsUMQQT52uhIKdVd7iI/pub?w=576&h=288)

**layers.csv**

The `layers.csv` file is the registry and directory that manages all data required for you assessment. All relevant input information is prepared as individual data layers and then registered in this file. The Toolbox uses `layers.csv` to access the proper input information and display information on the WebApp.

`layers.csv` is easiest to view in spreadsheet software (i.e. Microsoft Excel). When you open it, you will see that each row of information represents an individual input layer that has been prepared for the Toolbox. The first columns contain information that will be updated by your team as you [incorporate modified or new layers](http://ohi-science.org/manual/#register-data-layers-in-layers.csv): *targets, layer, name, description, fld_value, units, filename*.; all other columns are generated later by the Toolbox as it confirms data formatting and content and alerts you of any formatting inconsistencies.

* **targets** indicates which goal or dimension uses the layer. Goals are indicated with two-letter codes and sub-goals are indicated with three-letter codes (see the table just below). Pressures, resilience, and spatial layers indicated separately.
* **layer** is the identifying name of the input layer that will be used in R scripts like `functions.R` and *.csv* files like `pressures_matrix.csv` and `resilience_matrix.csv`. This is also displayed on the WebApp under the drop-down menu when the variable type is ‘input layer’.
* **name** is a longer title of the input layer; this is displayed on the WebApp under the drop-down menu when the variable type is ‘input layer’.
* **description** is further description of the input layer, including the source of the original data. This is also displayed on the WebApp under the drop-down menu when the variable type is ‘input layer’.
* **fld_value** the values' units in the input layer. The information in this column must match the column header in the input layer.
* **units** the values' units in the input layer. This differs from *fld_value* above as the *units* column is displayed on the WebApp and can have more descriptive naming.
* **filename** is the input layer itself. This file has input information for each region within the study area, and is located in the `subcountryYEAR/layers` folder.

<span style="font-size:0.8em">

| Goal | Subgoal | 2- or 3- letter code|
|----|----|----|
|Food Provision                | |FP |
| |Fisheries                     |FIS|
| |Mariculture                   |MAR|
|Artisanal Fishing Opportunity | |AO |
|Natural Products              | |NP |
|Coastal Protection            | |CP |
|Carbon Storage                | |CS |
|Livelihoods and Economies     | |LE |
| |Livelihoods                   |LIV|
| |Economies                     |ECO|
|Tourism and Recreation        | |TR |
|Sense of Place                | |SP |
| |Lasting Special Places        |LSP|
| |Iconic Species                |ICO|
|Clean Waters                  | |CW |
|Biodiversity                  | |BD |
| |Habitats                      |HAB|
| |Species                       |SPP|

</span>

**goals.csv**

`goals.csv` is a table with information about goals and sub-goals, including:

- _order_color_ & _order_hierarchy_: the order to display in flower plots
- _order_calculate_: the order in which the goals and sub-goals are calculated for the overall index scores
- _goal_ & _parent_: indicates the relationship between sub-goals and supra-goals (i.e. goals with sub-goals)
- _weight_: how each goal is weighted to calculate the final Index scores
- _preindex_function_: indicate what parameters are called to calculate scores for goals and sub-goals in `functions.r`
- _postindex_function_: indicate what parameters are called to calculate scores for supra-goals in `functions.r`

**pressures_categories.csv**

This is a table to record the _name_ of each pressures data layer, its _category_, and _sub-category_. Each data layer name  is the same name that's saved in the `layers` folder and is registered in `layers.csv`. Each layer falls under one of two categories -  ecological or social pressures, and one of several sub-categories to further represent the origin of the pressure (e.g. climate change, fishing, etc), which is also indicated by a prefix of each data layer name (for example: `po_` for the pollution sub-category). For more information, see [how to modify pressures layers](http://ohi-science.org/manual/#modifying-pressures-categories-and-matrix).

**pressures_matrix.csv**

It is a table that indicates which individual pressures (stressors) affect which goal, sub-goals, or components, and weights them from 1-3 (a weight of 0 is shown as a blank). A higher weight indicates more negative impacts on that goal or component of the goal. These weights are relative to each row of the matrix (goal, sub-goal, or component). These weights are used in global assessments based on scientific literature and expert opinion, and you can modify the weightings if necessary for your assessment. The pressures matrix is the same as Table S25 in the Supplementary Information for Halpern *et al.* 2012.

Each pressure (column) of the pressures matrix is the layer name of the pressures layer file that is saved in the `layers` folder and is registered in `layers.csv`, matching what's recorded in the _pressures_categories.csv_. For more information, see [how to modify pressures layers](http://ohi-science.org/manual/#modifying-pressures-categories-and-matrix).

**resilience_categories.csv**

Similar to _pressures_categories.csv_, this file contains information on each resilience data layer, including its name, category, and sub-category. Each resilience layer's name is the same as the data layer to be saved in the `layers` folder and is registered in `layers.csv`. In addition, it also includes information on _category type_ - ecosystem, regulatory, or social, indicating the origin of the resilience layer.

Each resilience layer is also assigned a weight of 0-1, representing the level of resilience against pressures.  Different from the values used in pressures matrix, the resilience weights depend on the level of information available. For more information, read [how to modify resilience layers](http://ohi-science.org/manual/#modify-resilience-categories-and-matrix).

**resilience_matrix.csv**

It is a table that indicates which individual resilience measures affect which goal, sub-goals, or components. These weights are stored in a separate file in the `conf` folder: `resilience_weights.csv`. The resilience matrix is the same as Table S26 in the Supplementary Information for Halpern *et al.* 2012. For more information, read [how to modify resilience layers](http://ohi-science.org/manual/#modify-resilience-categories-and-matrix).


**scores.csv**

`scores.csv` is a text file containing the calculated scores for each dimension (future, pressures, resilience, score, status, trend) for each region in the study area. Regions have the numeric identifiers set in `subcountryYEAR/layers/rgn_labels.csv` and the study area has the numeric identifier of 0. Scores are calculated with registered layers in `layers.csv`: when you begin an assessment this will be information for your country from the global YEAR assessment and goal models from the global YEAR assessment. Scores from `scores.csv` are viewed through the WebApp using the ‘Output Score’ pulldown menu on the 'App' page.

**layers-empty_swapping-global-mean.csv**
`layers-empty_swapping-global-mean.csv` contains a list of layers where information for your country was not available for the global assessment. For the Toolbox to be able to run, these layers were filled with averages from all other countries included in the global assessment. This file is not used anywhere by the Toolbox but is a registry of layers that should prioritized to be replaced with your own local layers if you require these layers for the models you develop.

### R scripts

* `install_ohicore.R`
* `configure_toolbox.R`
* `calculate_scores.R`
* `data_prep.R` in prep folders
* `functions.R`
* `config.R`
* `launch_app_code.R`

**install_ohicore.R**

This script installs `ohicore`, which is the second repository required for the Toolbox and is the engine behind all OHI calculations. You will need to run this script only once when you [first install the toolbox](http://ohi-science.org/manual/#install-ohicore).

**configure_toolbox.R**

This script does the pre-checks before running goal models and calculate dimension scores. It loads "ohicore", calls all goal functions and data layers in the "conf" folder, and check that all data layers are registered properly. You are encouraged to use this script when you're working on individual goal models. After you register data layers for a goal, or make any changes to the data layers, source this script before running model-specific functions in functions.R.

**calculate_scores.R**

It runs everything required to calculate OHI scores using the prepared layers the `layers` folder that are registered in `layers.csv`. Scores will be saved in `scores.csv`.

**functions.R`**

This script contains the equations for each goal and sub-goal model. Each goal and sub-goal equation is stored as a separate function within the script. These functions calculate the _status_ and _trend_ using prepared layers saved in the ‘layers’ folder and registered in `layers.csv`. You will need to code in R to modify or develop new models, and it is best to work on one goal at a time.

**config.R** in "conf" folder

It configures labeling and constants appropriately. You will only need to modify this file when working with goals that have categories (example: habitat types or economy sectors) that are affected differently by pressures and resilience measures.

**launch_app_code.R**

It will launch a version of the App on your computer so that you can visualize any edits you make before syncing to *github.com*.

### Other

* reports
* session.txt
* spatial
* temp

**reports** folder

The `reports` folder contains flower plots and tables for every region in the study area and for the study area itself, which by convention is called 'GLOBAL' in these files.

**session.txt**

`session.txt` is not used in OHI calculations but stores information about how the Toolbox was installed which may be useful for debugging purposes.

**spatial** folder
The `spatial` folder contains two spatial files: `regions_gcs.geojson` and `regions_gcs.js`. These files spatially identifies the study area and regions for the assessment and are stored in the JSON and GeoJSON formats that can be displayed by the App. If you plan to redefine the spatial boundaries for your assessment, you will need to provide a shapefile to the OHI+ development team and we will create the proper `regions_gcs.geojson` and `regions_gcs.js` files for you. You will need a spatial analyst to do this: see the **Defining spatial boundaries** section for instruction.

**temp** or **tmp** folders

Contents within the `temp` or `tmp` folders are not used to calculate scores but can be used for temporary organization for your assessment.
