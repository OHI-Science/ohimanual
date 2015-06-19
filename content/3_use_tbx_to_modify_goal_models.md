## Modifying goal models

<!---OM: this is an optional new figure; drafts are commented like so in these Tbx sections. Remove this comment if you want to make it public: ![A figure showing the key steps involved in modifying goal models in the Toolbox.](https://docs.google.com/drawings/d/1IAMz4YntLoC60IlJrJDoP-wFvtj5ECijDEgZbf-9DFM/pub?w=960&h=859)--->

When an existing layer is updated with new data, the Toolbox will automatically incorporate it into the goal calculations after the updated filenames are registered in `layers.csv`. However, if a new layer has been added to the layers folder and registered in `layers.csv`, the Toolbox will not use it unless it is called in a goal model. To integrate any new data layers registered in `layers.csv` you will need to modify the goal model to incorporate the data. Furthermore, in many cases, it will make sense to modify goal models based on data availability and/or local context. For example, the models for regional analyses can often be simplified because of improved data.

**There are some key steps to follow when working with goal models:**

1. Update `functions.R`
2. Check and possibly update `goals.csv`
3. Check if you need to update `pressures_matrix.csv` and `resilience_matrix.csv` when you change a goal model.

### Update *functions.R*

To incorporate a new data layer into a goal model, open `functions.R` in RStudio: this script contains all the models for each goal and sub-goal. A member of your team with the ability to write R code will need to translate the updated goal model into the Toolbox format. Follow the structure of existing goal models in order to incorporate the new data layers, noting the use of certain R packages for data manipulation.

The image below shows the navigation pane in RStudio that can be used to easily navigate between goal models.

![The navigation pane in RStudio can be used to easily navigate between goal models.](https://docs.google.com/drawings/d/1dMoQQMKV_gtl0v347FoLPsGimVzKY-J3O9zzQUR3VAY/pub?w=876&h=708)

### Check and possibly update *goals.csv*

`goals.csv` provides input information for `functions.R`, particularly about goal weighting and function calls. It also includes descriptions about goals and sub-goals, which is presented on the WebApp.

Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a proportion of the number of goals assessed. `goals.csv` also indicates the arguments passed to `functions.R`. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

![Check the information in `goals.csv`. It provides input information for `functions.R`. ](https://docs.google.com/drawings/d/17BgYSw2sHbZvHNjUqBlTG-kCOAAn7o6a65O37s0S_es/pub?w=1052&h=719)


**When updating layers or goal models, it is important to ensure that information called from `goals.csv` is correct**:

> TIP: In the 'preindex_function' column, you should see what the `year_max`, `status_year`, and `trend_year` say.

### Example modification:

Suppose your team has decided to add an 'artisanal access' component to the Artisanal Fishing Opportunity goal because of locally available data. Once the data are obtained and properly formatted, the data layer is saved as `ao_access_art`. To include this new information in the goal model, you will need to do the following:

1. register the layer in `layers.csv`
2. update the goal model in `functions.R`
3. update the goal call in `goals.csv`


> Step 1. Register in `layers.csv`

![](./fig/new_layer.png)

> Step 2. Update the goal model

![](./fig/functions_explained.png)

> Step 3. Update goal call in `goals.csv`

![A screenshot of `goals.csv`, used to modify goal model](https://docs.google.com/drawings/d/1o2wtJ9KCPDyGPH9Y4unmALG6BlxX9lmJ_PakDDiQrLo/pub?w=700&h=524)
