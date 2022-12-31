# ------------------------------------------------------------------------------
# name: figure.R
# author: Yu Xia
# description: 1st attempt using SA
# last updated: Aug 17, 2022
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

# This time, our SA implementation is a little different because we don't have a
# "never treated" group. (Everyone get's treated eventually.) So, we'll use our
# last treated cohort (i.e. 2004) as the control group. In practice this means
# that we have to subset our data by dropping all observations after this final
# treatment year. You could create a new dataset, but here we'll just use the
# `subset` argument to drop these observations on the fly.
res_cohort1 = feols(lmur ~ sunab(treatyear, year) | fipsstat + year, 
                   state_crime_cs,
                   vcov = ~state)
summary(res_cohort1)
iplot(res_cohort1, ref.line = -1, main = "Sun & Abraham")

iplot(list(res_naive_1, res_cohort1), ref.line = -1,
      main = "Treatment's effect on Murder")
legend("topright", col = c(1, 2), pch = c(20, 17), 
       legend = c("TWFE", "Sun & Abraham"))

# The full ATT
summary(res_cohort1, agg = "att")

# Full disaggregation 
summary(res_cohort1)


res_cohort2 = feols(lrap ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs, subset = ~year<1992,
                    vcov = ~state)

res_cohort3 = feols(laga ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs, subset = ~year<1992,
                    vcov = ~state)

res_cohort4 = feols(lrob ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs, subset = ~year<1992,
                    vcov = ~state)

res_cohort5 = feols(lbur ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs, subset = ~year<1992,
                    vcov = ~state)

res_cohort6 = feols(laut ~ sunab(treatyear, year) | fipsstat + year, 
                    state_crime_cs, subset = ~year<1992,
                    vcov = ~state)
#if you want to draw all SAs in one graph without TWFE#
iplot(list(res_cohort1, res_cohort2, res_cohort3, res_cohort4, res_cohort5, res_cohort6), ref.line = -1,
      main = "")
legend("topright", col = c(1, 2, 3, 4, 5, 6),  pch = c(20, 17, 15, 21, 24, 22),
       legend = c("lmur", "lrap", "laga", "lrob", "lbur", "laut"), horiz = TRUE)

# The full ATT (Take the 1st as example)
summary(res_cohort1, agg = "att")

# Full disaggregation 
summary(res_cohort1)


# Aside: If you'd prefer ggplot2 versions of these plots then you can try...
library(ggiplot) # remotes::install_github("grant_mcdermott/ggiplot")
library(ggplot2)
ggplot(list("Sun & Abraham" = res_cohort), 
        main = "Treatment's effect on outcome (y)")
