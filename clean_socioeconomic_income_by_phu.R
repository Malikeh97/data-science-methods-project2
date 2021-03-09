# socioeconomic status (median after-tax income of households) by PHU 
# reference: 2016 census Canada
# note: PHU = Public Health Unit (34 total in Ontario)

# dataset is ~ 40 MB so not uploaded onto Github. But can be downloaded as zip file here:
# https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/prof/details/download-telecharger/comp/GetFile.cfm?Lang=E&FILETYPE=CSV&GEONO=058 

# read in census data
df <- read.csv("socioeconomic_by_phu_2016Census.csv") 

#df <- df[-(1:2990),] # remove rows for next step (modulo row )
#socioec <- filter(df, row_number() %% 2247  == 0) 

# get all "Median after-tax income of households in 2015 ($)" rows
socioec <- df %>% 
         filter(DIM..Profile.of.Health.Regions..2247. == "Median after-tax income of households in 2015 ($)")

## make sure PHU names in census df matches those in covid df
t <- gsub(" /.*", "", socioec$GEO_NAME)
t2 <- gsub("The ", "", t)
t3 <- gsub("Peterborough County--City Health Unit", "Peterborough County-City Health Unit", t2)
t4 <- gsub("Huron County Health Unit", "Huron Perth Health Unit", t3)
t5 <- gsub("Elgin-St. Thomas Health Unit", "Southwestern Public Health", t4)
socioec$phu_names <- t5

# load in covid testing data to get PHU names
covid_df = read.csv("https://data.ontario.ca/dataset/a2dfa674-a173-45b3-9964-1e3d2130b40f/resource/07bc0e21-26b5-4152-b609-c1958cb7b227/download/testing_metrics_by_phu.csv")
covid_df <- covid_df %>% filter(PHU_name != "Ontario") # remove 'Ontario' rows since only considering LOCAL phu regions 
phu_labels <- unique(covid_df$PHU_name)

# append (phu_name, household_income) to new df, then export as separarate .csv file
curr_df = data.frame()

for (phu_name in phu_labels){
  tmp <- socioec %>% filter(
    phu_names ==  phu_name
  )
  #print(tmp) # PRINT
  income <- as.numeric(tmp$Dim..Sex..3...Member.ID...1...Total...Sex)  # extract median household income for that PHU
  vec <- c(phu_name, as.numeric(income))
  #print(vec) # PRINT
  curr_df <- rbind(curr_df, vec) # add row to df
  #names(curr_df) <- c("PHU_name", "median_household_income")
}
names(curr_df) <- c("PHU_name", "median_house_hold_income_after_tax")
curr_df

# export as .csv
write.csv(curr_df,"socioeconomic_phu.csv", row.names = FALSE)

# check 
d <- read.csv("socioeconomic_phu.csv")
head(d)
dim(d)

