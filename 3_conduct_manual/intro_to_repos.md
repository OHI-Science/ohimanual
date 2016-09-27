# Requesting your repository

You can start using you tailored repository to organize data and plan even before you have finalized your regions' spatial boundaries. When you begin an OHI+ assessment, we can immediately provide you with a Starter Github repository (**_Starter Repo_**) to get you familiar with the Github/RStudio workflow, and to help you through the data exploration and region-defining stage. Once you have finalized the spatial boundaries for your regions, we will provide you with a Full Repository (**_Full Repo_**) with pre-populated data layers extracted from the most recent Global OHI assessment.


## The Starter Repo

_**Why a Starter Repo?**_

The purpose of this repository is to help you learn the Github/RStudio workflow, and to organize and explore available data to help finalize the spatial boundaries you are considering. We encourage you to code this exploration in `R`.


_Learn Github/RStudio and collaborate with your team_

OHI promotes open science where detailed information about how the assessment is conducted is documented and shared. Providing public access to your input data, computational code, as well as rationales of each step of the assessment is becoming the standard for scientific inquiry, so every effort should be made to achieve those aims. Github/RStudio is a powerful combination that organizes and processes information for this purpose and greatly increases the efficiency of conducting repeated and reproducible assessments, and is the backbone of the OHI Toolbox.

The Starter Repo will get you familiar with this system, and help you develop an efficient workflow to script data exploration and document your decision-making process at once. Furthermore, the scripting language can be directly rendered as webpages, PDFs, presentations, or Word documents for internal and public communication!

_Prepare and Organize Data_

**Data preparation (formatting, exploring, plotting data) takes the largest amount of time in all OHI assessments.** An OHI assessment deploys from dozens to more than a hundred data layers coming from as many public data sources. Very rarely can raw data be used in the format you receive them; they requires a significant amount of cleaning and formatting before they become usable OHI data layers. During that exploration process, you'll likely need input from colleagues or outside experts and go through rounds of revisions. Instead of trying to track changes between dozens of data files and long email chains yourself, use Github's version control system that saves each version automatically. You can document conversations and decisions alongside your R code.

Scripted data exploration is useful whether or not the data are included in the final assessment. If you do include the data, you have already begun preparing them for the Toolbox. And if you don't use the data, it can be very important to be able to communicate why not.

_Finalize spatial boundaries_

An OHI assessment is conducted within _clearly defined boundaries_. The OHI team populates data layers in your Full Repository based on your final spatial boundaries (i.e.. data from global to your local level). 

Even though [jurisdictional boundaries are optimal](http://ohi-science.org/manual/#strategically-define-spatial-boundaries-balance-information-availability-and-decision-making-scales), where exactly to draw the boundaries often is limited by data. Raw data sources often do not readily suit your desired geopolitical boundaries. See [Defining Spatial Boundaries]((http://ohi-science.org/manual/#defining-spatial-boundaries) for more detail. Exploring the available data can help you make the final decision on spatial boundaries.

In your Starter Repo, example data prep scripts in .Rmd and .r with data are included as a quick guide.

 _**What’s in the Starter Repo?**_

The Starter Repo simply contains a `prep` folder, which includes:

- a folder for _each goal or subgoal_
- one folder for _pressures_, where you could create a sub-folder for each layer to be prepared
- one folder for _resilience_, where you could create a sub-folder for each layer to be prepared
- a README file
<!--- - _Example Data Prep Tutorials_ with data and scripts --->

Within each folder, it's up to you how to populate and organize the contents. We recommend that within each folder you save the raw data files, and create a data prep script (eg. `CW_data_prep.R` or `CW_data_prep.Rmd` for Clean Water) to explore data and document decision making.

 <!-- _**What do you do with it?**_

Bring in raw data, explore, document decision making, plot. See tutorial on data_prep (link).  

We recommend documentation in Rmarkdown, but you can also do it in R. -->


_**How to request a Starter Repo**_

You can create a GitHub account at http://github.com with a username and password. To request a repo, email info@ohi-science.org with:

1. your Github username
2. the name of your assessment area (eg. the Gulf of Guayaquil)
3. a shortened name for the repository (our convention is a **3-letter code**). For example, the Gulf of Guayaquil assessment had `gye` as their code.


## The Full Repo

_**Why Full Repo?**_

The Full Repo is a repository pre-populated with _R scripts_ and _data layers_ from the most recent global OHI assessment, structured in the same way as the global OHI assessments and all other OHI+ assessments. This way you don't need to start your assessment from scratch. You can explore a working repository and build from there, and you can see what other assessments have done because you can navigate within the same file structure and naming. For example, instead of writing scripts for goal models from the beginning, you can modify existing scripts to suit your own needs. Data layers from the global assessments are available to use, however, we do recommend that you replace as many global data with higher-resolution local data as possible. 

_**What's in the Full Repo?**_

The Full Repo contains all the files you need to complete your OHI+ assessment, calculate scores, and produce figures and reports:  

- _data layers_ are organized into one folder (`layers`), with a registry that lists attributes about them and what they are for (`layers.csv`)  <!--- to add: `layers_meta.csv` --->
- _goal models_ are organized in one file (`functions.r`) in configure (`conf`) folder
- _pressures_ and _resilience_ matrices that indicate which pressures/resilience apply to which goal
- Scripts that use `ohicore`, an `R` package built by the OHI team to calculate OHI scores, create visuals and other core operations of the Ocean Health Index.

You can see a full description of each file and script and how they are organized in the [File System](http://ohi-science.org/manual/#file-system-organization) section.

**_How to request a Full Repo_**

To request a Full Repository, you will need to email info@ohi-science.org with:

1. [shape files of your finalized spatial boundaries](http://ohi-science.org/manual/#request-a-full-repository-with-offshore-boundaries)
2.  the name of your scenario, which is to the unit of your assessment and the year (e.g. province2016, region2015)

We can then provide you with a Full Repo with the regions defined and pre-populated data layers extracted from the most recent global assessment according to your regional boundaries.
