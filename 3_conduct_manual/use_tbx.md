# Using the Toolbox

>In this section, you will learn about the most common modifications made to repositories. You will be given examples to follow to help with your own assessment. The most common modifications are changing the pressures and resilience matrices, changing or creating data layers, and changing or removing goals models.

As your team finalizes which data should be included in the assessment and begins developing goal models, you can incorporate this information into your repository. Input information must be properly formatted into **layers**, which are registered with the Toolbox for use. Layers for the Toolbox can be prepared with any software that handles *.csv* files, but goal models must be updated in R. It is recommended that layer preparation occurs within your repository's `prep` folder as much as possible, as it will also be archived by GitHub. Calculations can be done locally and offline by running  `subcountry2014/calculate_scores.R`.


## Layer preparation workflow

It is recommended that you construct a useful workflow with your team to incorporate local information into the Toolbox. Adding layers to the Toolbox will require working with GitHub and the Toolbox file system structure. The overall process involves preparing the layers (which can be done in the `prep` folder), saving them in the `layers` folder, and registering the layers. The layer preparation process can occur in tandem with the model modification process.

![Diagram of OHI Toolbox data preparation workflow. You should start by prepping the files, loading them into the `layers` folder when they're ready for the Toolbox, and then registering them in `layers.csv`](https://docs.google.com/drawings/d/1-WB84qsupe4yeqKzeBnOSm9iIW-G7N3EYW0VqqGXORs/pub?w=1116&h=641)
