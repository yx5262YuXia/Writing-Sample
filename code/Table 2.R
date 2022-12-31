# ------------------------------------------------------------------------------
# name: Table 2.R
# author: Yu Xia
# description: Table 2 in paper. Original
# last updated: Aug 22, 2022
# ------------------------------------------------------------------------------
state_crime <- read_dta(here("data/clean/UpdatedStateLevelData-2010 - aftr revise - gen time_til.dta"))

state_crime$crime <- state_crime$murder + state_crime$rape + state_crime$assault + state_crime$rob + state_crime$burg + state_crime$auto + state_crime$larc + state_crime$rpcpi + state_crime$unemp + state_crime$policerate + state_crime$density

options(scipen = 999)
options(digits=3)

state_crime_sumstats <- state_crime %>%
  summarize(across(
    c(murder, rape, assault, rob, burg, auto, larc, rpcpi, unemp, policerate, density),
    list(
      "N. Obs" = length,
      "Mean" = mean,
      "Std. Dev" = sd
    )
  )) %>%
  pivot_longer(
    cols = everything(),
    names_sep = "_",
    names_to = c("Variable", ".value")
  )

translation_table <- tribble(
  ~short_name, ~long_name,
  "murder", "Murder",
  "rape", "Rape", 
  "assault", "Aggravated Assault",
  "rob", "Robbery",
  "burg", "Burglary",
  "auto", "Auto Theft",
  "larc", "Larceny",
  "rpcpi", "Real per Capita Personal Income",
  "unemp", "Unemployment Rate",
  "policerate","Police Rate",
  "density", "Population Density",
)

renamed_table <-
  state_crime_sumstats %>%
  left_join(translation_table, c("Variable" = "short_name")) %>%
  mutate(Variable = coalesce(long_name, Variable)) %>%
  select(-long_name)

renamed_table %>%
  kbl(caption = "Statistics Summary",
      format = "latex") %>%
  kable_styling(latex_options = c("striped", "hold_position"))%>%
  
  write_lines(here("tables/Table_2.tex"))
