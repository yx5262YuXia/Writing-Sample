# ------------------------------------------------------------------------------
# name: figure3.R
# author: Yu Xia
# description: 2nd attempt using SA. Separate each category. 3rd category.
# last updated: Aug 18, 2022
# ------------------------------------------------------------------------------

state_crime_cs <- read_dta(here("data/clean/UpdatedStateLevelData-2010 - aftr revise - gen time_til.dta"))

# Naive TWFE Event Study (SEs clustered by state)
res_naive_3 = feols(laga ~ i(time_til, treated, ref = -1) | 
                      fipsstat + year,
                    state_crime_cs, vcov = ~state) #What about control variables?#
summary(res_naive_3)
iplot(res_naive_3, main = "Naive TWFE")

# Sun and Abraham (SA20)
unique(state_crime_cs$treatyear)

res_cohort3 = feols(laga ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs,
                    vcov = ~state)
summary(res_cohort3)
iplot(res_cohort3, ref.line = -1, main = "Sun & Abraham")

iplot(list(res_naive_3, res_cohort3), ref.line = -1,
      main = "Treatment's effect on Aggravated Assault")
legend("topright", col = c(1, 2), pch = c(20, 17), 
       legend = c("TWFE", "Sun & Abraham"))

# Aside: If you'd prefer ggplot2 versions of these plots then you can try...
library(ggiplot) # remotes::install_github("grant_mcdermott/ggiplot")
library(ggplot2)
ggiplot(list("TWFE" = res_naive_3, "Sun & Abraham" = res_cohort3), 
        main = "",
        xlab = "Year",
        theme = theme_minimal())
ggsave(here("figures/figure3.png", width=8, height=4.5))
