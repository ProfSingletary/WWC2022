install.packages("tidyverse")
library(tidyverse)
library(modelr)
options(na.action = na.warn) # handle missing values with a warning

sim1


ggplot(sim1, aes(x, y)) + geom_point()


runif(10, 1, 5)  # 10 values between 1 and 5


models <- tibble(y = runif(50, -20, 40), m = runif(50, -5, 5))

ggplot(sim1, aes(x, y)) +
     geom_abline(aes(intercept = y, slope = m), 
                 alpha = 1/4, data = models) + 
     geom_point()


sim1_mod <- lm(y ~ x, data = sim1)

coef(sim1_mod)

ggplot(sim1, aes(x, y)) +
     geom_abline(aes(intercept = 4.220822, slope = 2.051533)) +
     geom_point()


grid <- sim1 %>% data_grid(x)
grid


sim1_mod <- lm(y ~ x, data = sim1) 
grid_p <- grid %>% 
        add_predictions(sim1_mod)
grid_p



ggplot(sim1, aes(x)) +
     geom_point(aes(y = y)) +
     geom_line(aes(y = pred),  
               data = grid_p,
               colour = "red",
               size = 1)


sim1.R <- sim1 %>%
      add_residuals(sim1_mod)



sim1.R <- sim1 %>%
      add_residuals(sim1_mod)
sim1.R


ggplot(sim1.R, aes(resid)) +
  geom_freqpoly(binwidth = 0.5)



ggplot(sim1, aes(x, resid)) +
      geom_ref_line(h = 0) +
      geom_point()


ggplot(sim2) +
  geom_point(aes(x, y))



mod2 <- lm(y ~ x, data = sim2)
grid <- sim2 %>%
         data_grid(x) %>%
         add_predictions(mod2)
grid



ggplot(sim2, aes(x)) +
    geom_point(aes(y = y)) +
    geom_point(
        data = grid,
        aes(y = pred),
        color = "red",
        size = 4)


sim2.R <- sim2 %>%   
        add_residuals(mod2)

ggplot(sim2.R, aes(resid)) +
+     geom_freqpoly(binwidth = .5)




