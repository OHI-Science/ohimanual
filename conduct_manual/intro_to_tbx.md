# The Ocean Health Index Toolbox

>**Section Summary:**

>In this section, you will learn the basics of how to use the OHI Toolbox to conduct your assessment. You will be introduced to files the Toolbox requires, how you will modify them, and how they interact to calculate the final output scores.

**The OHI Toolbox** is an ecosystem of small files and scripts that are the tools needed to calculate OHI scores. These files and scripts are stored in two '*repositories*': folders that are synchronized with collaborators. The first folder is your **assessment repository** that has a three-letter code, such as *esp* for Spain or *ecu* for Ecuador. You will edit this repository with your data, goal models, and updated pressures and resilience matrix tables. The second repository is called **`ohicore`** and it contains core functions for combining your data and goal models to calculate OHI scores. You will not edit `ohicore`, but you are able to explore it to understand the calculations.

![Toolbox = your repo + ohicore](https://docs.google.com/drawings/d/18pdPUxpT5u52Qlt-o3kM5aPTipFOF2xAgktyDVRPkT4/pub?w=960&h=720)

Your **assessment repository** contains data input layers, configuration files, and scripts. These files are organized in the same way within a *scenario folder* called `subcountry2014`, with data layers, goal model equations, and configuration files from the global 2014 assessment. Files within the scenario folder are comma-separated-value (*.csv*) files and scripts written in the programming language *R*.

**Each OHI+ assessment repository has inputs and goal models based on the 2014 global assessment**. This means that each assessment repository isolates the information used for each region in the global assessment and stores it in a separate OHI+ assessment repository. Therefore, it can be an easy way to explore the inputs used in the global assessment for one specific place. When conducting an assessment, you will replace and modify as much of this information with local information that better represents your study area, since information reported at a national scale cannot always be attributed to its subcountry regions, as has been done in most cases in each OHI+ assessment repository. See more details in the discussion of the **layers folder**.

<!---figure showing a region from the global assessment becoming a study area in a OHI+ assessment, with regions of its own. Maybe show how some data can be allocated to all OHI+ regions, and some must be downweighted?--->

The Toolbox is open-source and can be downloaded and installed for free. You are able to navigate through these files both at `www.github.com/OHI-Science` and on your own computer once you have cloned the repository to your computer. GitHub is an online platform used by the OHI that facilitates collaboration and archives past versions of all files with the author indicated. It can be accessed remotely by all members of your team and enables team members to synchronize their work remotely. Because all versions are saved, you can return to previous work and also compare different points in history to track how changes you make affect the output scores. Instruction on how to access your assessment repository is in the `Installing the Toolbox` section.

The following sections will describe the files included in the Toolbox. You will then learn what is required for  data layers for your assessment and how to change goal models.
