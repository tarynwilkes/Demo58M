#make a dataset

df <- data.frame(x = rnorm(50, 16, 4),
                 group = rep(c("group1", "group2"), each = 25))

library(tidyverse)

#make a summary
df %>% group_by(group) %>%
  summarise(mean = mean(x),
            n=length(n),
            sd = sd(x))