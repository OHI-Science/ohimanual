# Requesting your repository

Using the OHI Toolbox and Github Repositories for your assessment is divided into two steps. When you decide to conduct an OHI+ assessment, and even before you have defined your regions, we can immediately provide you with a Starter Github repository (_Starter Repo_) to get you familiar with the Github/Rstudio workflow, and to help you through the data exploration and region-defining stage. Once you have defined your regions, we will provide you with a Full repository (_Full Repo_) with pre-populated data layers extracted from the most recent Global OHI assessment.

## The Starter Repo

_**Why a Starter Repo?**_

The purpose of this repository is to help you learn how to use Github for data exploration and to make sure they fit within the spatial boundaries you are considering. We encourage you to code this exploration in `R`.

_Learn Github/Rstudio and collaborate with your team_

OHI promotes open science where detailed information about how the assessment is conducted is documented and shared. Providing public access to your input data, computational code, as well as rationales of each step of the assessment is becoming the standard for scientific inquiry, so every effort should be made to achieve those aims. Github/Rstudio is a powerful combination that organizes and processes information for this purpose and greatly increases the efficiency of conducting repeated and reproducible assessments, and is the backbone of the OHI Toolbox.

The Starter Repo will get you familiar with this system, and help you develop an efficient workflow to script data exploration and document your decision-making process at once. Furthermore, the scripting language can be directly rendered as a webpage for internal and public communication!

_Prepare and Organize Data_

**Data preparation (formatting, exploring, plotting data) takes the largest amount of time in all OHI assessments.** An OHI assessment deploys from dozens to more than a hundred data layers coming from as many public data sources. Very rarely raw data can be used as is, and requires a significant amount of cleaning and formatting before they become usable OHI data layers. During that exploration process, you'll likely need input from colleagues or outside experts and go through rounds of revisions. Forget about dozens of excel sheets and long email chains, Github's version control system will help you save each version automatically and document conversations and decisions alongside your R code.

Do not fear that data exploration will slow down your progress with all the savings

_Finalize spatial boundaries_

An OHI assessment is conducted within _clearly defined boundaries_. Our team populates data layers in your Full Repository based on your final spatial boundaries (ie. disaggregating data from global to your local level). It will save us a significant amount of time and efforts to make each Full Repo only once.

Even though [jurisdictional boundaries are optimal](http://ohi-science.org/manual/#strategically-define-spatial-boundaries-balance-information-availability-and-decision-making-scales), where exactly to draw the boundaries often is limited by data. For example, you may wish to assess ocean health for each of the ten states along the coast. However, some measurements are taken on the national level and it is difficult to disaggregate data to the state level, or some measurements might only make sense at the watershed level across a few states. Exploring the available data can help you make the final decision on spatial boundaries. In your Starter Repo, example data prep scripts in .Rmd and .r with data are included as a quick guide.

 _**What’s in it?**_

There is a `Prep` folder, which includes:

- a folder for _each goal or subgoal_
- one folder for _pressures_, where you could create a sub-folder for each layer to be prepared
- one folder for _resilience_, where you could create a sub-folder for each layer to be prepared
- README file
- _Example Data Prep Tutorials_ with data and scripts

Within each folder, it's up to you how to populate and organize the contents. We recommend that within each folder you save the raw data files, and create a data prep script (eg. `CW_data_prep.Rmd` for Clean Water) to explore data and document decision making.

 <!-- _**What do you do with it?**_

Bring in raw data, explore, document decision making, plot. See tutorial on data_prep (link).  

We recommend documentation in Rmarkdown, but you can also do it in R. -->


_**How to request one?**_

To request a repo, provide the name of your assessment. Our convention is a **3-letter code** (e.g. gye, chn).

(**@JULIE: and... set up github account and send us your account info?**)

## The Full Repo

Skip the Why Full Repo?

_**What's in it?**_

_MOVE FILE_SYSTEM_ORGANIZATION here..._

_But is it too long before people can get to the "How to request one section"?_

**_How to request one?_**

To request a Full Repository, you will need to provide

- [shape files of your finalized spatial boundaries](http://ohi-science.org/manual/#request-a-full-repository-with-offshore-boundaries),
-  the name of your scenario, which is to the unit of your assessment and the year (eg. province2016, region2015)

We can then provide you with a full repository with the regions defined and pre-populated data layers extracted from the most recent global assessment according to your regional boundaries.
