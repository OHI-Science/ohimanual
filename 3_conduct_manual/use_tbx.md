# Using the Toolbox

>In this section, you will learn about the most common modifications made to repositories. You will be given examples to follow to help with your own assessment. The most common modifications are changing or creating data layers, changing or removing goals models, and changing the pressures and resilience matrices. All the work will be contained within your `subcountry201x` folder.

We recommend that you work on one goal at a time as data becomes available and goal model created. For each goal and sub-goal, there are multiple dimensions of the OHI scores: _status, trend, pressures, resilience, likely future state,_ and the _goal score_. Goal and sub-goal index scores are then combined to calculate the _overall OHI index score_. The general workflow is to:

1. check that the functions within pre-loaded, template scenario folder work well by running `subcountry201x/calculate_scores.R`
2. prepare and register data for a goal
3. modify goal models with R to calcualte _status_ and _trend_ (in functions.R and pre_scores.R)
4. update pressures and resilience matrix and data layers
5. calculate the other dimensions (pressures, resilience, likely future state, goal score, and overall OHI index score) with ohicore

Step 2-5 can occur simultaneously. Below are instructions for each step. 

## Check pre-loaded, template data and models

As a starting point, your tailored repository is populated with data and functions based on global 2014 OHI study, which you can then modify directly. To check that your repository is set up properly, you can check by running `subcountry2014/calculate_scores.R`. It will produce scores for each dimension in `subcountry2014/scores.csv`. When it's all set up, you can begin adding your own data and goal models. 

