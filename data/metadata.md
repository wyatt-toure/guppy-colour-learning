### Experiment 1 Metadata

Variable descriptions for `colour-learning-experiment-1-data.csv`

`id`	
: The individual ID of a guppy

`trial`	
: The trial number

`distance.moved`	
: The distance moved (centimeters)

`mean.velocity`	
: The mean velocity (centimeters per second)

`time.in.periphery`	
: The amount of time spent in the periphery of the tank (seconds)

`time.in.center`	
: The amount of time spent in the center of the tank (seconds)

`left.visits.object`	
: The amount of time spent in the periphery of the tank (seconds)

`left.time.object`	
: The amount of time a guppy spent within 4 cm of the object placed on the left
side of the tank (seconds)

`left.latency.object`	
: The time it took for a guppy to first come within 4 cm of the object placed on
the left side of the tank (seconds). Dashes represents no visit. 0 indicates an
immediate visit (i.e. as soon as the tracking began)

`right.visits.object`	
: The number of times a guppy came within 4 cm of the object placed on the right
side of the tank

`right.time.object`	
: The amount of time a guppy spent within 4 cm of the object placed on the right
side of the tank (seconds)

`right.latency.object`	
: The time it took for a guppy to first come within 4 cm of the object placed on
the right side of the tank (seconds). Dashes represent no visit. 0 indicates an
immediate visit (i.e. as soon as the tracking began)

`freezes`	
: The number of instances a guppy was motionless 

`time.freezing`	
: The amount of time a guppy spent motionless

`zone.changes`	
: A 4x8 grid of squares underlies the experimental tank. Zone changes represents
how many squares a guppy crossed. Before we started using distance moved, zone
changes was our activity measure object.side.my.view	The side of the tank the
rewarding object was placed on (relative to the experimenter's perspective)
during the trial

`object.side.etho.view`	
: The side of the tank the rewarding object was placed on (relative to the
camera's perspective which is inverted from the experimenter's perspective)
during the trial

`time.with.trained.object`	
: The amount of time a guppy spent within 4 cm of the object they were trained
to (seconds). In the paper we refer to this as the rewarded object preference

`time.with.untrained.object`	
: The amount of time a guppy spent within 4 cm lengths of the object they were
not trained to (seconds). In the paper we refer to this as the unrewarded
preference

`latency.trained.object`	
: The time it took for a guppy to first come within 4 cm of the object it was
trained to (seconds). Dashes represent no visit. 0 indicates an immediate visit
(i.e. as soon as the tracking began)

`latency.untrained.object`	
: The time it took for a guppy to first come within 4 cm of the object it was
not trained to (seconds). Dashes represent no visit. 0 indicates an immediate
visit (i.e. as soon as the tracking began)

`prop.time.trained.object`	
: The proportional preference for the object the guppy was trained to

`visits.trained.object`	
: The number of times a guppy came within 4 cm of the object it was trained to

`visits.untrained.object`	
: The number of times a guppy came within 4 cm of the object it was not trained
to

`rewarding.object.colour`	
: The colour of object a guppy was trained to

`first.choice`	
: The identity of the first object a guppy came within 4 cm of

`distance.moved.in.periphery`	
: The distance moved (centimeters) in the periphery of the tank

`distance.moved.in.center`	
: The distance moved (centimeters) in the center of the tank

`ate`	
: Whether a guppy ate during the trial or not

`trial.type`	
: The type of trial that was conducted (training or test)

`green.object.preference`	
: The relative preference for the green object (seconds)

`rewarding.object.preference`	
: The relative preference for the rewarding object (seconds)

`prop.rewarding.object.preference`	
: The proportional preference for the rewarding object (same as
prop.trained.object but renamed to allow for combined plotting with
experiment 2)

### Experiment 2 Metadata

Variable descriptions for `colour-learning-experiment-2-full-data.csv`

`ate`	
: Whether a guppy ate during the trial or not

`id`	
: The individual ID of a guppy

`object.pair`	
: The identity of the object pair used during the trial

`object.side`	
: The side of the tank the rewarding object was placed on (relative to the
experimenter's perspective) during the trial

`trial`	
: The trial number

`distance.moved`	
: The distance moved (centimeters)

`mean.velocity`	
: The mean velocity (centimeters per second)

`periphery.visits`	
: The number of times a guppy came within the periphery of the tank

`time.in.periphery`	
: The amount of time spent in the periphery of the tank (seconds)

`latency.to.periphery`	
: The time it took for a guppy to first approach the periphery of the tank
(seconds). Dashes represents no visit. 0 indicates an immediate visit (i.e. as
soon as the tracking began)

`center.visits`	
: The number of times a guppy came within the center of the tank

`time.in.center`	
: The amount of time spent in the center of the tank (seconds)

`latency.to.center`	
: The time it took for a guppy to first approach the center of the tank (seconds).
Dashes represents no visit. 0 indicates an immediate visit (i.e. as soon as the
tracking began)

`left.object.visits`	
: The number of times a guppy came within 4 cm of the object placed on the left
side of the tank

`time.with.left.object`	
: The amount of time a guppy spent within 4 cm of the object placed on the left
side of the tank (seconds)

`left.object.latency`	
: The time it took for a guppy to first come within 4 cm of the object placed on
the left side of the tank (seconds). Dashes represents no visit. 0 indicates an
immediate visit (i.e. as soon as the tracking began)

`right.object.visits`	
: The number of times a guppy came within 4 cm of the object placed on the right
side of the tank

`time.with.right.object`	
: The amount of time a guppy spent within 4 cm of the object placed on the right
side of the tank (seconds)

`right.object.latency`	
: The time it took for a guppy to first come within 4 cm of the object placed on
the right side of the tank (seconds). Dashes represent no visit. 0 indicates an
immediate visit (i.e. as soon as the tracking began)

`rewarding.object.colour`	
: The colour of object a guppy was trained to

`reward.object.side`	
: The side of the tank the rewarding object was placed on (relative to the
camera's perspective which is inverted from the experimenter's perspective)
during the trial

`time.with.trained.object`	
: The amount of time a guppy spent within 4 cm of the object they were trained
to (seconds). In the paper we refer to this as the rewarded object preference

`time.with.untrained.object`	
: The amount of time a guppy spent within 4 cm lengths of the object they were
not trained to (seconds). In the paper we refer to this as the unrewarded object
preference

`green.object.preference`	
: The relative preference for the green object (seconds)

`rewarding.object.preference`	
: The relative preference for the rewarding object (seconds)

`prop.rewarding.object.preference`	
: The proportional preference for the rewarding object

`time.with.both.objects`	
: The time spent within 4cm of both objects

`total.time`	
: The total time the guppy was tracked for. Derived by summing the time in
periphery and time in center

`trial.type`	
: The type of trial that was conducted (training, test, or refresher)

`training.feeding.count`	
: The number of training trials (refresher excluded) for which that guppy ate

