#import data
library(readxl)
temp_sheets <- excel_sheets(path = "C:/Users/patsakon/Downloads/Nangrong.xlsx")
#plot preciptation(y) with time(x)

#save plot

Nangrong <- read_excel("C:/Users/patsakon/Downloads/Nangrong.xlsx",  range = "A6:M36")
tbl_temp_1 <- read_my_data("C:/Users/patsakon/Downloads/Nangrong.xlsx")