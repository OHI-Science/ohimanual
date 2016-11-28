# Modifying Pressures and Resilience

**Pressures** and **Resilience** are two of the four dimensions used to evaluate each goal or sub-goal, along with **Status** and **Trend**.

It is important to identify the pressures that affect the ocean and coastal systems in your study area, and to search for additional pressures not included the global assessments. Once you have identified pressures within your study area, you should identify what resilience measures could counteract or nullify those pressures. Alternatively, you can start with a list of known resiliences, such as the relevant environmental laws in your country, and them map them onto pressure layers.

> TIP: The same considerations and requirements about data presented in the "**Gathering Appropriate Data**" section also apply to pressures and resilience. Every measure you include for pressures and resilience requires data for each region in your assessment.

Ideally, every stressor with an identified strong impact should have a corresponding resilience measure. The rationale is that as resiliences in the study area increase (for instance, by improving environmental regulations), they would balance out and eventually neutralize the pressures. This would lead to an increase in the overall goal or sub-goal score. By including regulatory responses in your assessment, you ensure that the actions taken in your country are relevant to ocean health.

In practice, however, the pressures and resilience measures you include in your assessment will be highly determined by data availability. It is best to _first consider what pressures are acting in your study area and then determine if data are available to measure them_. You should also decide if the pressures data included in the global assessment are relevant for your assessment and determine if local data better capture pressures for all the regions in your study area. When considering resilience measures, look for regulations or indicators that could be encompassed in one of the pressures categories.

## Pressures

### How to identify and quantify pressures

The Toolbox calculates pressures in five **ecological pressure categories** (e.g., pollution, habitat destruction, fishing pressure, species pollution, and climate change) and one **social pressure category** (eg. Weakness of Governance Indicator). Under each category, you could have multiple pressure data layers. For example, the "pollution" category could include pathogen, nutrients, and chemicals pollution.

 >The reason behind the ecological categories is to avoid hidden weighting (e.g., overrepresentation of pressures for which there is more data). For example, in the global assessment there were many pollution datasets available, but few distinct habitat destruction datasets. If we simply averaged the scores of each individual stressor, pollution scores would have a greater influence on the results (stronger weight) due to the relative higher availability of measurements of various pollutants. Instead, aggregating by pressure categories ensures that different stressor types influence the score based on ranks. Nonetheless, the scores are combined in a cumulative way within each category to account for the fact that multiple stressors within a category have a cumulative impact that is greater than if only one of the stressors were present. The resulting scores for the five ecological categories are averaged to produce a single ecological pressures score. This score is then averaged with the social pressures score to produce the final overall pressure score.

There are two types of pressures data you need to provide for the toolbox: _local data layers for each pressure_ and _a pressure matrix_ .

#### Pressures data layers

The pressures you will include in your assessment will depend on what is important in your study area and what data are available. If local pressures data are not available, you may default to using data from the global assessment, but this means in most cases that you will not have different information for each region. You will determine the weight ranks required in the pressures matrix only after you have identified the data you will include.

The following steps outline the process of how to identify pressures in your assessment. The steps are iterative; return to previous steps to ensure you capture all important pressures in your study area:

1. Begin by exploring pressures important to your study area. What are big stressors acting along your coastlines?
2. Are data available to measure these stressors? If not, are other indirect measures or proxies available to represent these stressors?
3. Evaluate the pressures included in the global assessment. For example, if there is no mariculture in your study area, you could remove pressures data layers that only affect this goal (i.e. genetic escapes).
4. Are all of them relevant? Are there local data that can be substituted in the place of global data?
5. Determine the pressure category for any additional stressors in your study area, and add it to the pressures matrix.
6. When all stressors are included in the pressures matrix, determine which goals it affects. Then, determine the weight rankings of all stressors for each goal. Use literature and expert judgement to determine this.
7. Prepare each pressure data layer as described in this manual only after steps 1-6 are completed. In addition to the proper formatting for the Toolbox, _pressures data must be rescaled (normalized) on a unitless scale from 0 - 1, where 0 is no stressor at all and 1 is the highest possible value for the stressor, or the value at which the goal achievement is completely impaired. You will have to determine how to rescale the data, whether it is based on the highest value in the data range or other methods._

##### Including pressures from global assessments

If you are not able to find local data for stressors, you may use the data from the global assessments for your country. For most of the stressors, this means that there will not be differences between the regions within your study area. However, several stressors included in the global assessment are based on spatial data at high resolution from previous work by Halpern *et al.* (2008) in *Science:* [A global map of human impact on marine ecosystems](http://www.sciencemag.org/content/319/5865/948.abstract). These data are available at a resolution of 1 km^2 for the entire global ocean, and can be extracted for the regions in your study area. The stressors available at 1km^2 resolution are indicated below with ** \*\* **.

<span style="font-size:0.8em">

**Table of pressures layers and descriptions**

|layer            |name                                                                                              |
|:----------------|:-------------------------------------------------------------------------------------------------|
|cc_acid**        |Ocean acidification                                                                               |
|cc_slr**         |Sea level rise                                                                                    |
|cc_sst**         |Sea surface temperature (SST) anomalies                                                           |
|cc_uv**          |UV radiation                                                                                      |
|fp_art_hb        |High bycatch caused by artisanal fishing                                                          |
|fp_art_lb        |Low bycatch caused by artisanal fishing                                                           |
|fp_com_hb        |High bycatch caused by commercial fishing                                                         |
|fp_com_lb        |Low bycatch caused by commercial fishing                                                          |
|fp_targetharvest |Targeted harvest of cetaceans and sea turtles                                                     |
|hd_intertidal    |Coastal population density as a proxy for intertidal habitat destruction                          |
|hd_subtidal_hb   |High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction  |
|hd_subtidal_sb   |High bycatch commercial fishing practices as a proxy for subtidal soft bottom habitat destruction |
|po_chemicals**   |Ocean-based chemical pollution                                                                    |
|po_chemicals_3nm** |Land-based chemical pollution                                                                     |
|po_nutrients**   |Ocean nutrient pollution                                                                          |
|po_nutrients_3nm** |Coastal nutrient pollution                                                                        |
|po_pathogens     |Access to improved sanitation as a proxy for pathogen pollution                                   |
|po_trash         |Trash pollution                                                                                   |
|sp_alien         |Alien species                                                                                     |
|sp_genetic       |Introduced species as a proxy for genetic escapes                                                 |
|ss_wgi           |Weakness of governance indicated with the WGI                                                     |

</span>

Note that chemical and nutrient pollution have both land-based (within 3 nautical miles) and ocean-based (within the entire 200 nautical mile EEZ) elements. This is because how pollution affects different goals will depend on the spatial scale of the goal's activity. Some goals occur far from shore, and nutrient and chemical pollution should be included for all offshore waters: FIS, MAR, ECO, and SPP. However, some goals are really only relevant nearshore, so nutrient and chemical pollution should only be included close to the shoreline (3nm in the global study): AO, CS, CP, TR, ICO, LSP, HAB.

These distinctions won't always apply for smaller-scale assessments. For example, in the US West Coast study (Halpern *et al.* 2014), we did not distinguish between offshore and 3nm and therefore only used the `po_nutrients` data layer.

>Some pressure data are the same or closely-related to data for goals. For example, the **Wild-Caught Fisheries** goal model requires catch data, which may be the same data source for information on commercial high- and low-bycatch data, which are used as pressures layers that affect **Livelhoods and Economies** and **Biodiversity**. In global assessments, the **Clean Waters** goal is very much linked to pressures layers because the input layers for its status are used as pressure layers. Trash pollution is a pressure that affects **Tourism and Reacreation**, **Lasting Special Places**, **Livelihoods and Economies,** and **Species**. It is important to remember these linkages as you go through the data discovery process.

>You should also start searching for pressures data independent from data for goals. An example would be how climate change impacts will appear in various places in your assessment. Climate change pressures layers can include UV radiation, sea surface temperature (SST), sea-level rise (SLR), and ocean acidification, and these impacts might affect such goals as **Natural Products**, **Carbon Storage**, **Coastal Protection**, **Sense of Place**, **Livelihoods and Economies**, and **Biodiversity**. These linkages will become more clear as you go through the OHI+ assessment process.

#### Pressures matrix

Independent from local pressure layers, you will develop a Pressures Matrix table that establishes the relationships between stressors and goals, i.e. how each pressure measure affects each goal, or an individual habitat type or natural product categories within a goal. It uses a _rank from 1-3 to weight how strongly a given pressure affects a goal or sub-goal relative to all the other pressures affecting it_.

>It is easy to confuse the weights with pressure data layers. But pressure weights should not be applied to the regions, only to the goals.

The rank weights used in the pressures matrix were determined by Halpern *et al*. 2012 (*Nature*) based on scientific literature and expert opinion (see Supplemental Table S28 of *Halpern et al. 2012*). For example, commercial high and low bycatch are categorical values that were set based on fishing gear type. This began as a list of gear types used, producing a range of potential bycatch frequencies (from local reports when possible), which can be rescaled. In the pressures matrix ranks are categorized as follows:

* 3 = high pressure
* 2 = medium pressure
* 1 = low pressure

![Scores from 1-3 are given to rank the importance of each pressure. Only values of 2 or 3 require that a resilience layer be activated when calculating the goal scores.](./fig/ohiman_goals-pressures-2D.png)

Stressors that have no impact are left blank in the matrix rather than being assigned a rank of zero, which would affect the average score. Pressures are ranked rather than being represented as a binary (yes/no) measure because the range of consequence of different pressures on each goal can be quite large, and to classify all those pressures as a simple 'yes' would give too much influence to the weakest stressors. For example, food provision is most heavily impacted by unsustainable, high-bycatch fishing, but pollution does have some impact on fish populations. Without a weighting system, these stressors would be treated equally in their impact on the food provision goal.

> How are Pressures calculated in the Toolbox?

>Pressures are represented by three-dimensional matrix. The data of each stressor in each region and the rank weights are two dimensions of the 3-D matrix. The Toolbox will:
1. For each stressor, multiply the local data for each region (between 0 and 1) by the weight (NA, 1, 2, or 3) assigned to that pressure for a specific goal and subgoal
2. Within each category, combine all stressor data from step 1 to get a category score
3. Average scores of all categories to get an overall pressures score for that goal or sub-goal

![The pressures matrix is three-dimensional: each pressure layer has data per region, which is multiplied by the ranking weights of the pressures matrix.](./fig/ohiman_goals-pressures-regions.png)

### How to modify Pressures Matrix and Categories in the Toolbox

Your team will identify if any pressures layers should be added to the pressures matrices, and if so, which goals the pressure affects and what weight they should have. You can transfer this information in `pressures_matrix.csv` (located in the `[assessment]/[region_year]/conf` folder). It is important to note that the matrix identifies the pressures relevant to each goal, and which weight will be applied in the calculation. Each pressure is a data layer, located in the `[region_year]/layers` folder. This means that pressure layers need information for each region in the study area, and some layers will need to be updated with local data. In modifying pressures, you will need to consider whether data layers can be updated or added, and whether data layers map onto goals appropriately in the local context.

Adding a new pressure to the pressures matrix requires the following steps:

1. Create new pressure layer(s) and save in the `layers` folder
2. Register pressure layer(s) in `layers.csv`
3. Register in `pressures_categories.csv`
4. Register in `pressures_matrix.csv`, identify the goals affected and set the weights
5. Modify config.R for goals that have elements

#### Create the new pressure layers and save in the `layers` folder

If you create a new data layer, give it a short but descriptive name that also includes a prefix that signifies the pressure category (for example: *po_* for the pollution category). There are five physical categories and one social category:

* *po_* = pollution
* *hd_* = habitat destruction
* *fp_* = fishing pressure
* *sp_* = species pollution
* *cc_* = climate change
* *ss_* = social pressure  

So for example, `po_trash` is a pollution layer with trash on beaches, and `sp_alien` is species pollution due to alien (invasive) species.

These new layers will have scores from 0 to 1, with values for each region in your study area, and will be saved in the `layers` folder.

#### Register the new pressure layers in `layers.csv`

Add two new rows in `layers.csv`, and register the new pressure layers by filling out the first eight columns for *po_desal_in*, and *po_desal_out*.

![](./fig/register_pressure.png)

#### Register in `pressures_categories.csv`

This is a table to record the _name_ of each pressures data layer, its _category_, and _subcategory_. Each data layer name  is the same name that is saved in the `layers` folder and is registered in `layers.csv`. Each layer falls under one of two categories -  ecological or social pressures, and one of several subcategories to further represent the origin of the pressure (e.g. climate change, fishing, etc), which is also indicated by a prefix of each data layer name.

Each pressure category is calculated separately before being combined with the others, so it is important to register the new pressure with the appropriate category prefix decided by your regional assessment team.  

![](https://docs.google.com/drawings/d/1qVCPgPZ2KImrO0mPIarhV0WlcOKW96E33VLI-6i3eCw/pub?w=800&h=720)

#### Register in `pressures_matrix.csv`  

`pressures_matrix.csv` identifies the different types of ocean pressures with the goals that they affect. Adding a new pressures layer to `pressures_matrix.csv` requires adding a new column with the pressure layer name.

The columns `element` (and `element_name`) record habitat types for habitat-specific goals (eg. CS and CP) and industrial sectors for economy-based goals (eg. ECO).

The rest of the column headers of the pressures matrix are the layer names of the pressures layer file that are saved in the `layers` folder and registered in `layers.csv`, matching what's recorded in the _pressures_categories.csv_.

_**NOTE**: Make sure to remove unused pressures layers from the `layers.csv`, `pressures_matrix.csv` and `pressures_categories.csv`. Otherwise `ohicore` will search for all the layers registered in those files and calculations will halt if it encounters pressure layers that do not exist._

![](https://docs.google.com/drawings/d/1PiueTs_r2IvC10zsStJq-tD3YcsC98eRKr1e2OOVKUw/pub?w=800&h=720)


#### Identify the goals affected and set the weighting

This step also requires transferring prior decisions into `pressures_matrix.csv`. Mark which goals are affected by this new pressure, and then set the weighting. Pressures weighting by goal should be based on scientific literature and expert opinion (3 = highly influential pressure, 2 = moderately influential pressure, 1 = not very influential pressure). Remember that the rankings in the pressures matrix are separate from the actual data within the pressures data layers. The rankings ensure that within a particular goal (e.g. within a row of the pressures matrix), the stressors that more strongly influence the goal’s delivery have a larger contribution to that goal’s overall pressure score. Therefore, the rankings are assigned independently of the actual pressure scores, and only determine their importance within the calculations.

#### Modify config.R for goals with multiple elements

If a goal has multiple elements (eg. CS has multiple habitats), as reflected in _pressures_matrix.csv_ where the columns `element` (and `element_name`) are filled, you need to update `config.R` in `conf` folder, as shown below:

![](https://docs.google.com/drawings/d/14qz5DZUQAuiRaJDYfyTp2c1g1RGDKCRwN0uSPYX4hHE/pub?w=800&h=540)

The highlighted files are data layers necessary to calculate pressures for each of the goals with components. They contain weights, or relative contribution from each element to the total pressures of the goal. These weights are calculated separately in the data prep folder for each goal, and saved and registered as you would for any data layer. How to calculate these data layers can be found in the _description_ column of `layers.csv`.  

## Resilience

### How to identify and quantify resilience

Resilience is included in OHI as the sum of the ecological factors and social initiatives (policies, laws, etc.) that can positively affect goal scores by reducing or eliminating pressures. The addition of new pressure layers may therefore warrant the addition of new resilience layers that were not previously relevant. Similarly, the removal of pressure layers may warrant the removal of now irrelevant resilience layers. You can then transfer this information into `resilience_matrix.csv`and `resilience_categories.csv` (located in the `[assessment]/[region_year]/conf` folder).

Ideally, each pressure should have a corresponding resilience measure, which is meant to 'balance' the pressures that negatively effects on ocean health. The Ocean Health Index considers resilience in two categories: **ecological resilience** to address ecological pressures, and **social resilience** to estimate how a region may be able to respond to or prevent environmental challenges. Additionally, **goal-specific regulations** are intended to address ecological pressures, and are measured as laws, regulations, and other institutional measures related to a specific goal. Ideally, for any resilience measure, you would have three tiers of information:

* **Existence of regulations**: Are regulations in place to appropriately address the ecological pressure?
* **Implementation and enforcement**: Have these regulations been appropriately implemented and are there enforcement mechanisms in place?
* **Effectiveness and compliance**: How effective have the regulations been at mitigating these pressures and is there compliance with these regulations?

Ideally, information would exist for these three tiers, and you would be able to weight the resilience measure based on the quality of the information as 1 (existence of regulation), 2 (implementation and enforcement), or 3 (effectiveness and compliance). This approach is different from the way ranks are assigned in pressures, which is based on impact. However, in most cases, information is not available for these three tiers: often, the existence of regulations is all that is available, and this does not always vary by region. In some cases, you may want to consider building your own set of indicators to determine **implementation and enforcement** and **effectiveness and compliance.**

#### Ideal Approach

Ideally, assessments of social resilience would include national-level and as well as local rules and other relevant institutional mechanisms that are meant to safeguard ocean health. The global focus has been on international treaties and indices, so your region should have more localized information. There would also be information as to their effectiveness and enforcement. of more. Information on social norms and community (and other local-scale) institutions (such as tenure or use rights) that influence resource use and management would be useful too.

#### Practical Considerations

In practical terms, resilience is hard to define and finding data can be difficult. It is often difficult to find regulations and indicators that would directly 'balance' individual stressors, but it is worth the effort to explore what information is available in the local context and how it could be included as resilience measures. You may be able to construct your own set of indicators for resilience (particularly social resilience) using proxy data. Your team may have to get creative to develop appropriate assessment measures here. It can be metrically be defined as presence-versus-absence (value of zero or one), or on a scale (value between zero and one) if the measure is an assessment or score. For instance in the global study,  resilience measures that were counted in the socio-economic resilience class of data came from the World Governance Indicators (http://govindicators.org). In a regional context, however, a more appropriate data layer might be a local governance index of some kind, preferably developed by a reputable organization using credible methods.

When available, national-level data are preferable to global-level data for your assessment. These include national laws on the environment, or protection of the marine environment or rivers that lead to coastal waters. National laws include things like the Clean Water Act (CWA) and the Endangered Species Act (ESA) in the U.S., or the national implementations of the E.U. Water Framework Directive. National actions can also be broadened beyond just legislation to include administrative procedures such as those involving permits, licenses, court cases, administrative action, and compliance mechanisms. [Cultural items at the national scale, such as holidays, are also applied at this scale]

State or province-level laws provide more regionally-specific information and thus work well for assessments. This would involve looking at the same types of laws and policies that exist on the national level, but specifically incorporating those that have been tailored to fit the needs of a particular sub-national area. This includes things such as California's state-level California Environmental Quality Act (CEQA), or the California Ocean Protection Act (COPA), which have laws designed specifically to protect California's environment. This would tell you more relevant information than using data from a national or international law. Local level regulations will usually provide you with the most accurate information for your assessment in order to tailor it best to the local context.

#### Scoring: Turning Qualitative into Quantitative

There are several ways to turn the qualitative information of regulations and social actions into quantitative metrics for analysis. A  robust way is to give credit for different aspects of the resilience measures. In addition to a score for having the law, policy, or action, in place, it is possible to gauge the effectiveness of that activity.

The simplest way is to give credit for having a resilience measure in place. This means assigning a binary score of zero or one for "presence" versus "absence" of the resilience measure. For international conventions, this can be done by assigning a value of 1 for having signed a convention. A more rigorous score can be given for countries that have further *ratified* a convention in addition to signing it; this is one way to further differentiate scores. This can be done by seeing if a country has signed and ratified CITES, for example.

> For example, if you were trying to find out if there are regulations in place that guide fishing pressure, you could look see if regulations exist for trawl-fishing limitations, or see if there are regulations for fish size, length, or if there are any seasonal restrictions. Another option would be to see if formal stock assessments exist for commercially-fished species.

A further step is to assess how well those measures are being complied with. This will give you more robust way is to assess how well a resilience  mechanism is working to maintain the integrity of the regulation and thereby the ecosystem.

> For example, once you have found out whether regulations for fishing pressure exist, you would then try to find values for compliance with these regulations. These could be raw data or calculated statistics such as rate of compliance or proportion of compliance. It should answer the question, "Are there indicators of compliance with fishing pressure guidelines"?

A subsequent, and final, step to creating a robust resilience assessment is to determine whether there are enforcement mechanisms in place to deal with non-compliance of the regulations. This is because a regulation is only as good as its implementation, and having both enforcement and compliance actions in place would reinforce the regulation and make it more effective.

> For example, in the case of fishing pressures, a further look into available data could lead you learn whether there are reported values of inspector visits and enforcement coverage of permitted facilities. Or you could look at reported numbers of enforcement actions in response to non-compliance. Further, you could also see if there are fines that have been paid or exist in association with non-compliance.

#### Data sources

Environmental laws and policies offer tangible information on resilience. The most common type of environmental regulations come from administrative law, such as pollution regulation of various kinds. Land-use law is also important to the integration of social and ecosystem issues, so finding zoning laws relevant for coastal areas could be useful, and so could finding whether or not a region requires environmental impact statements before allowing construction for either coastal land or for marine planning. Other kinds of law some countries include court cases settling disputes or requiring reparation of pollution damages, for example.

Resilience also goes beyond just the law, however. Insurance policies present another option, for instance.. Coastal areas are increasingly requiring climate-related insurance in some countries, and so the existence of such markets in a vulnerable area would be an example of a climate change resilience measure. Social initiatives also present another way to tackle resilience. There might be a beach clean-up day, a percentage of the refuse material that is recycled by the population, or some other social factor that reduces trash inputs into the ocean. A local law banning plastic bags is another way that local jurisdictions control plastic trash.


#### Incorporating local resilience measures in your assessment

1. Begin by exploring how resilience could be measured in your study area. What laws and regulations are in place that could provide resilience to ocean health?
2. Are there locally-developed indices that capture social or ecological resilience? Is there information about how each region in your study area are implementing or enforcing the laws?
3. Evaluate the resilience measures are included in the global assessment. Are all of them relevant? Are there local data that can be substituted in the place of global data? Are there resilience measures that should be excluded entirely?
4. Assign the resilience measure to the appropriate goal. Since resilience measures are in response to pressures that have a weight rank of 2 or 3 effect on a certain goal, determining which goals ecological and social resilience measures effect follows the same pattern as the pressures matrix. For goal-specific resilience measures, assign the resilience measure to the appropriate goal.
5. Prepare each resilience data layer only after steps 1-6 are completed. In addition to the proper formatting for the Toolbox, resilience data must be rescaled (normalized) on a unitless scale from 0 - 1. You will have to determine how to rescale the data, whether it is based on the highest value in the data range or other methods.

#### Including resilience measures from global assessments

Remember that local measures are far more appropriate than those included in global assessments, which likely do not reflect local management targets. However, international data were used in the global assessments that are available to you if you cannot find better local data:

**Table of resilience layers and descriptions**

|layer                 |name                                                            |
|:---------------------|:---------------------------------------------------------------|
|alien_species         |Alien species                                                   |
|cites                 |Resilience from commitment to CITES                             |
|fishing_v1            |CBD survey: coastal fishing v1                                  |
|fishing_v1_eez        |CBD survey: ocean fishing v1                                    |
|fishing_v2_eez        |CBD survey: ocean fishing v2                                    |
|fishing_v3            |CBD survey: coastal fishing v3                                  |
|fishing_v3_eez        |CBD survey: ocean fishing v3                                    |
|habitat               |CBD survey: habitat                                             |
|habitat_combo         |CBD survey: coastal habitat                                     |
|habitat_combo_eez     |CBD survey: ocean habitat                                       |
|li_gci                |GCI: competitiveness in achieving sustained economic prosperity |
|li_sector_evenness    |Sector evenness as a measure of economic diversity              |
|mariculture           |CBD survey: mariculture                                         |
|msi_gov               |MSI sustainability and regulations                             |
|species_diversity     |Ocean ecological integrity                                      |
|species_diversity_3nm |Coastal ecological integrity                                    |
|tourism               |CBD survey: tourism                                             |
|water                 |CBD survey: water                                               |
|wgi_all               |Strength of governance indicated with the WGI                   |

\* *CBD = Convention on Biological Diversity; GCI = Global Competitiveness Index; MSI = Mariculture Sustainability Index; WGI = World Governance Indicators*.

### How to modify Resilience Matrix and Categories in the Toolbox

Adding a new resilience to the resilience matrix requires the following steps:

1. Create new resilience layer(s) and save in the `layers` folder
2. Register resilience layer(s) in `layers.csv`
3. Register resilience layer(s) in `resiliences_categories.csv`
  +  Set the resilience category  
  +  Set the weights
4. Register resilience layer(s) in `resiliences_matrix.csv`
  +  Identify the goals affected
5. Modify `config.R` for goals that have elements

#### Create new resilience layers, save in `layers` folder and register in `layers.csv`

This process is similar to what you have done for the pressures data layers. Prefixes are also used for these layers, see _layer_ and _subcategory_ columns snapshot of the Resilience Categories below for more details.

#### Register in Resilience Categories

<!-- The first step is to determine which resilience layers from the global assessment are relevant to your assessment, and whether others need to be added. --> `resilience_categories.csv` records general information on each resilience data layer. The full list of layers included in the global resilience matrix are shown in the `resilience_matrix.csv`:

![](https://docs.google.com/drawings/d/1FrIvhMdWO6M2Ri3CO2gdEY9vfSpfKfzJnNkE-T8rce4/pub?w=800&h=720)

Each _resilience layer_ indicated in the table is a data layer just like all the other data layers you have formatted, saved in the layers folder, and registered on _layers.csv_. Each layer falls under a `category` of resilience - ecological or social, and one of three `category_type` - ecosystem, regulatory, or social, representing the origin of each resilience layer. The `subcategory` column indicates what specific pressure each layer of resilience is targeted at. The prefix of each data layer corresponds to its subcategory (eg. po, li, g, etc).

In addition, the `weight` column represents level of institutional governance. Governance is a function of 1) institutional structures that address the intended objective (eg. whether appropriate laws/regulations exist, etc), 2) a clear process for _implementing_ the institution is in place, and 3) whether the institution has been _effective_ at meeting stated objectives. At global scales it is very difficult to assess these three elements; we usually only had information on whether institutions exist. However, in some cases we had detailed information on institutions that enabled us to assess whether they would contribute to effective management, and thus, increased ocean health. In those latter cases, we gave more weight to those measures. In the `resilience_categories.csv` pre-loaded from OHI-Global 2016 to your repository, there are two weights assigned to each layer:

- _0.5_ means that a law or regulation exists, or a country has signed an appropriate treaty
- _1_ means that there are evidence of implementation of the laws and regulations.

However, you can redefine how the weights are set to available information in your regions.

#### Register in Resilience Matrix

`resilience_matrix.csv` maps the different types of resilience (columns) with the goals that they affect (rows). Whether a resilience layer has any influence on a goal, or an element of the goal, is represented by an *x*, or its absence. For example, `po_water` layer is relevant to the _salt marsh_ element of _CP_ goal, as shown by the *x* in the cell. On the other hand, that data layer does not apply to the _mangrove_ element of the same goal, hence the absence of an *x*.

![](https://docs.google.com/drawings/d/1zMxIbz_a0FixyKmFpsh81ztMe24EfeXgHwPUnI-lopc/pub?w=800&h=720)

New resilience layers may be added to `resilience_matrix.csv` based on finer-scale local information either in response to a new pressures layer, or as a new independent measure. Any added layer must be associated with a pressures layer that has a weight of 2 or 3 in the OHI framework so that resilience measures can mitigate pressures in each region.


#### How to modify config.r for goals with multiple elements

If a goal has multiple elements, as shown in _pressures_matrix.csv_, you need to update `config.r` in `conf` folder, as shown below:

![](https://docs.google.com/drawings/d/1eMvpSPif_Su759-cyHg8gsnWeHCvN2QlEZ5ywLVIEmY/pub?w=800&h=720)

Similar to what was discussed in the Pressures section, the highlighted files are data layers necessary to calculate resilience for each of the goals with components. These weights are prepared separately in the data prep folder for each goal, and saved and registered as you would for any data layer. How to calculate these data layers can be found in the _description_ column of `layers.csv`.  

<!-- ### Determining how to modify these resilience layers

* To determine whether `species_diversity_3nm` or `species_diversity_eez` should be used:
    + `sand_dunes` should use `species_diversity_3nm`,
    + `soft_bottom` should use `species_diversity`,
    + is `rocky_reef` mainly coastal? if so it should use `tourism` and `species_diversity_3nm`.
* If the habitats can be affected by mariculture plants (e.g. eutrophication and decreased water quality can occur if mariculture plants are close by and have poor wastewater treatment), then the `mariculture` resilience score should be added.
    + are there any mariculture plants in Israel? If yes, on which habitats do they occur?
* The remaining layers are the `fishing_v...` and `habitat..` layers, which are composite indicators obtained from different combinations of the following indicators:


**Questions to consider**:

The first objective is to determine whether the general `fishing_v..` or `habitat_...` categories are relevant to each of the habitats.  For example, fisheries regulations do not affect the conservation of sand dunes, so this habitat should not use any of the fisheries combos.
If the general resilience categories are relevant to the habitat, the next step is to select one resilience layer within the `fishing_v…` and `habitat...` categories that most adequately captures the suite of combined resilience variables that affect the habitat.  For example, the sand dune habitat is a strictly coastal habitat, so the most appropriate resilience layer would be the one that uses the MPA_coast (i.e., `habitat_combo`). The rocky reef and soft bottom, on the other hand, should definitely include fisheries and habitat regulations. So, you'll need to choose a fisheries and a habitat combo for these two habitats.  To do so, consider:

1) For which habitats should you use both a fishery and a habitat combo, or just use a habitat combo?
* fisheries regulations do not affect the conservation of sand-dunes, so this habitat should not use any of the fisheries combos. Also, this is a strictly coastal habitat, so choose the habitat layer that uses the `MPA_coast` instead of the `MPA_eez`, i.e. `habitat_combo` (and, as mentioned above, choose the coastal version of biodiversity, i.e. `species_diversity_3nm`).
* The rocky reef and soft bottom, on the other hand, should definitely include fisheries regulations. So you'll need to choose a fisheries and a habitat combo for these two habitats.
2) Which fisheries and habitat combos for `rocky_reef` and `soft_bottom`? The choice depends on two things:
* whether they are coastal habitats (within 3nm of the coast) or EEZ-wide habitats
      + if coastal, use the fisheries and habitat combos with `MPA_coast` (`fishing_v1`, `fishing_v3`, `habitat_combo`), and the `species_diversity_3nm` layer
      + if EEZ-wide, use the fisheries and habitat combos with `MPA_eez` (`fishing_v1_eez`, `fishing_v2_eez`, `fishing_v3_eez`, `habitat_combo_eez`), and the `species_diversity` layer
* whether the fisheries occurring on that habitat are mainly artisanal, mainly commercial, or both
    + if only commercial fisheries, use a layer that only uses the `Mora` data `fishing_v1..`)
    + if only artisanal/small-scale fisheries, use a layer that only uses the `Mora_s4` data (`fishing_v3..`)
    + if both, use a layer that uses both `Mora` and `Mora_s4` data (`fishing_v2..`)
3) It may also be that the existing global combo layers are not appropriate for your habitats.  For example, if rocky reef is mainly coastal, and it is fished by both commercial and artisanal methods, then we need a new combo that uses `Mora`, `Mora_s4`, `CBD_hab`, and `MPA_coast` (this is the same as `fishing_v2_eez`, but we use the `MPA_coast` layer instead of the `MPA_eez`). All other combinations are already present.
4) Another issue to consider is whether local data are available to improve the pressure layers (that are based on global data).  For example, if  there are local data on Marine Protected Areas (MPAs) and any areas with special regulations, this should be used to generate the `MPA_coast` and `MPA_eez` layers.You may know that only certain types of protected areas are closed to fisheries, and may want to only include those. Also, local datasets may be more accurate and regularly updated. **NOTE: in the global study, these are the same datasets used to calculate the status of Lasting Special Places (LSP).

5) How to update `resilience_matrix.csv`?
* write the complete list of layers you want to use for each habitat. Based on the above, for example, `soft bottom` in Israel matches the combination of layers called *soft bottom, with corals* in the default `resilience_matrix.csv`. But the `rocky_reef` and `sand_dunes` don't seem to match any existing combination, so you'll probably need to delete some of the rows, e.g. the *coral only*, and replace with new ad-hoc rows.
-->
