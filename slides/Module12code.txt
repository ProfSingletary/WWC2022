Install ggplot, ggplot2, dplyr

ggplot(data=diamonds,
       aes(x=carat, y=price)) + geom_point()


ggplot(data = diamonds) + 
         geom_bar(mapping = aes(x = cut))


ggplot(data = diamonds) +
         geom_bar(mapping = aes(x = cut))


#dplyr::count()
diamonds %>% count(cut)

ggplot(data = diamonds) + geom_histogram(
         mapping = aes(x = carat), binwidth = 0.5)
ggplot(data = diamonds) + geom_histogram(
         mapping = aes(x = carat), binwidth = 0.5)

ggplot(diamonds) + geom_histogram(
          mapping = aes(x = y), binwidth = 0.5)

ggplot(diamonds) + 
    geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
    coord_cartesian(ylim = c(0, 50))

ggplot(data = mpg, 
      mapping = aes(x = class, y = hwy)) + geom_boxplot()

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE) +
  labs(
    title = paste(
      "Fuel efficiency generally decreases with",
      "engine size"))

ggplot(mpg, aes(displ, hwy)) +
    geom_point(aes(color = class)) +
    geom_smooth(se = FALSE) +
    labs(
        title = paste(
            "Fuel efficiency generally decreases with",
            "engine size"
        ),
        subtitle = paste(
            "Two seaters (sports cars) are an exception",
            "because of their light weight"
        ),
        caption = "Data from fueleconomy.gov")

ggplot(mpg, aes(displ, hwy)) +
    geom_point(aes(color = class)) +
    geom_smooth(se = FALSE) +
    labs(
        x = "Engine displacement (L)",
        y = "Highway fuel economy (mpg)",
        colour = "Car type"
    )

