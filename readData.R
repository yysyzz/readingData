#csv
data <- read.csv("data.csv",header = TRUE)
library(plyr)
length(data[,VAL])
length(data[data$VAL==24 &  !is.na( data$VAL),37])
unique(data[,37])
typeof(data)

#xlsx
dat <- read.xlsx("data2.xlsx",sheetIndex = 1,header = TRUE,rowIndex = c(18:23),colIndex = c(7:15))
dta1 <- dta[c(18:23),c(7:15)]
dat <- dta1         
sum(dat$Zip*dat$Ext,na.rm=T)   

#xml
library(XML)
fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileurl,useInternalNodes = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]][[1]]
xmlSApply(rootNode[[1]],xmlValue)
zip <- xpathSApply(rootNode[[1]],"//zipcode",xmlValue)
length(zip[zip=="21231"])
