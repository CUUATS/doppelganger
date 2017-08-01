## Doppelganger PUMS dirty data cleannign and preparation

### 2014 ACS 1-Year numbers
### Read in the orignal population file
ss14pil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2014PUMS1Year/csv_pil/ss14pil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss14pil_Original_Champaign=subset(ss14pil_Original,PUMA=="2100")
### Filter necessary columns: SERIALNO, PUMA, PWGTP, AGEP, SEX, WAGP
ss14pil_Champaign=ss14pil_Original_Champaign[,c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP")]
ss14pil_Champaign$ID <- seq.int(nrow(ss14pil_Champaign))
ss14pil_Champaign$ID2 <- ss14pil_Champaign$ID-1
ss14pil_Champaign=subset(ss14pil_Champaign,select=c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","ID2"))
colnames(ss14pil_Champaign) <- c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","")
ss14pil_Champaign[is.na(ss14pil_Champaign)] <- 0
ss14pil_Champaign<-ss14pil_Champaign[,c(7,1, 2, 3,4,5,6)]
### Household table
ss14hil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2014PUMS1Year/csv_hil/ss14hil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss14hil_Original_Champaign=subset(ss14hil_Original,PUMA=="2100")
### Filter necessary columns
ss14hil_Champaign=ss14hil_Original_Champaign[,c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "HINCP")]
ss14hil_Champaign$ID <- seq.int(nrow(ss14hil_Champaign))
ss14hil_Champaign$ID2 <- ss14hil_Champaign$ID-1
ss14hil_Champaign=subset(ss14hil_Champaign,select=c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "HINCP","ID2"))
colnames(ss14hil_Champaign) <- c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "FINCP","")
ss14hil_Champaign<-ss14hil_Champaign[,c(7,1, 2, 3,4,5,6)]
ss14hil_Champaign[is.na(ss14hil_Champaign)] <- 0

write.table(ss14pil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2014/Population_2014_dirty_1year.csv", sep = ",",col.names = TRUE, row.names=FALSE)
write.table(ss14hil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2014/Household_2014_dirty.csv_1year", sep = ",",col.names = TRUE, row.names=FALSE)


### 2014 ACS 5-Year numbers
### Read in the orignal population file
ss14pil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2014PUMS5Year/csv_pil/ss14pil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss14pil_Original_Champaign=subset(ss14pil_Original,PUMA00=="2100")
### Filter necessary columns: SERIALNO, PUMA, PWGTP, AGEP, SEX, WAGP
ss14pil_Champaign=ss14pil_Original_Champaign[,c("SERIALNO", "PUMA00", "PWGTP", "AGEP", "SEX", "WAGP")]
ss14pil_Champaign$ID <- seq.int(nrow(ss14pil_Champaign))
ss14pil_Champaign$ID2 <- ss14pil_Champaign$ID-1
ss14pil_Champaign=subset(ss14pil_Champaign,select=c("SERIALNO", "PUMA00", "PWGTP", "AGEP", "SEX", "WAGP","ID2"))
colnames(ss14pil_Champaign) <- c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","")
ss14pil_Champaign[is.na(ss14pil_Champaign)] <- 0
ss14pil_Champaign<-ss14pil_Champaign[,c(7,1, 2, 3,4,5,6)]
### Household table
ss14hil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2014PUMS5Year/csv_hil/ss14hil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss14hil_Original_Champaign=subset(ss14hil_Original,PUMA00=="2100")
### Filter necessary columns
ss14hil_Champaign=ss14hil_Original_Champaign[,c("SERIALNO", "PUMA00", "WGTP", "NP", "VEH", "HINCP")]
ss14hil_Champaign$ID <- seq.int(nrow(ss14hil_Champaign))
ss14hil_Champaign$ID2 <- ss14hil_Champaign$ID-1
ss14hil_Champaign=subset(ss14hil_Champaign,select=c("SERIALNO", "PUMA00", "WGTP", "NP", "VEH", "HINCP","ID2"))
colnames(ss14hil_Champaign) <- c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "FINCP","")
ss14hil_Champaign<-ss14hil_Champaign[,c(7,1, 2, 3,4,5,6)]
ss14hil_Champaign[is.na(ss14hil_Champaign)] <- 0

write.table(ss14pil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2014/Population_2014_dirty_5year.csv", sep = ",",col.names = TRUE, row.names=FALSE)
write.table(ss14hil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2014/Household_2014_dirty_5year.csv", sep = ",",col.names = TRUE, row.names=FALSE)




### 2015 ACS 1-Year numbers
### Read in the orignal population file
ss15pil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2015PUMS1Year/csv_pil/ss15pil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss15pil_Original_Champaign=subset(ss15pil_Original,PUMA=="2100")
### Filter necessary columns: SERIALNO, PUMA, PWGTP, AGEP, SEX, WAGP
ss15pil_Champaign=ss15pil_Original_Champaign[,c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP")]
ss15pil_Champaign$ID <- seq.int(nrow(ss15pil_Champaign))
ss15pil_Champaign$ID2 <- ss15pil_Champaign$ID-1
ss15pil_Champaign=subset(ss15pil_Champaign,select=c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","ID2"))
colnames(ss15pil_Champaign) <- c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","")
ss15pil_Champaign[is.na(ss15pil_Champaign)] <- 0
ss15pil_Champaign<-ss15pil_Champaign[,c(7,1, 2, 3,4,5,6)]
### Household table
ss15hil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2015PUMS1Year/csv_hil/ss15hil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss15hil_Original_Champaign=subset(ss15hil_Original,PUMA=="2100")
### Filter necessary columns
ss15hil_Champaign=ss15hil_Original_Champaign[,c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "HINCP")]
ss15hil_Champaign$ID <- seq.int(nrow(ss15hil_Champaign))
ss15hil_Champaign$ID2 <- ss15hil_Champaign$ID-1
ss15hil_Champaign=subset(ss15hil_Champaign,select=c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "HINCP","ID2"))
colnames(ss15hil_Champaign) <- c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "FINCP","")
ss15hil_Champaign<-ss15hil_Champaign[,c(7,1, 2, 3,4,5,6)]
ss15hil_Champaign[is.na(ss15hil_Champaign)] <- 0

write.table(ss15pil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2015/Population_2015_dirty_1year.csv", sep = ",",col.names = TRUE, row.names=FALSE)
write.table(ss15hil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2015/Household_2015_dirty_1year.csv", sep = ",",col.names = TRUE, row.names=FALSE)




### 2015 ACS 5-Year numbers
### Read in the orignal population file
ss15pil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2015PUMS5Year/csv_pil/ss15pil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss15pil_Original_Champaign=subset(ss15pil_Original,PUMA00=="2100")
### Filter necessary columns: SERIALNO, PUMA, PWGTP, AGEP, SEX, WAGP
ss15pil_Champaign=ss15pil_Original_Champaign[,c("SERIALNO", "PUMA00", "PWGTP", "AGEP", "SEX", "WAGP")]
ss15pil_Champaign$ID <- seq.int(nrow(ss15pil_Champaign))
ss15pil_Champaign$ID2 <- ss15pil_Champaign$ID-1
ss15pil_Champaign=subset(ss15pil_Champaign,select=c("SERIALNO", "PUMA00", "PWGTP", "AGEP", "SEX", "WAGP","ID2"))
colnames(ss15pil_Champaign) <- c("SERIALNO", "PUMA", "PWGTP", "AGEP", "SEX", "WAGP","")
ss15pil_Champaign[is.na(ss15pil_Champaign)] <- 0
ss15pil_Champaign<-ss15pil_Champaign[,c(7,1, 2, 3,4,5,6)]

### Household table
ss15hil_Original <- read.csv(file="L:/Urbansim/Data_preparation/PUMS/2015PUMS5Year/csv_hil/ss15hil.csv", header=TRUE, sep=",")
### Filter Champaign County: PUMA=2100
ss15hil_Original_Champaign=subset(ss15hil_Original,PUMA00=="2100")
### Filter necessary columns
ss15hil_Champaign=ss15hil_Original_Champaign[,c("SERIALNO", "PUMA00", "WGTP", "NP", "VEH", "HINCP")]
ss15hil_Champaign$ID <- seq.int(nrow(ss15hil_Champaign))
ss15hil_Champaign$ID2 <- ss15hil_Champaign$ID-1
ss15hil_Champaign=subset(ss15hil_Champaign,select=c("SERIALNO", "PUMA00", "WGTP", "NP", "VEH", "HINCP","ID2"))
colnames(ss15hil_Champaign) <- c("SERIALNO", "PUMA", "WGTP", "NP", "VEH", "FINCP","")
ss15hil_Champaign<-ss15hil_Champaign[,c(7,1, 2, 3,4,5,6)]
ss15hil_Champaign[is.na(ss15hil_Champaign)] <- 0

write.table(ss15pil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2015/Population_2015_dirty_5year.csv", sep = ",",col.names = TRUE, row.names=FALSE)
write.table(ss15hil_Champaign, file = "L:/Urbansim/doppelganger-master/doppelganger-CU/cu-examples/cu-sample_data/R/2015/Household_2015_dirty_5year.csv", sep = ",",col.names = TRUE, row.names=FALSE)
              
