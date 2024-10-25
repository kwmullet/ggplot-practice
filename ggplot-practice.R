library(tidyverse)
library(qss)

# displaying datasets in packages #####
# data(package = "qss")
# data(package = "tidyverse")


# BOD practice 1 #####
# ggplot(data = BOD,
#         mapping = aes(x = Time,
#                     y = demand)) +
#     geom_point( size = 5 ) +
#     geom_line( colour = "red")


# BOD practice 2 #####
# ggplot(BOD, aes(Time, demand)) +
#     geom_point(size = 3)+
#     geom_line( colour = "red")


# CO2 practice 1 ####
# CO2 %>%
#     ggplot(aes(conc, uptake,
#             colour = Treatment)) + 
#     geom_point(size = 3,
#                 alpha = 0.5 ) +
#     geom_smooth(method = lm,
#                 se = F) +
#     facet_wrap(~Type) +
#     labs(title = "Concentration of CO2") +
#     theme_classic()



# CO2 practice 2 with boxplot ####
# CO2 %>%
#     ggplot(aes(Treatment, uptake)) +
#     geom_boxplot() +
#     geom_point(alpha = 0.5,
#             aes(size = conc,
#                 colour = Plant)) +
#     facet_wrap(~Type) +
#     # coord_flip() +
#     theme_classic()


# mpg 1 ####
mpg %>%
    filter(cty < 25) %>%
    ggplot(aes(displ, cty))+
    geom_point(aes(colour = drv,
                    size = trans),
                alpha = 0.5) +
    geom_smooth() +
    facet_wrap(~year, nrow = 1) +
    labs( x = "Engine size", 
        y = "MPG in the city",
        title = "Fuel efficiency") +
    theme_classic()


# mpg 2 ####
mpg %>%
    filter(hwy < 35) %>%
    ggplot(aes( x = displ, 
                y = hwy,
                colour = drv))+
    geom_point() +
    geom_smooth( method = lm,
                 se = F) +
    labs( x = "Engine size", 
        y = "MPG on the highway",
        title = "Fuel efficiency") +
    theme_classic() 

