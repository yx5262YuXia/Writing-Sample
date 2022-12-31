# ------------------------------------------------------------------------------
# name: Table 3.R
# author: Yu Xia
# description: Table 3 in paper. Original
# last updated: Aug 22, 2022
# ------------------------------------------------------------------------------

model1 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - clean drop yr aftr 92 and revise shalll accordingly.dta")) %>%
  filter(year<1993) %>%
  lm(lmur ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model2 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lrap ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model3 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(laga ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model4 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lrob ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model5 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lbur ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model6 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(laut ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model7 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(llar ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

# Here we supply our own standard errors b/c we want to 
# use heteroskedasticity-robust errors.
se1 <- model1 %>% vcovHC %>% diag %>% sqrt

se2 <- model2 %>% vcovHC %>% diag %>% sqrt

se3 <- model3 %>% vcovHC %>% diag %>% sqrt

se4 <- model4 %>% vcovHC %>% diag %>% sqrt

se5 <- model5 %>% vcovHC %>% diag %>% sqrt

se6 <- model6 %>% vcovHC %>% diag %>% sqrt

se7 <- model7 %>% vcovHC %>% diag %>% sqrt

tab_out <- stargazer(
  model1, model2, model3, model4, model5, model6, model7,
  se = list(se1, se2, se3, se4, se5, se6, se7),
  title = "Regression Output of TWFE",
  label = "tab:regression",
  covariate.labels=c("Shall issue law \\\\ adopted dummy"),
  dep.var.labels=c("Murder", "Rape", "\\shortstack{Aggravated \\\\ Assault}", "Robbery", "Burglary", "Auto Theft", "Larceny"),
  keep='shalll'
)

cat(tab_out, sep = '\n', file = ".../tables/Table_3.tex")

#For all years, i.e., take years after 1993 into account#

model1 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lmur ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model2 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lrap ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model3 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(laga ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model4 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lrob ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model5 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(lbur ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model6 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(laut ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

model7 <- 
  read_dta(here("data/clean/UpdatedStateLevelData-2010 - copy - raw.dta")) %>%
  filter(year<1993) %>%
  lm(llar ~ shalll + prison_1 + lpolicerate + rpcpi + rpcui + rpcim + rpcrpo + unemp + povrate + density +
       ppbm1019 + ppbm2029 + ppbm3039 + 
       ppwm1019 + ppwm2029 + ppwm3039 +
       yr70 + yr71 + yr72 + yr73 + yr74 + yr75 + yr76 + yr77 + yr78 + yr79 + yr80 + yr81 + yr82 + yr83 + yr84 + yr85 + yr86 + yr87 + yr88 + yr89 + 
       yr90 + yr91 + yr92 + yr93 + yr94 +
       trndAK + trndAL + trndAZ + trndAR + trndCA + trndCO + trndCT + trndDC + trndDE + trndFL + trndGA + trndHI + trndIA + trndID +
       trndIL + trndIN + trndKS + trndKY + trndLA + trndMA + trndMD + trndME + trndMI + trndMN + trndMO + trndMS + trndMT + trndNC + trndND +
       trndNE + trndNH + trndNJ + trndNM + trndNV + trndNY + trndOH + trndOK + trndOR + trndPA + trndRI + trndSC + trndSD + trndTN + trndTX +
       trndUT + trndVA + trndVT + trndWA + trndWI + trndWV + trndWY, data = .)

