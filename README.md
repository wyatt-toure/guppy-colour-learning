## Summary

This is the GitHub repository containing the data and code for the analysis conducted in the manuscript ‘Bias in the shift of foraging preference for coloured objects in Trinidadian guppies, *Poecilia reticulata*’. 

The website which walks through each of the models in the main text as well as a few supplementary models is available at https://wyatt-toure.github.io/colour-learning-project-analysis/index.html. Furthermore, this repository contains all the code to produce the analyses and figures in the manuscript as well as supplementary results and figures. 

The raw R code can be found in [01-main-analysis.Rmd](https://github.com/wyatt-toure/colour-learning-project-analysis/blob/main/01-main-analysis.Rmd)

## Website

https://wyatt-toure.github.io/colour-learning-project-analysis

## Metadata

Data: [experiment-2-master-sheet-clean.csv](https://github.com/wyatt-toure/colour-learning-project-analysis/blob/main/data/experiment-2-master-sheet-clean.csv)

| Variable                    | Description                                                                                                                  |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------|
| id                          | The individual ID of a guppy                                                                                                 |
| trial                       | The trial number                                                                                                             |
| distance.moved              | The distance moved (centimeters)                                                                                             |
| mean.velocity               | The mean velocity (centimeters per second)                                                                                   |
| time.in.periphery           | The amount of time spent in the periphery of the tank (seconds)                                                              |
| time.in.center              | The amonut of time spent in the center of the tank (seconds)                                                                 |
| left.visits.object          | The number of times a guppy came within 2 body lengths of the object placed on the left side of the tank                     |
| left.time.object            | The amount of time a guppy spent within 2 body lengths of the object placed on the left side of the tank (seconds)           |
| left.latency.object         | The time it took for a guppy to first come within 2 body lengths of the object placed on the left side of the tank (seconds) |
| right.visits.object         | The number of times a guppy came within 2 body lengths of the object placed on the right side of the tank                    |
| right.time.object           | The amount of time a guppy spent within 2 body lengths of the object placed on the left side of the tank (seconds)           |
| right.latency.object        | The time it took for a guppy to first come within 2 body lengths of the object placed on the left side of the tank (seconds) |
| freezes                     | The number of times a guppy halted movement                                                                                  |
| time.freezing               | The amount of time a guppy spent not moving (seconds)                                                                        |
| object.side.my.view         | The side of the tank the rewarding object was on from my perspective                                                         |
| object.side.etho.view       | The side of the tank the rewarding object was on from the camera's perspective (inverted from mine)                          |
| time.with.trained.object    | The amount of time a guppy spent within 2 body lengths of the object they were trained to (seconds)                          |
| time.with.untrained.object  | The amount of time a guppy spent within 2 body lengths of the object they were not trained to (seconds)                      |
| latency.trained.object      | The amount of time it took a guppy to get within 2 body lengths of the object they were trained to (seconds)                 |
| latency.untrained.object    | The amount of time it took a guppy to get within 2 body lengths of the object they were not trained to (seconds)             |
| prop.time.trained.object    | The proportion of time guppies spent within 2 body lengths of the object they were trained to                                |
| visits.trained.object       | The number of times a guppy came within 2 body lengths of the object they were trained to                                    |
| visits.untrained.object     | The number of times a guppy came within 2 body lengths of the object they were not trained to                                |
| rewarding.object.colour     | The colour of the object a guppy was trained to                                                                              |
| first.choice                | The first object a guppy came within 2 body lengths of                                                                       |
| distance.moved.in.periphery | The distance moved in the periphery (centimeters)                                                                            |
| distance.moved.in.center    | The distance moved in the center (centimeters)                                                                               |
| ate                         | Whether a guppy ate during the trial or not                                                                                  |
| trial.type                  | The type of trial (training or testing)                                                                                      |

