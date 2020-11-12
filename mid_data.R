

#Read file
covid = fread("data/Provisional_COVID-19_Death_Counts_by_Sex__Age__and_State.csv")

#Calculate proportionate mortality ratio due to COVID-19
covid$PMR=covid$`COVID-19 Deaths`/covid$`Total Deaths`


covid_2=covid[which(covid$Sex != "All Sexes" & covid$State != "United States" & covid$`Age group`!="All Ages"),]
covid_2=covid_2[which(covid_2$`Age group` == "Under 1 year" | covid_2$`Age group` == "1-4 years" | covid_2$`Age group` == "5-14 years" | covid_2$`Age group` == "15-24 years" | covid_2$`Age group` == "25-34 years" | covid_2$`Age group` == "35-44 years" | covid_2$`Age group` == "45-54 years" | covid_2$`Age group` == "55-64 years" | covid_2$`Age group` == "65-74 years" | covid_2$`Age group` == "75-84 years" | covid_2$`Age group` == "85 years and over")]
covid_2=na.omit(covid_2)
covid_2$`Age group`[which(covid_2$`Age group`=="Under 1 year")]="0-1 years"
