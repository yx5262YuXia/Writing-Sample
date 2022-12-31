use "D:\Xia Yu\R data\Writing Sample 2022\clean\UpdatedStateLevelData-2010 - copy - clean drop yr aftr 92.dta" 
replace shalll=0 if treatyear==.
gen treated=1 if treatyear!=.
replace treated=0 if treatyear==.
