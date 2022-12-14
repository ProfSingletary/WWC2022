install.packages("tidyverse")
library(tidyverse)

install.packages("installr")
library(installr)
updateR()


ggplot2::mpg

mpg

?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg, aes(displ,hwy)) +
  geom_point() + geom_smooth(method = "lm")

ggplot(data = mpg) + geom_point(
     mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + geom_point(
               mapping = aes(x = displ, y = hwy, size = class))


ggplot(data = mpg) + geom_point(
   mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) +
     geom_point(mapping = aes(x = displ, y = hwy)) +
     facet_wrap(~ class, nrow = 2)


ggplot(data = mpg) +
     geom_point(mapping = aes(x = displ, y = hwy)) +
     facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy)) +
        facet_grid(drv ~ cyl)

# use point geom
ggplot(data = mpg) +
      geom_point(mapping = aes(x = displ, y = hwy))

# use smooth geom
 ggplot(data = mpg) +
      geom_smooth(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) +
        geom_smooth(mapping = 
             aes(x = displ, y = hwy,
                 linetype = drv))

ggplot(data = mpg) +
        geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) + geom_smooth(mapping =
         aes(x = displ, y = hwy, color = drv))

ggplot(data = mpg, 
      mapping = aes(x = displ,y = hwy)) +
      geom_point() + geom_smooth()


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
      geom_point(mapping = aes(color = class)) +
      geom_smooth(data = filter(mpg, class == "subcompact"),
                  se = FALSE)


#######

install.packages("dplyr")
library(dplyr)
library(nycflights13)

flights

filter(flights, month == 1, day == 1)

jan1 <- filter(flights, month == 1, day == 1)

(dec25 <- filter(flights, month == 12, day == 25))


sqrt(2) ^ 2 == 2

1/49 * 49 == 1

near(sqrt(2) ^ 2,  2)

near(1 / 49 * 49, 1)



NA > 5

10 == NA

NA + 10

NA / 2

NA == NA



is.na(x)

df <- tibble(x = c(1, NA, 3))

df

filter(df, x > 1)

filter(df, is.na(x) | x > 1)



arrange(flights, sched_dep_time, year, month, day)

arrange(flights, desc(dep_delay))


df <- tibble(x = c(5, 2, NA))
df

arrange(df, x)

arrange(df, desc(x))



select(flights, year, month, day)

select(flights, -(year:day))


select(flights, time_hour, air_time, everything())

summarize(flights, delay = 
            mean(dep_delay, na.rm = TRUE))



by_day <- group_by(flights, year, month, day)

summarize(by_day, delay = mean(dep_delay, na.rm = TRUE))


a <- filter(mtcars, carb > 1)
b <- group_by(a, cyl)
c <- summarize(b, Avg_mpg = mean(mpg))
d <- arrange(c, desc(Avg_mpg))
print(d)

mtcars %>%
        filter(carb > 1) %>%
        group_by(cyl) %>%
        summarize(Avg_mpg = mean(mpg)) %>%
        arrange(desc(Avg_mpg))


flights %>%
     group_by(year, month, day) %>%
     summarize(mean = mean(dep_delay))


flights %>%
       group_by(year, month, day) %>%
       summarize(mean = mean(dep_delay, na.rm = TRUE))
