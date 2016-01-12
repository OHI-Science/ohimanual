### Discovering Data and Developing Models for Species Goals
#### Comparing **Biodiversity, Species** and **Iconic Species**

> In the Global Assessments, the **Species** sub-goal for **Biodiversity** and the **Iconic Species** sub-goal for **Lasting Places** make use of related data sources.

*Ideal Approach*

Ideally, you would find data for all species present in your region including information on their habitat ranges along with scientific studies that speak to the health of their populations. You would also ideally have a list of species that are valued as iconic by coastal communities as a subset of the list of species that are present in your area. Since different species are be iconic to different groups, defining which species are iconic can be challenging when it's a cultural question. You might have to find information from experts or local customs and tradition.

#### Where to start on species goals?

You should start by trying to **find spatial information for species that occur in your area and determine whether or not they have been scientifically assessed and given a conservation status**. For the **Biodiversity** goal, it is important to note that you can only use species for which there are both spatial data and an assessment. The International Union for the Conservation of Nature (IUCN) provides global species assessments that indicate the conservation status of species. These range from species of Least Concern to Critically Endangered to Extinct. You can turn values like as these into numbers and use them as weighting factors in your calculations. You should use unbiased scientific data sources where possible. [AquaMaps](http://aquamaps.org/) offers data for species ranges that have also been used in the Global Assessments. However, good marine species data are lacking at global scale and so wherever there are [spatial data from IUCN](http://www.iucnredlist.org/technical-documents/spatial-data), the Global Assessments prefer it over AquaMaps. For regional assessments, local studies of marine species status and local datasets are best here. The spatial information can be a range map with simple presence or absence information, or it can have more detailed data. You can complement the species list search with a scientific literature search to see if anyone has scored the species status in a way that you can use.

>For example, the OHI Antarctic Seas Assessment (2014) assessed thirty-five iconic species. These included bowhead, minke, fin, gray, and humpback whales, and polar bears. Walruses were not included in the High Seas Assessment because they were determined to be data-deficient by the IUCN.

Once you have the full list of assessed species, you need to determine a subset for the **Iconic Species** sub-goal of **Sense of Place**. You may have to consider a few approaches. For instance, are there known "indicator species" in your area? Are there species that are culturally held as valuable? Do any species appear on the currency or postage stamps? In practice, **Iconic Species** are usually a subset of the broader list of species in an area, and so you should be able to find **Iconic Species** after having found assessed species data for the **Species** sub-goal of the **Biodiversity** goal first.

Alternatively, you can figure out which iconic species are present, and then use another kind of assessment approach to see if the populations are healthy, which could be indicated, for instance, by the stability of their populations.

> Local experts are often consulted to determine what **Iconic Species** are in an area. In the Fiji Assessment (2014), experts identified thirty-three species. In the U.S. West Coast study (2014), local experts identified seventeen species.

The choice of inclusion of iconic species in your list can be subjective. You could also come up with specific inclusion criteria, for instance, that would filter a list of species or filter a subset of the gathered data for **Biodiversity**, and then you could use this new list in the **Sense of Place** goal. This would be a more rigorous approach because then it could be documented and you could replicate the study in future assessments.

> You might find better local information on species and their health,

#### Defining spatial regions and map considerations

Once you have gathered the data, the treatment of it will matter for the model and goal score calculation. Do you know how the data were collected? Do you have information on sampling effort? If you don't know, you may not be sure whether changes in condition are due to monitoring efforts or biodiversity change, and you therefore may want to consider the uncertainty of your model.

In any case, the original logic of the **Species** sub-goal of the **Biodiversity** goal is to represent the species present relative to the proportion of their range within a given region. The goal is to summarize extinction risk for an area across assessed species, and assign it appropriately so that the loss of species scores poorly. You should consider whether the impacts to local species status are linear or non-linear. Will drawing borders affect how your scores are assigned?

When considering how to change the model, you should think about the outcome of the score on your decisions. For instance, will weighting a "Critically Endangered" species higher on the scale result in the inclusion or exclusion of more rare species? Will the way you aggregate spatial data to summarize extinction risk for your area take into account the influence of species with smaller ranges size, or will that information be lost in the averaging process? An inherent disadvantage for conservation may occur when rare species get rarer in the future, and will therefore have a relatively small influence on the score while common species drive the results.

> Range size has an impact on score results. For example, if you use the current model, none of the cone snail species listed below will have a big impact on the **Species** sub-goal score because to their small range size that covers one cell of map area. However,  the 0.8 score for *Conus roeckeli* shows that it is a rare species as assessed by the IUCN. On the other hand, the coral *Acropora palmata* is also rare and yet covers a large range.

Scientific name | IUCN Category | Trend | Map Cells
---------------|-----------------------------|-------------------|----|
*Conus salreiensis* | Critically Endangered |  Decreasing | 1
*Conus trochulus* |  Near Threatened |  Unknown | 1
*Conus roeckeli* | Least Concern | Unknown | 1
*Acropora palmata* | Critically Endangered | Stable | 1158

You should also think about the reference point for scores that signal poor **Biodiversity** status. You can use the same threshold as the Global Assessments which say that places with extinction risk scores greater than seventy-five percent will get scores of zero. This is an estimation based on the literature of mass extinctions (e.g., Barnosky *et al*., 2011) and could be applied across scales. You don’t need all species extinct for there to be a zero, so you will have to choose how to rescale it, and whether the risk effects are linear or nonlinear.

#### Examples of the Approaches

*Species sub-goal of Biodiversity goal*

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
---------------|------------------------------------------------|-----------------------------|-------------------|
**Global 2012** | The status of assessed species was calculated as the area- and threat status-weighted average of the number of threatened species within each 0.5-degree global grid cell. Species distribution and threat category data came from the IUCN Global Marine Species Assessment.  | The reference point was to have all species at a risk status of Least Concern. We scaled the lower end of the biodiversity goal to be 0 when 75% species are extinct. | There were no measures of integrity measures included. The species chosen represents a partial sample of overall species diversity.
**Global 2013** | The goal model was the same as Global 2012. There were data updates available for 15 out of 6,080 species. | The reference point was the same as Global 2012. | Updates were available for data used for this sub-goal.
**Brazil (2014)** | The status of 504 assessed species was calculated as the threat status-weighted average of species occurring in the Brazilian EEZ. The sub-goal was calculated at the national level, giving equal weight to all species occurring in Brazilian waters. Threat weights were assigned based on the IUCN threat categories status of each species. | The reference point was the same was Global 2012. | This study substituted global assessment data for regional data whenever available. This study did not weight by area of occurrence as in Global 2012 because distribution maps were not available for all species.
**U.S. West Coast (2014)** | The model description and reference point were the same as Global 2012, with regional data available for threat categories. | The same reference point was used as the Global model | This followed the Global model, but used local data. This study did not weigh by area.

*Iconic Species sub-goal of **Special Places**

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
---------------|------------------------------------------------|-----------------------------|-------------------|
**Global 2012** | The status was the average extinction risk of iconic species, calculated as the weighted sum of the number of species in each threat category. An increasing weight was assigned by level of extinction risk of the threat category. A list of region-specific iconic species was combined with a list of globally-recognized iconic species from the World Wildlife Fund’s global and regional lists for Priority Species and Flagship Species. | The reference point is to have the risk status as Least Concern. | The lists used were the only source that included cultural reasons for listing iconic species but they only cover a few regions and by no means capture the rich diversity of species that are iconic for local regions.
**Global 2013** | The method was the same as Global 2012. | The reference point was the same as Global 2012. | The approach was the same as Global 2012.
**Brazil (2014)** | The method was the same as Global 2012. | The reference point was the same as Global 2012. | The approach was the same as Global 2012.
**U.S. West Coast (2014)** | This study replaced the global IUCN risk assessments with regionally-specific species assessments provided by NatureServe. | The reference point was the same as Global 2012. | Same as Global 2012, with regional data for the threat categories.
**China (2015)** |Status model is similar to global assessments. However, average extinction risk of all assessed species was only calculated as the weighted sum of the number of species in each threat category, since habitat area per species is not obtainable. |The reference point is to have the risk status of all iconic species at lowest risk of extinction.|
