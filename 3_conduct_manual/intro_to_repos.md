# Requesting your repositories

 Using the OHI Toolbox for your assessment is divided into two steps. When you decide to conduct an OHI+ assessment, and even before you have defined your regions, we can immediately provide you with a Starter Github repository (_Starter Repo_) to get you familiar with the Github/RStudio workflow, and to help you through the data exploration and region-defining stage.

Once you have finalized your regions and provide us with appropriate files (see next section), we will upgrade you with a Full repository (_Full Repo_) with pre-populated data layers extracted from the most recent [Global OHI assessment](http://ohi-science.org/ohi-global).

## The Starter Repo

### Why a Starter Repo?

The purpose of this repository is to help you learn the Github/RStudio workflow, and to organize and explore available data to help finalize the spatial boundaries you are considering. We highly encourage you to code this exploration in `R`.

**_Learn Github/RStudio and collaborate with your team_**

OHI promotes open science where detailed information about how the assessment is conducted is documented and shared. Providing public access to your input data, computational code, as well as rationales of each step of the assessment is becoming the standard for scientific inquiry, so every effort should be made to achieve those aims. Github/RStudio is a powerful combination that organizes and processes information for this purpose and greatly increases the efficiency of conducting repeated and reproducible assessments, and is the backbone of the OHI Toolbox.

The Starter Repo will get you familiar with this system, and help you develop an efficient workflow to script data exploration and document your decision-making process at once. Furthermore, the scripting language can be directly rendered as webpages, PDFs, presentations, or Word documents for internal and public communication!

**_Prepare and Organize Data_**

**Data preparation (formatting, exploring, plotting data) takes the largest amount of time in all OHI assessments.** An OHI assessment deploys from dozens to more than a hundred data layers coming from as many public data sources. Very rarely can raw data be used in the format you receive them; they require a significant amount of cleaning and formatting before they become usable OHI data layers. During that exploration process, you'll likely need input from colleagues or outside experts and go through rounds of revisions. Instead of trying to track changes between dozens of data files and long email chains yourself, use Github's version control system that saves each version automatically. You can document conversations and decisions alongside your R code.

> Scripted data exploration (e.g. done in `R`) is useful whether you decide to use the data in your assessment or not. If you use the data, you have already begun preparing it for the Toolbox. And if you don't use the data, it can be very important to be able to communicate why.

<!---
@ningningj TODO:
**_Example data prep scripts in .Rmd and .r with data are included as a quick guide._**
--->

**_Finalize spatial boundaries_**

**OHI scores are calculated for regions with _clearly defined boundaries_**, and you will use your Starter Repo to finalize them. Spatial boundaries are often set based on jurisdictions (i.e. within which boundaries would OHI scores be of interest) and data availability (i.e. within which boundaries are data reported) [See above section for more details](http://ohi-science.org/manual/#strategically-define-spatial-boundaries-balance-information-availability-and-decision-making-scales). The [Defining Spatial Boundaries section](http://ohi-science.org/manual/#defining-spatial-boundaries) provides instructions of what you need to consider and the files you need to provide to the OHI Team. Once you provide final files, the OHI Team will be able to create your Full Repo.

> You could also start **exploring goal models**, which will reduce the amount of work you will do when you receive the Full Repo for scores calculation.

### What’s in the Starter Repo?

The Starter Repo simply contains a `prep` folder, which includes folders to organize, document, and explore data for:

- _each goal or subgoal_
- _pressures_
- _resilience_  

<!---
JSL: until we have these done don't list:
- _Example Data Prep Tutorials_ with data and scripts
--->

Within each folder, it's up to you how to populate and organize the contents. We recommend that within each folder you save the raw data files if possible, and create a data preparation script (eg. `CW_data_prep.R` or `CW_data_prep.Rmd` for Clean Water) to explore data and document decision making.

### How to request a Starter Repo?

You can create a GitHub account at http://github.com with a username and password. To request a repo, email info @ohi-science.org with three things:

- your Github username
- the name of your assessment area (eg. the Gulf of Guayaquil)
- a shortened name for the repository (our convention is a **3-letter code**). For example, the Gulf of Guayaquil assessment had `gye` as their code.


## The Full Repo

### Why a Full Repo?

After you have explored your data and finalized spatial boundaries, the Full Repo offers the rest of the scripts and files you need to complete your OHI+ assessment.

**The Full Repo is a repository pre-populated with _R scripts_ and _data layers_ disaggregated from the most recent global OHI assessment, structured in the same way as the global OHI assessments.** This way you don't need to start your assessment from scratch; you can explore a working repository and build from there. For example, instead of writing scripts for goal models from the beginning, you can modify existing scripts to suit your own needs. Data layers disaggregated from the global assessments are available to use, however, we do recommend that you replace as many global data with higher-resolution local data as possible.

### What's in the Full Repo?

**The Full Repo contains all the files you need to calculate scores, and produce figures and reports:**  

- _data layers_ are organized into one folder (`layers`), with a registry that lists attributes about them and what they are for (`layers.csv`)  <!--- to add: `layers_meta.csv` --->
- _goal models_ are organized in one file (`functions.r`) in the configure (`conf`) folder
- _pressures_ and _resilience_ matrices that indicate which pressures/resilience apply to which goal, also in the configure (`conf`) folder
- scripts that use `ohicore`, an `R` package built by the OHI Team to calculate OHI scores, create visuals and other core operations.

You can see a full description of each file and script and how they are organized in the [File System](http://ohi-science.org/manual/#file-system-organization) section.

### How to request a Full Repo?

To request a Full Repository, you will need to email info @ohi-science.org with:

- [shape files of your finalized spatial boundaries](http://ohi-science.org/manual/#request-a-full-repository-with-offshore-boundaries)
- the name of your scenario, which is often the definition of your assessment region and the year (e.g. province2016, region2015)

We can then provide you with a Full Repo with the regions defined and pre-populated data layers extracted from the most recent global assessment according to your regional boundaries.
