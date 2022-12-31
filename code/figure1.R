# ------------------------------------------------------------------------------
# name: figure1.R
# author: Yu Xia
# description: 2nd attempt using SA. Separate each category. 1st category.
# last updated: Aug 18, 2022
# ------------------------------------------------------------------------------

state_crime_cs <- read_dta(here("data/clean/UpdatedStateLevelData-2010 - aftr revise - gen time_til.dta"))

# Naive TWFE Event Study (SEs clustered by state)
res_naive_1 = feols(lmur ~ i(time_til, treated, ref = -1) | 
                      fipsstat + year,
                    state_crime_cs, vcov = ~state) #What about control variables?#
summary(res_naive_1)
iplot(res_naive_1, main = "Naive TWFE")

# Sun and Abraham (SA20)
unique(state_crime_cs$treatyear)

res_cohort1 = feols(lmur ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs,
                    vcov = ~state)
summary(res_cohort1)
iplot(res_cohort1, ref.line = -1, main = "Sun & Abraham")

iplot(list(res_naive_1, res_cohort1), ref.line = -1,
      main = "Treatment's effect on Murder")
legend("topright", col = c(1, 2), pch = c(20, 17), 
       legend = c("TWFE", "Sun & Abraham"))

# Aside: If you'd prefer ggplot2 versions of these plots then you can try...
#library(ggiplot) # remotes::install_github("grant_mcdermott/ggiplot")
#library(ggplot2)
ggiplot(list("TWFE" = res_naive_1, "Sun & Abraham" = res_cohort1), 
        main = "",
        xlab = "Year",
        theme = theme_minimal())
ggsave(here("figures/figure1.png", width=8, height=4.5))
