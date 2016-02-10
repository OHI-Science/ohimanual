# The Ocean Health Index Toolbox

**The OHI Toolbox** is an ecosystem of small files and scripts that are the tools needed to calculate OHI scores. These files and scripts are stored in two Github '*repositories*': folders that are synchronized with collaborators. The first repository is your **tailored repository** identified by a three-letter code, such as *esp* for Spain or *ecu* for Ecuador. You will edit this repository with your data, goal models, and updated pressures and resilience matrix tables. The second repository is called **ohicore** and it contains core functions for combining your data and goal models to calculate OHI scores. You will not edit `ohicore`, but you are able to explore it to understand the calculations.

![Toolbox = your repo + ohicore](https://docs.google.com/drawings/d/1sXHn8zi_-XZkPDOGO1RrmhVGZcOEAHEpTfDGXYmUut8/pub?w=768&h=192)

## Obtaining a Tailored Repository 

**Your repository will be created specifically for your assessment, which requires that the spatial boundaries of your assessment area and regions are finalized for your repository to be created.** Once your spatial boundaries are finalized, please prepare spatial files following [prepared shape files](http://ohi-science.org/manual/#defining-spatial-boundaries) and request your repository by emailing info@ohi-science.org.

We recommend that you start using the repository _after_ you have planned all your goal models and identified good data to avoid preparing information or models that are ultimately excluded from your assessment. 

## What's in your Tailored Repository

Your **tailored assessment repository** contains data input layers, configuration files, and scripts. These files are organized in the same way within a *scenario folder* called `subcountry2014`, with data layers, goal model equations, and configuration files from the global 2014 assessment. Files within the scenario folder are comma-separated-value (*.csv*) files and scripts written in the programming language *R*.

**Each OHI+ assessment repository has inputs and goal models based on the 2014 global assessment**. This means that each assessment repository isolates the information used for each region in the global assessment and stores it in a separate OHI+ assessment repository. Therefore, it can be an easy way to explore the inputs used in the global assessment for one specific place. When conducting an assessment, you will replace and modify as much of this information with local information that better represents your study area, since information reported at a national scale cannot always be attributed to its subcountry regions, as has been done in most cases in each OHI+ assessment repository. See more details in the discussion of the **layers folder**.
