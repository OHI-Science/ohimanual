# Modifying goal models

After you have registered the data layers for a goal and created a goal model, you are ready to calculate the _status_ and _trend_ of this goal in `functions.r`.

Within `functions.r`, each goal is unique and set up as a function (ie.`AO = function(inputs){equations}`):

- sub-goals (eg. HAB) and goals without sub-goals (eg. CS) have functions that read in data _layers_ (eg. `HAB = functions(layers)`) and return scores for that goal or sub-goal
- supra-goals, or goals with sub-goals (eg. FP) have functions that read in sub-goal _scores_ (eg. `BD = function(scores)`) and calculate scores for the supra-goals

> `functions.R` is pre-loaded with r codes from the most recent OHI-Global assessment as a reference. You can run through the reference script line-by-line to learn how it has been done. For your own assessment, you may choose to delete the entire function and rewrite it completely, or you can borrow most, if not all, of the existing script. Either way, make sure you first identify the parameters to call, either _layers_ or _scores_.

To modify the goal models, open `conf/functions.R` and go to the appropriate goal section. You will do the following sequence of events:

1. load ohicore and check data layers (`configure_toolbox.r`)
2. load data (`functions.r`)
3. calculate status scores (`functions.r`)
4. calculate trend scores (`functions.r`)
5. combine status and trend scores (`functions.r`)
6. confirm how the function is called (`goals.csv`)

> Tip: Check that you have installed the latest versions of R and RStudio before starting. If an unexplained error occurs during calculation, it could be due to a software update, which happens every month or two. Sometimes simply updating your software could fix the error.  

**1. Load ohicore and check data layers**

Run (or source) `configure_toolbox.r` to load ohicore and check data layers.


**2. Load data**

The example below is modified from the _AO_ function in OHI-Global 2015.  

1. Select data layers. _(Note that the layer names are what was set up in `layers.csv`. Now the toolbox will look for those layers)_

```
## select data layers using ohicore::SelectLayersData
layers_data = SelectLayersData(layers, targets='AO')
```          

2. Rename columns & combine layers into one data frame.

```
r <- layers_data %>%
  filter(layer == 'ao_access') %>%
  select(region_id=id_num, access=val_num)

ry <- layers_data %>%
  filter(layer == 'ao_need') %>%
  select(region_id = id_num, year, need=val_num) %>%
  left_join(r, by="region_id")
```

**3. Calculate Status**

Calculations are done using the goal model across all years. Select the result of the most recent year as the goal status.

```
ry <- ry %>%
  mutate(Du = (1 - need) * (1 - access)) %>%
  mutate(statusData = (1 - Du) * Sustainability)

r.status <- ry %>%
  filter(year == status_year) %>%
  select(region_id,
         statusData) %>
  mutate(status = statusData*100)

  summary(r.status); dim(r.status)
```

**4. Calculate Trend**

Trend is typically calculated as the linear trend of the _most recent five years_ of status.

```
## minimum year here for illustration; it is based on data available
year_min = 2011

 r.trend <- ry %>%
   filter(year >= year_min) %>%
   filter(!is.na(statusData)) %>%
   group_by(region_id) %>%
   arrange(year) %>%
   top_n(5, year) %>%
   ungroup()


 r.trend <- r.trend %>%
   group_by(region_id) %>%
   do(mdl = lm(statusData ~ year, data=.)) %>%
   summarize( region_id = region_id,
              trend = coef(mdl)['year']*5) %>%
   ungroup()

```

**5. Combine Status and Trend**

Assemble status and trend scores into one data frame. Your results would contain four columns: _region_id, score, dimension,_ and _goal_.

Don't forget to `return(scores)`!


```
scores = r.status %>%
  select(region_id, score=status) %>%
  mutate(dimension='status') %>%
  rbind(
    r.trend %>%
      select(region_id, score=trend) %>%
      mutate(dimension='trend')) %>%
  mutate(goal='AO')

  return(scores)  
```

**6. Update goal call in `goals.csv`**

`goals.csv` in the `conf` folder provides input information for `functions.r`, particularly about function calls. These are indicated by two columns: *preindex_function* (functions for all goals that do not have sub-goals, and functions for all sub-goals) and *postindex_function* (functions for goals with sub-goals).

In the `preindex_fuction`, you could specify variables such as _status_year_ and _trend_year_, which you can call in your goal function. Note that it is not necessary to specify those variables. If you do not use them in your function as in the CS example, you could delete those variables in `preindex_function`.

> Changing goal weights will be done here by editing the value in the *weight* column. Weights do not need to be 0-1 or add up to 10; weights will be scaled as a proportion of the number of goals assessed. The ten goals are weighted equally by default.

![Check the information in `goals.csv`. It provides input information for `functions.R`. ](https://docs.google.com/drawings/d/17BgYSw2sHbZvHNjUqBlTG-kCOAAn7o6a65O37s0S_es/pub?w=1052&h=719)

![A screenshot of `goals.csv`, used to modify goal model](https://docs.google.com/drawings/d/1o2wtJ9KCPDyGPH9Y4unmALG6BlxX9lmJ_PakDDiQrLo/pub?w=700&h=524)
