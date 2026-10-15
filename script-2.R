library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.85, scale = "width", trim = TRUE) +
  geom_boxplot(width = 0.12, fill = "white", outlier.alpha = 0.15) +
  scale_fill_viridis_d(option = "C", end = 0.9) +
  scale_y_log10() +
  labs(
    title = "Diamond prices across cut qualities",
    subtitle = "Price distributions shown on a logarithmic scale",
    x = "Cut quality",
    y = "Price (USD, log scale)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title.position = "plot",
    legend.position = "none",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
