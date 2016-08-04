## Remove Subgoals from a Goal

If you decide that a goal that has subgoals (eg. BD, LE, FP) should be assessed as an individual goal due to data limitation or other reasons, you can remove the subgoals. We will use BD as an example to illustrate how.

`ohicore` pulls information from several files and scripts to combine scores from subgoals to calculate overall goal scores. The process of removing subgoals thus involves removing subgoal information from all these files:

- `goals.csv`
- `functions.r`
- `pressures_matrix.csv`
- `resilience_matrix.csv`

_**NOTE**: These steps do not need to occur in this sequence._

### Remove subgoals from `goals.csv`

`goals.csv` is a table with information about the relationship between goals and sub-goals. This includes the weight of each goal that is used to calculate the final Index scores when all goals are combined. These are indicated by two columns: preindex_function (functions for all goals that do not have sub-goals, and functions for all sub-goals) and postindex_function (functions for goals with sub-goals).

As illustrated in the graph below, removing the subgoals involves simplifying how BD and its subgoals are registered in the columns shown here:

![](https://docs.google.com/drawings/d/1TUDfU2mG-QlXa3Huq_r8EwcgDPEa1RCaVQfpWnY49Uo/pub?w=830&h=720)


### Remove subgoals from `functions.r`

`functions.r`contains the R codes to calculate status and trend for each goal and sub-goal, contained within individual functions. Calculations are done using prepared layers saved in the _layers_ folder and registered in _layers.csv_. As shown below, HAB and SPP each has its own function, calling data layers from _layers_. The BD function combines HAB and SPP scores, calling _scores_.

To remove the subgoals, you can delete functions for HAB and SPP completely, and write a function for BD as you would for any goal, calling _layers_.

![](https://docs.google.com/drawings/d/1uTqbXyac72bE7yr2FZI9QEVGo1fSNgO4DXk1PIFk950/pub?w=960&h=720)

### Remove subgoals from `pressures_matrix.csv`

This table indicates which individual pressures (stressors) affect which goal, sub-goals, or components, and weights them from 1-3 based on the degree of impacts. To remove subgoals from this matrix, you can simply delete the rows for each subgoal (HAB and SPP), and add a new row for BD, and treat BD as you would an individual goal with no subgoals.

![](https://docs.google.com/drawings/d/1sgZyyiQyPIWUn3_BojsBuQC_sbM4t_BW8YNGNqSd31w/pub?w=800&h=720)

### Remove subgoals from `resilience_matrix.csv`

This table records information on which individual resilience measures affect which goal, sub-goals, or components. Similar to what you would do with 'pressures_matrix.csv', you can delete the rows for HAB adn SPP, and add a new row for BD.

![](https://docs.google.com/drawings/d/1JUGogjH08_2KlOebKYxCR-JZFYGp5-6VwLYylblpWdw/pub?w=800&h=720)
