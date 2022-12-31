# ------------------------------------------------------------------------------
# name: Table 4.R
# author: Yu Xia
# description: Table 4 in paper. Original
# last updated: Aug 15, 2022
# ------------------------------------------------------------------------------

# load data
state_crime_cs <- read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - clean drop yr aftr 92.dta"))
state_crime_cs$treatyear[is.na(state_crime_cs$treatyear)] <- 0 # untreated units have effective year of 0. "treat_date" indentifies the date of treatment.

# Estimating the effect on y2 (constant) and y (dynamic treatment)
atts1 <- att_gt(yname = "lmur",  # LHS variable
               tname = "year", # panel time variable
               idname = "fipsstat", # firms' panel id variable
               gname = "treatyear", # first treatment period variable
               data = state_crime_cs, # data
               xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
               #xformla = ~ l_police, # with covariates
               #can proceed only if ppbm1019 + ppbm2029 + ppbm3039 + ppwm1019 + ppwm2029 + ppwm3039 was deleted.
               est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
               control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
               bstrap = TRUE, # if TRUE compute bootstrapped SE
               biters = 1000, # number of bootstrap iterations
               print_details = FALSE, # if TRUE, print detailed results
               clustervars = "state", # cluster level
               panel = TRUE) # whether the data is panel or repeated cross-sectional

atts2 <- att_gt(yname = "lrap",  # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

atts3 <- att_gt(yname = "laga",  # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

atts4 <- att_gt(yname = "lrob", # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

atts5 <- att_gt(yname = "lbur", # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

atts6 <- att_gt(yname = "laut", # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

atts7 <- att_gt(yname = "llar", # LHS variable
                tname = "year", # panel time variable
                idname = "fipsstat", # firms' panel id variable
                gname = "treatyear", # first treatment period variable
                data = state_crime_cs, # data
                xformla = ~ prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density, 
                #xformla = ~ l_police, # with covariates
                est_method = "dr", # "dr" is doubly robust. "ipw" is inverse probability weighting. "reg" is regression
                control_group = "notyettreated", # set the comparison group which is either "nevertreated" or "notyettreated" 
                bstrap = TRUE, # if TRUE compute bootstrapped SE
                biters = 1000, # number of bootstrap iterations
                print_details = FALSE, # if TRUE, print detailed results
                clustervars = "state", # cluster level
                panel = TRUE) # whether the data is panel or repeated cross-sectional

agg_effects_a <- aggte(atts1, type = "group", na.rm = TRUE)

summary(agg_effects_a)

agg_effects_b <- aggte(atts2, type = "group", na.rm = TRUE)

summary(agg_effects_b)

agg_effects_c <- aggte(atts3, type = "group", na.rm = TRUE)

summary(agg_effects_c)

agg_effects_d <- aggte(atts4, type = "group", na.rm = TRUE)

summary(agg_effects_d)

agg_effects_e <- aggte(atts5, type = "group", na.rm = TRUE)

summary(agg_effects_e)

agg_effects_f <- aggte(atts6, type = "group", na.rm = TRUE)

summary(agg_effects_f)

agg_effects_g <- aggte(atts7, type = "group", na.rm = TRUE)

summary(agg_effects_g)

agg_effects1 <- aggte(atts1, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects2 <- aggte(atts2, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects3 <- aggte(atts3, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects4 <- aggte(atts4, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects5 <- aggte(atts5, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects6 <- aggte(atts6, type = "simple", balance_e=TRUE, na.rm = TRUE)

agg_effects7 <- aggte(atts7, type = "simple", balance_e=TRUE, na.rm = TRUE)

summary(agg_effects1, agg_effects2, agg_effects3, agg_effects4, agg_effects5, agg_effects6, agg_effects7)

summary(agg_effects1[["overall.att"]], agg_effects1[["overall.se"]])

###########################################################################
#some tires of writing the summary into latex below
table <- agg_effects1 %>%
  mutate(agg_effects1[["overall.att"]], agg_effects1[["overall.se"]])

stargazer(agg_effects)

overall_att_effects <- agg_effects %>%
  summarise(ATT=)%>%
  mutate(state, year)

stargazer(
  agg_effects1, 
  se = list(agg_effects1[["overall.se"]], agg_effects2[["overall.se"]]),
  out = here("tables/Table_4.tex"),
  title = "Regression Output. Omitted category is Black Females.",
  label = "tab:regression"
)

stargazer(
  agg_effects1, 
  se = list(agg_effects1[["overall.se"]], agg_effects2[["overall.se"]]),
  out = here("tables/Table_4.tex"),
  title = "Regression Output. Omitted category is Black Females.",
  label = "tab:regression"
)
############################################################################

# Group-time ATTs
summary(atts)

# Plot group-time ATTs
ggdid(atts)

