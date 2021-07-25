library(ggplot2)
library(scales)
library(cowplot)



trial.type = c(
  "Initial Test", "Training","Training",
  "Training", "Training", "Training", "Training", "Training","Training","Training",
  "Training","Training","Training","Training","Training","Training","Training","Training",
  "Training", "Training", "Training", "Probe 1", "Refresher", "Generalization 1", 
  "Refresher","Generalization 2", "Refresher", "Probe 2", "Refresher", "Odour")

trial = c(0, 1,2,3,4,5,6,7,8,9,10,
          11,12,13,14,15,16,17,18,19,20,
          21,22,23,24,25,26,27,28,29)

trial.state = c(
  "Initial","Initial","Initial",
  "Initial","Initial","Initial","Initial",
  "Training","Training","Training","Training","Training",
  "Training","Training","Training","Training","Training",
  "Training","Training","Training","Training","Final Test",
  "Refresher","Generalization 1", "Refresher", "Generalization 2",
  "Refresher", "Final Test", "Refresher", "Final Test"
)

# Tableau colour palettes
blue = "#4e79a7"
green = "#59a14f"
brown = "#9c755f"
orange = "#f28e2b"
yellow = "#edc948"
grey = "#bab0ac"
red = "#e15759"
purple = "#b07aa1"
cyan = "#76b7b2"
pink = "#ff9da7"

timeline.df = data.frame(trial.type, trial, trial.state)

trial.type.colors <- c(orange, cyan, blue, brown,  brown,  brown, grey, purple)
trial.type.shapes <- c(15, 2, 1, 13, 16, 19, 18, 18)

positions <- c(0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
directions <- c(1, 1)

line_pos <- data.frame(
  "trial"=unique(timeline.df$trial),
  "position"=rep(positions, length.out=length(unique(timeline.df$trial))),
  "direction"=rep(directions, length.out=length(unique(timeline.df$trial)))
)

timeline.df <- merge(x=timeline.df, y=line_pos, by="trial", all = TRUE)
timeline.df <- timeline.df[with(timeline.df, order(trial, trial.type)), ]

text_offset <- 0.1

timeline.df$trial_count <- ave(timeline.df$trial==timeline.df$trial, timeline.df$trial, FUN=cumsum)
timeline.df$text_position <- (timeline.df$trial_count * text_offset * timeline.df$direction) + timeline.df$position

head(timeline.df)

# Initial ggplot version of timeline commented out. If you see this Hi! :) 
ggplot(timeline.df,aes(x=trial,
                       y=0,
                       color=trial.type,
                       shape = trial.type,
                       label = trial)
) +
  scale_color_manual(values=trial.type.colors, drop = FALSE) +
  scale_shape_manual(values = trial.type.shapes) +
  theme_cowplot() +
  geom_hline(yintercept=0, color = "white", size=0.3) +
  geom_point(aes(y=0), size=4) +
  theme(
    axis.line.y=element_blank(),
    axis.text.y=element_blank(),
    axis.title.x=element_blank(),
    axis.title.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.text.x =element_blank(),
    axis.ticks.x =element_blank(),
    axis.line.x =element_blank(),
    plot.title = element_text(hjust = 0.5,  vjust = -30),
    legend.position = "none"
  ) +
  guides(colour = guide_legend(nrow = 2)) +
  geom_text(aes(label=trial),hjust=.7, vjust=-2,size=3, fontface = "bold") +
  labs(color = "Trial Type", shape = "Trial Type")
