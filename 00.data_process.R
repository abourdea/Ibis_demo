library(tidyverse)
library(ggplot2)

# load and quick view of dataset ------------------------------------------
data(mtcars)
head(mtcars)

# plot distribution of mpg ------------------------------------------------
mtcars |> 
  ggplot(aes(x = mpg)) +
  geom_histogram(bins = 15, fill = "darkorange", color = "white") +
  theme_minimal() +
  theme(panel.grid.major.x = element_blank(),
        plot.title = element_text(hjust = 0.5)) +
  labs(title = "Distribution of MPG - Cars Dataset")
