use "D:\Xia Yu\夏宇的文档\读书\textbook\Econ\Causal Inference\Assignment\Lott and Mustard\data\clean\UpdatedStateLevelData-2010.dta" 
replace treatyear=1986 if FL==1
replace treatyear=1988 if GA==1
replace treatyear=1989 if ID==1
replace treatyear=1979 if IN==1
replace treatyear=1984 if ME==1
replace treatyear=1989 if MS==1
replace treatyear=1990 if MT==1
replace treatyear=1989 if OR==1
replace treatyear=1988 if PA==1
replace treatyear=1987 if VA==1
replace treatyear=1988 if WV==1
save "D:\Xia Yu\夏宇的文档\读书\textbook\Econ\Causal Inference\Assignment\Lott and Mustard\data\clean\UpdatedStateLevelData-2010.dta", replace
