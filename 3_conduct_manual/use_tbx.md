# Using the Toolbox

>In this section, you will learn about the most common modifications made to repositories. You will be given examples to follow to help with your own assessment. The most common modifications are changing or creating data layers, changing or removing goals models, and changing the pressures and resilience matrices.

We recommend that you work on one goal at a time as data becomes available and goal model created. For each goal and sub-goal, there are multiple dimensions of the OHI scores: _status, trend, pressures, resilience, likely future state,_ and the _goal score_. Goal and sub-goal index scores are then combined to calculate the _overall OHI index score_. The general workflow is to:

* check that the functions within pre-loaded, template scenario folder work well by running `subcountry2014/calculate_scores.R`
* prepare and register data for a goal
* modify goal models with R to calcualte _status_ and _trend_ (in functions.R and pre_scores.R)
* update pressures and resilience matrix and data layers
* calculate the other dimensions (pressures, resilience, likely future state, goal score, and overall OHI index score) with ohicore

Below are instructions for each step. 

## Check pre-loaded, template data and models

As a starting point, your tailored repository is populated with data and functions based on global 2014 OHI study, which you can then modify directly. To check that your repository is set up properly, you can check by running `subcountry2014/calculate_scores.R`. It will produce scores for each dimension in `subcountry2014/scores.csv`. When it's all set up, you can begin adding your own data and goal models. 

## Data layer preparation 

It is recommended that you construct a useful workflow with your team to incorporate local information into the Toolbox. Adding data to the Toolbox will require working with GitHub and the [Toolbox file system structure](http://ohi-science.org/manual/#file-system-organization). The overall process involves preparing the layers (which can be done in the `prep` folder), saving them in the `layers` folder, and registering the layers. The layer preparation process can occur in tandem with the model modification process.

Input information must be [properly formatted](http://ohi-science.org/manual/#formatting-data-for-the-toolbox) into **layers**. Layers for the Toolbox can be prepared with any software that handles *.csv* files. It is recommended that layer preparation occurs within your repository's `prep` folder as much as possible, as it will also be archived by GitHub. 

![Diagram of OHI Toolbox data preparation workflow. You should start by prepping the files, loading them into the `layers` folder when they're ready for the Toolbox, and then registering them in `layers.csv`](https://docs.google.com/drawings/d/1-WB84qsupe4yeqKzeBnOSm9iIW-G7N3EYW0VqqGXORs/pub?w=1116&h=641)
