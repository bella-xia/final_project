
library(ggplot2)

R.Values <- data.frame(factor = c("Narcotics Calls", "Dirty Street", "Library card", "No Internet", "Child Poverty", "Female led", "Vacant", "Violent Crime", "Household Income", "# of Arts Businesses", "Poverty", "Rent Affordability", "Not in Labor Force", " % Black", "% White"),
                       r_val = c(0.349251987, 0.444360031, 0.048871282, 0.447225053, 0.578669446, 0.614308479, 0.426988525,
                               0.564681608, 0.664142797, 0.07328051, 0.604720498, 0.252483584, 0.448662017, 0.493497891, 
                               0.570469984))
length(R.Values)
p <- ggplot(data = R.Values,
            aes(x = factor, y = r_val)) +
            geom_bar(stat = "identity", width = 0.5, color = "black", fill = "red") + theme_light() + coord_flip()
p + labs(y = "Absolute Value of Correlation Coefficient (R)", x = "Factor", title = "Correlation of Factors With High School Completion Rate")


