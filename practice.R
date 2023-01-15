

install.packages("tidyverse")
install.packages(c("nycflights13", "gapminder", "Lahman"))
library(tidyverse)

# ggplot(data = <DATA>) + 
#   <GEOM_FUNCTION>(
#     mapping = aes(<MAPPINGS>),
#     stat = <STAT>, 
#     position = <POSITION>
#   ) +
#   <COORDINATE_FUNCTION> +
#   <FACET_FUNCTION>

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
