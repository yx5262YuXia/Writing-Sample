# ------------------------------------------------------------------------------
# name: Table 1.R
# author: Yu Xia
# description: Table 1 in paper. Original
# last updated: Jul 17, 2022
# ------------------------------------------------------------------------------


state_crime <- read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta"))

state_crime_year <- state_crime %>%
  filter(aftr==1 & year<1993) %>%
  group_by(year, state)%>%
  summarise(state=state,year=year)%>%
  mutate(year, state)
  
kbl(
  state_crime_year,
  caption = "Law Adopting Year and States",
  booktabs = TRUE,
  format = "latex",
  label = "tab:summarystats",
  col.names=c("Year","States")
) %>%
  kable_styling(latex_options = c("striped", "HOLD_position")) %>%
  
  write_lines(here("tables/Table_1.tex"))
