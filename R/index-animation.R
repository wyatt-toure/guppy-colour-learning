library(gganimate)

index_animation <- ggplot(
  full_data,
  aes(
    x = trial,
    y = green.object.preference,
    color = rewarding.object.colour,
    shape = rewarding.object.colour,
    linetype = rewarding.object.colour
  )
) +
  theme_minimal() +
  ylab("Green object preference (sec)") +
  xlab("Trial") +
  labs(col = "Rewarding object colour") +
  theme(
    legend.position = "none",
    axis.text = element_text(size = 14),
    axis.title = element_text(size = 14, face = "bold"),
    plot.title = element_text(size = 16, hjust = 0.5)
  ) +
  scale_color_manual(values = c("#2980b9", "#27ae60")) +
  scale_linetype_manual(values = c("longdash", "solid")) +
  scale_shape_manual(values = c(15, 16)) +
  geom_hline(yintercept = 0, linetype = "dashed") +
  scale_x_continuous(breaks = c(0:29)) +
  scale_y_continuous(breaks = seq(-300, 300, by = 100)) +
  stat_summary(fun = "mean", size = 0.8) +
  stat_summary(
    fun = mean,
    geom = "line",
    aes(group = rewarding.object.colour)
  ) +
  geom_line(aes(group = id), alpha = 0.2) +
  geom_point(aes(group = interaction(trial,id)), alpha = 0.3) + 
  ggtitle("Experiment 2 - Individual data across all trials") +
  transition_reveal(trial)

animate(index_animation, fps = 15, height = 3.5, width = 10, units = "in", duration = 20, end_pause = (20*5), res = 85)

anim_save("images/index-animation.gif")
