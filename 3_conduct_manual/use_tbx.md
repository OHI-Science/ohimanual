## Getting started

>In the following sections, you will learn about the most common modifications made to repositories, including changing or creating data layers, changing or removing goals models, changing the pressures and resilience matrices, and removing goals or sub-goals. You will be given examples to follow to help with your own assessment. **All the work will be contained within your `regionYEAR` folder (eg. baltic2016).**

We recommend that you work on one goal at a time as data becomes available and goal model created. For each goal and sub-goal, there are multiple dimensions of the OHI scores: _status, trend, pressures, resilience, likely future state,_ and the _goal score_. Goal and sub-goal index scores are then combined to calculate the _overall OHI index score_. The general workflow is as follows:

1. install `ohicore`
2. check that the functions within pre-loaded, template scenario folder work well by running  `regionYEAR/configure_toolbox.R`
3. prepare and register data for a goal
4. modify goal models with R to calculate _status_ and _trend_ (in functions.R)
5. update pressures and resilience matrix and data layers
6. remove goal(s) if necessary
7. calculate the other dimensions (pressures, resilience, likely future state, goal score, and overall OHI index score) with ohicore

Step 3-6 can occur simultaneously.

### Install `ohicore`

`ohicore` is a R package containing all the essential functions you will use to calculate the final OHI scores, and you can call the functions contained in `ohicore` from your Full Repo.

To install, find the script `install_ohicore.r` in your scenario folder (ie. your _regionYEAR_ folder). Run the entire script, and now your Toolbox is all set up and ready to go!

_This only needs to be done once at the beginning of your assessment, and you do not need to rerun it again during an assessment._

> Although `ohicore` is a package you would not normally interact with, it can be useful to have the folder cloned to your computer for debugging, particularly with pressures and resilience calculations for goals that have components in the matrix. To do so, you will [clone](http://ohi-science.org/manual/#cloning-a-repository-to-your-local-computer) the repository (https://github.com/OHI-Science/ohicore) as you would your assessment repository.

### Check pre-loaded, template data and models

As a starting point, your Full Repo is populated with data and functions from the most recent global OHI study, which you can then modify directly. To check that your repository is set up properly and the pre-loaded scripts and data are functional, you can run `regionYEAR/configure_toolbox.R`. It will produce scores for each dimension in `regionYEAR/scores.csv`. When it's all set up, you can begin adding your own data and goal models.

>`configure_toolbox.R` should be run each time you change or add a new data layer to make sure it is properly formatted and registered.*

**Now you have set up your Full Repo, the following "How To" sections will show you how to finish OHI score calculations in the Full Repo, including how to save data layers, modify goal models, pressures and resilience, etc.**
