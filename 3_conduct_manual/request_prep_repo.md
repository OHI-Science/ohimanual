# Requesting your repositories

Using the OHI Toolbox and Github Repostories for your assessment is divided into two steps. When you decide to conduct an OHI+ assessment and even before you have defined your regions, we can immediately provide you with a Starter Github repository (_Starter Repo_) to get your familiar with the Github/Rstudio workflow, and to help you through the data exploration and region-defining stage. Once you have defined your regions, we will provide you with a Full repository (_Full Repo_) with pre-populated data layers extracted from the Global OHI assessment.

## The Starter Repo

_Why Starter Repo? or Why not get a Full Repository directly?_

The purpose of this repository is to help you learn how to use github while exploring data and making sure they fit within the boundaries you want. A full repository requires clearly defined boundaries for your assessment. It's difficult to change the boundaries and re-populate a new full repository once it's made. It will save you a significant amount of time and efforts to only make a full repository only once. How to draw your spatial boundaries often depend on data (best practices....) and having a place to explore data will help you determine the boundaries.  In your repo, an example data prep script in .Rmd and .r with data is included as a guide.

Motivation: learn github, scripting data exploration, finalize regions (how many and spatial boundaries using ArcGIS)
What could we add to its README?

Even though [jurisdictional boundaries are optimal](http://ohi-science.org/manual/#strategically-define-spatial-boundaries-balance-information-availability-and-decision-making-scales), where exactly to draw the boundaries often is limited by data. For example, you might wish to assess ocean health for each of the ten states along the coast. However, data might not be available on the county level, or two counties might have joint efforts to collect certain data together and is difficult to separate them, or it might be difficult to disaggregate data from national to state level. Exploring the available data can help you make the final decision on spatial boundaries.

Do not fear that data exploration will slow down your progress. _Data preparation takes the largest chunk of time in all OHI assessments._ Cleaning the data, plotting, and eventually saving them as data layers is the critical first step.

 Add short description something that says: Whenever you start, you can request a prep repo that you can use to explore your data and make sure they fit with the boundaries you want. Now you can finalize your boundaries according to these criteria: XYZ (steal from best practices above). Then, we can provide the full repo templated to your spatial boundaries.

 Documentation of all aspects of an assessment process is paramount to ensuring transparency of the decisions made, reproducibility and interpretation of results, repeatability to facilitate and compare future assessments, and the ease of communication throughout the process.

 Detailed information about how the assessment is conducted will enhance its credibility and reproducibility. Decisions of why information was included and why models were developed in a certain manner are of great importance so that future assessments can incorporate the same logic and understanding of the system — or make improvements. Further, the type of workflow developed and software used to organize and process information will greatly affect the efficiency, transparency, and reproducibility of subsequent assessments. Providing public access to all such information, as well as input data and computational code is becoming the standard for scientific inquiry, so every effort should be made to achieve those aims.

 This means documenting and sharing not only the tools and methods used but also the knowledge gained through the process based on decisions made, what was decided against (e.g. why information was included or excluded, and how it was processed), challenges encountered, and recommendations for improvement. Frank documentation about the successes and shortcomings makes for greater scientific credibility, enables others to replicate what was done, and allows for the most appropriate interpretations of the results, as well as the highest potential for future improvement of assessment approaches, and ultimately, management towards ocean health. 

 _What’s in there?_

 - Prep folder: includes a folder for each goal or subgoal, one folder for pressures, and one for resilience.
 - README

 _What do you do with it?_

Bring in raw data, explore, document decision making, plot. See tutorial on data_prep (link).  

We recommend documentation in Rmarkdown, but you can also do it in R.


_How to request one?_

TO REQUEST A REPO, provide the name of your assessment (our convention is a 3-letter code, e.g. gye, chn).
How to request your Prep repo and brief description of why. TO REQUEST A REPO, provide the name of your assessment (our convention is a 3-letter code, e.g. gye, chn) you need it/learn github/organize data/learn to collobarate with github/script data prep/spatial boundaries. See section X for details on data exploration.



 How to request your full repo -- only once you’ve finalized your spatial boudaries. TO REQUEST A REPO, provide shapefiles (all of them-listed), and the name of your scenario, which is to the unit of your assessment and the year. Eg province2016, region2015).





## The Full Repo
When you finalize your spatial boundareis and provide shape files... we'll provide you with a full repository with the regions defined and pre-populated data layers extracted from the most recent global assessment according to your regional boundaries.

Add:
