use "D:\Xia Yu\R data\Writing Sample 2022\clean\UpdatedStateLevelData-2010 - copy - clean with yr aftr 92.dta" 
drop if year>=1993
replace treatyear=. if treatyear>=1993
