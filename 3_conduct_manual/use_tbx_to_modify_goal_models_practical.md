---
title: "use_tbx_to_modify_goal_models_practical.md"
output: html_document
---
This tutorial will how you how to modify goal models and calculate status and trend.

Before getting started on the R codes, make sure that you followed instructions on OHI Manual, starting from accessing github repositories, until modifying goal models, which means:  
 + install the latest versions of R, RStudio, and GitHub
 + Synchronize GitHub and Rstudio
 + Updated data layers, pressure, and resilience in both layers folder and layers.csv _(Link to a separate module on data layers preperation)_

### Setup
A few steps to take before modifying goal models. We will use CHN Carbon Storage goal as an example.

1. Open your project (eg. CHN) in RStudio, and open the folder of your specific assessment (eg. province2015).
1. Run `install_ohicore.R`. _This only needs to be done once to load all the background functions for OHI._
1. Run `calculate.scores.R` from line 1 all the way through `Load Scenario Layers` section. _This will load all the data layers and call the background functions for your next step_.
1. In `conf` sub-folder, open `functions.R`. _This is where all the status and trend calculations occur._
1. Go to the appropriate goal section.

### Model modification
Your repository is pre-loaded with r codes for calculations from the 2014 Global assessment. Regardless of how you have changed your models, the basic sequence of events are similar for all goals. In `functions.R`, each goal is set up as a function (eg. ``` HAB = functions(layers) {...} ```} and you will make modifications for each goal within its function. Below is the step-by-step instruction on how to modify CS goal model and calculate its status and trend, as an example.

#### Load data
1. Identify and select the data layers we need. _(Note that the layer names are what was set up in layers.csv. Now the toolbox will look for those layers)_
```
lyrs = c('cs_condition',
           'cs_contribution',
           'cs_extent',
           'cs_extent_trend')

  D = SelectLayersData(layers, layers=lyrs)
  # SelectLayersData is an `ohicore` function that will call the layers from layers folder you just named

  head(D); summary(D)

  ```

It is good practice to use head() and summary() after each step to make sure the data looks the way it is supposed to. Alternatively, you can click the file name in Rstudio `Environment` to see the entire dataset you just created. Here is what the _head_ and _summary_ look like:

 ```
  id_num    category val_num        layer id_name val_name category_name                        flds year
1      1 saltmarshes     0.8 cs_condition  rgn_id    value       habitat id_num | category | val_num   NA
2      2 saltmarshes     0.8 cs_condition  rgn_id    value       habitat id_num | category | val_num   NA
... ...

     id_num              category     val_num             layer             id_name            val_name         category_name          flds                year
 Min.   : 1.000   mangroves  :20   Min.   :     -0.1   Length:84          Length:84          Length:84          Length:84          Length:84          Min.   :2007  
 1st Qu.: 4.000   saltmarshes:44   1st Qu.:      0.4   Class :character   Class :character   Class :character   Class :character   Class :character   1st Qu.:2007  
 Median : 8.000   seagrasses :20   Median :      0.7   Mode  :character   Mode  :character   Mode  :character   Mode  :character   Mode  :character   Median :2010  
 Mean   : 6.952                    Mean   :  70215.0                                                                                                  Mean   :2010  
 3rd Qu.:10.000                    3rd Qu.:     25.8                                                                                                  3rd Qu.:2012  
 Max.   :11.000                    Max.   :2513980.0                                                                                                  Max.   :2013                                                                                                                                                        NA's   :63
```                                                                                                                                                       

2. Combine all the data layers into one formatted data file. Select only the columns we need with _select_, change the row format to columns with _spread_, and change the column names to something easier to use with _rename_.
```
rk = D %>%
    select(region_id = id_num,
           layer,
           habitat = category,
           val_num) %>%
    spread(layer, val_num) %>%  # spread is a tidyr funtion
    rename(contribution = cs_contribution, # rename is a dplyr function
                  condition    = cs_condition,
                  extent       = cs_extent,
                  extent_trend = cs_extent_trend); head(rk)
```
_This is what head(rk) looks like:_
```
    region_id     habitat contribution condition  extent extent_trend
            1 saltmarshes          1.0       0.8 1188600         -0.1
            1  seagrasses          0.5       0.8     100          0.0
            2 saltmarshes          1.0       0.8   81551         -0.1
...
```
_Note: the %>% is a chain operator from dplyr used to simplify coding writing. To read more about it: http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html on chaining_

<!-- narrative for video: we select only the columns we need: the province id, layer, habitat, and values. note that those names have been written differently in github than the original data file, as shown in the summary (point to summary). we’ll change the names to something we can easily recognize. and we can do so in the select command (region_id to id_num, etc)
right now, the data are in rows, and we want to make each layer into a column (show data on R of what this means). We use spread in the tidyr package to do that. (note that we wrote tidyr:: spread, to show that the command spread comes from tidyr package). in this command, the key= variable to become column headers, which is layer. value= data, which is val_num. for more info on spread, see cheat sheet, and ?spread
now the data is in a nice and clean format in one table, we can do the status calculation. The model is written out according to the data description file. -->

3. Select only the habitats that contribute to CS _(Not all habitats included in the raw data files are used for carbon storage)_. You can select specific rows with _filter_.
`````r
rk = rk %>%
  filter(habitat %in% c('mangroves','saltmarshes','seagrasses'))
`````

#### Status Calculation
for easy reference, you can write down the equation as a comment before calculations.  
`````r
## status model calculations
 #  xCS = sum(ck           * Cc/Cr     * Ak) / At
 #      = sum(contribution * condition * extent_per_habitat) / total_extent_all_habitats
`````

1. Calculations are done in steps with functions _mutate_, _group_by_, and _summarize_, which are among the main functions you would need in OHI. (Link to dplyr-intro)
```
StatusData = rk %>%
    mutate(c_c_a = contribution * condition * extent) %>%  # mutate adds a new column
    group_by(region_id) %>%                     # signifies the following calculations are done within each region
    summarize(sum_c_c_a  = sum(c_c_a),          # summarize also adds a new column, but gives one aggregated result
              total_extent = sum(extent)) %>%   # for each region
    ungroup() %>%                               # always a good practice to ungroup before next operation
    mutate(xCS_calc = sum_c_c_a/total_extent,
           score = pmax(-1, pmin(1, xCS_calc)) * 100)     #score can't exceed 100
```

2. Select only the results we need to report, and the dimension. Toolbox will need goal, dimension, region_id, and score, although they don't need to be listed in a certain order at this step.
`````r
status <-  StatusData %>%
   filter(year==status_year) %>%
   mutate(score     = round(Status*100),                # score is 0-100
          dimension = 'status') %>%
   select(region_id=rgn_id, dimension, score) %>%       # select the correct columns
   data.frame()
`````

#### Trend Calculation
For CS, a variable `extent-trend` has been prepared to calculate the trend:
```
trend = rk %>%
  group_by(region_id) %>%
  summarize(trend_raw = sum(extent * extent_trend) / sum(extent),
            score = max(min(trend_raw, 1), -1)) %>%
  mutate(dimension = "trend")
```
However, for most other goals, trends are calculated in a regression model based on the most recent 5 years of status:

```
trend = StatusData %>%
   filter(year > (max(year)-5)) %>%                  # select the most recent 5 years of data
   group_by(rgn_id) %>%
   do(mdl = lm(Status ~ year, data = .)) %>%         # regression model
   summarize(region_id = rgn_id,
             score = coef(mdl)['year'] * 5) %>%      # trend is the coefficient of year x 5
   ungroup() %>%
   mutate(score = round(score, 2),
          dimension = "trend") %>%
   select(region_id, dimension, score) %>%
   data.frame()
```

#### Combine Status and Trend Scores
To report the results, you'll assemble status and trend scores you just calculated above into one data frame. Now the your results would contain region_id, score, dimension, and goal, which will be combined with the results of other goals and produce one results table:

```    
scores = rbind(status, trend) %>% mutate(goal='CS')
```

#### Update goal call in `goals.csv`

`goals.csv` in the `conf` folder provides input information for `functions.R`, particularly about function calls. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

In the `preindex_fuction`, you could specify variables such as _status_year_ and _trend_year_, which you can call in your goal function. Note that it is not necessary to specify those variables. If you do not use them in your function as in the CS example, you could delete those variables in `preindex_fuction`.

> Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a proportion of the number of goals assessed. The ten goals are weighted equally by default.

> `goals.csv` also includes descriptions about goals and sub-goals, which is presented on the WebApp.

![Check the information in `goals.csv`. It provides input information for `functions.R`. ](https://docs.google.com/drawings/d/17BgYSw2sHbZvHNjUqBlTG-kCOAAn7o6a65O37s0S_es/pub?w=1052&h=719)

![A screenshot of `goals.csv`, used to modify goal model](https://docs.google.com/drawings/d/1o2wtJ9KCPDyGPH9Y4unmALG6BlxX9lmJ_PakDDiQrLo/pub?w=700&h=524)
<!-- eventually we want a score for each region. to do so, we group the data by region, with group_by, by rgn_id (show new data table grouped by region)
next we calculate the sum of extent*condition*contribution in each region, and the sum of all extents. we use summarize this time, which adds a new column automatically, and aggregate different habitats in each region into one combined score. note that summarize acts based on the group_by command we just did. then we ungroup before the next command, which is always a good practice.
now we have calculated the sum of extent*condition*contribution, and the sum of extents (point to the model equation), we can calculate the final score for each region. again, to add a new column, we use mutate. since the score can’t exceed 100, we’ll use the function min(1, xCS_calc), which takes the minimum of the two numbers.
after we calculate the score, there is one more step to create a new table for the status score called r.status and format the it to match the style of the other goals. (show the outcome table in green). again we’ll use the mutate function to add in two new columns: goal and dimension. Then we select only the columns we need, with the select function. now, the status calculation is done!
in addition to status, we also need to calculate trend. we use the first table we made today, rk, which contains the raw data for all habitats in all regions. we first aggregate the data by region using group_by, then add two new columns for the trend calculation and the score, using summarize.
similar to status, trend scores need to be properly formatted to match the rest of the goal trends. we’ll create a new table called r.trend with the scores we just calculated. again, we use mutate and select, as shown here.
now we’ve successfully calculated status and trend, the last thing we need to do is combine them into one table called scores. we combine r.status and r.trend by first binding by rows (rbind). -->
