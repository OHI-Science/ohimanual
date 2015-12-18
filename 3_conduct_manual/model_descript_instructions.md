# Appendix 3: Instructions for preparing model descriptions
This document explains what information are needed from the goal keepers in order to calculate the goal scores and update the WebApp. An example is provided for each step of the instructions. 

1.	**Goal model equation:**

$$
x_{CW} = \sqrt[4]{a * u * l * d}
$$

2.	**Explanation of each variable**:

The Status of this goal (XCW) is calculated as the geometric mean of four components where a = the number of people without access to sanitation (i.e., coastal population times % without access to improved sanitation) rescaled to the global maximum, u = 1 – (nutrient input), l = 1 – (chemical input), and d = 1 – (marine debris input). The intensity or input values for each sub-component come from the data sources listed in the separate data description files.

Xcw = clean waters score.

a = access to sanitation, by country. Access to improved sanitation as a proxy for pathogen pollution.

u = 1 – (nutrient input, by country). Ocean nutrient pollution.

l = 1 – (chemical input, by country). Ocean-based chemical pollution.

d = 1 – (marine debris input, by country). Trash pollution.

3.	**Data layer name for each variable**:

* access to sanitation = 'po_pathogens'
* nutrient input = 'po_nutrients'
* chemical input = 'po_chemicals'
* marine debris input = 'po_trash'

4.	**Written description of goal model. This should include some or all of the following: (a) why the goal models were changed (or not changed); (b) why some data were included and other data weren't; (c) any data limitations that also limited the model; (d) what data would ideally be available and how that could improve the model; (e) describe the 'ideal approach' for the goal, which may or may not be possible due to data availability**

This goal measures the degree to which coastal waters are free of contaminants. This is the final score that is the geometric mean of the four clean waters variables of pathogens (a), nutrients (u), chemicals (l), and trash (d). This is the same model used in the Halpern et al. (2013) global assessment because it was the most robust based on the available data. Data are not disaggregated data at the sub-country and instead here represent the national value applied across provinces.

We used a geometric mean, as is commonly done for water quality indices, because a very bad score for any one sub-component would pollute the waters sufficiently to make people feel the waters were ‘too dirty’ to enjoy for recreational or aesthetic purposes.

Currently the model relies on a number of proxies, such as trends in access to improved sanitation as a proxy for pathogen pollution trend.  Ideal data would consist of direct measurements of pathogen levels from monitoring stations at a sub-country level in a time-series. In the future as data become available from new monitoring efforts we will include them in this model.


5.	**List of pressures that negatively affect the status of the goal and the corresponding weight of the incidence of the pressure on the goal/subgoal**:

|Pressure| Weight|
|---|---|
|po_chemicals_3nm| 3|
|po_pathogens	| 3|
|po_nutrients_3nm|	3|
|po_trash| 3|
|ss_wgi| 1|
|…|	…|

6.	**List of resilience measures that positively affect the status of the goal**:

|Resilience|	Weight|
|---|---|
|CBD Water|	1|
|World Governance Indicators|	1|
|…|	…|
