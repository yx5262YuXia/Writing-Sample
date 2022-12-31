use "D:\Xia Yu\R data\Writing Sample 2022\clean\UpdatedStateLevelData-2010 - copy - clean drop yr aftr 92 and revise shalll accordingly.dta" 
gen time_til=year-treatyear if treatyear!=.
save "D:\Xia Yu\R data\Writing Sample 2022\clean\UpdatedStateLevelData-2010 - aftr revise - gen time_til.dta"
