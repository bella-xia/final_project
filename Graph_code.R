setwd("/Users/emily.perez-rodriguez/Desktop/Baltimore_Grad_Data")
getwd()

library(ggplot2)

# read in data from Baltimore Neighborhood Indicators Alliance
data_all <- read.csv("data.csv")


# Overdose vs Graduation rate

OD <-ggplot(data_all,
            aes(x = Narcotics_Calls, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
OD + labs(x = "Overdose calls per 1,000 Residents", y = "Completion Rate (%)") 


# children below poverty line vs Completion rate

PL <- ggplot(data_all,
             aes(x = X._Children_Poverty, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
PL + labs(x = "Children living under the poverty line (%)", 
          y = "Completion Rate (%)")

#Vacant and abandoned residential properties vs Completion Rate


VAP <- ggplot(data_all,
              aes(x = Vacant, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
VAP + labs(x = "Vacant and Abandoned Residential Properties (%)",
           y = "Completion Rate (%)")

# Percentage of Households with No Internet at Home vs Completion Rate 

no_internet <- ggplot(data_all,
                      aes(x = No_Internet, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
no_internet + labs(x = "Households with No Internet at Home (%)", y = "Completion Rate (%)")

## Violent Crime per 1,000 Residents vs Completion Rate


violent_crime <- ggplot(data_all,
                        aes(x = violent_crime, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
violent_crime + labs(x = "Violent Crime Rate per 1,000 Residents", y = "Completion Rate (%)")


# Percent of Female-headed Households with Children under 18 vs Completion Rate


f_led <- ggplot(data_all,
                aes(x = Female_led, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
f_led + labs(x = "Female-Headed Households with Children under 18 (%)",
             y = "Completion Rate (%)")



# Number of Persons with Library Cards per 1000 Residents


num_library_cards <- ggplot(data_all,
                            aes(x = Library_card, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
num_library_cards + labs(x = "Number of Persons with Library Cards per 1,000 Residents",
                         y = "Completion Rate (%)")


# Rate of Dirty Streets and Alleys Reports per 1,000 Residents vs Completion Rate


dirty_street <- ggplot(data_all,
                       aes(x = Dirty_Street, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
dirty_street + labs(x = "Rate of Dirty Streets and Alleys Reports per 1,000 Residents",
                    y = "Completion Rate (%)")

# household income vs Completion Rate
household_income = ggplot(data_all,
                          aes(x = Household_Income, y = Completion_Rate)) + 
                          geom_point() + geom_smooth(method = lm, se = FALSE)
household_income + labs(x = "Household Income ($)", y = "Completion Rate (%)")


# Number of Arts Businesses per 1000 vs Completion Rate

art_business = ggplot(data_all,
                      aes(x = num_arts_business, y = Completion_Rate)) +
  geom_point() + geom_smooth(method = lm, se = FALSE)
art_business + labs( x = "Number of arts Related Businesses per 1000 Residents", y = "Completion Rate")
