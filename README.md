# Module 15 | Challenge - MechaCar Manufacturing
Using R and R Studio

## Linear Regression to Predict MPG

![Deliverable 1 step 6](https://github.com/JimmyJ-D/MechaCar_Statistical_Analysis/blob/main/images/Deliverable%201%20step%206.png)

- Which variables / coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables that provided the non-random amount of variance in the linear regression module to the mpg values are Vehicle Weight, Spoiler Angle and All Wheel Drive. Of the six variances in the the MechaCar dataframe, Vehicle Length and Ground Clearance had the largest Pr(>|t|) values so they measured the largest amount of random variance in the linear regression module.

- Is the slop of the linear model considered to be zero?
- Why or why not?
#ASK FOR HELP HERE NOT SURE
P-value 5.35e-11 is 0.0000000000535
The slope of the linear model is NOT zero. Our P-value is 5.35e-11, which converts to 0.0000000000535

- Does this linear model predict mpg of MechaCar prototypes effectively?
- Why or why not?

Using the multiple linear regression module it can predict mpg using Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance and All Wheel Drive parameters, 71% of the time. The module returned a Multiple R-squared valued of 0.7149. We can predict 71% of the time using the data provided that we will get a non-random predictions of mpg.


## Summary Statistics on Suspension Coils


- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

![Deliverable 2 - total_summary](Deliverable 2 - total_summary)

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Using the summarize() function for the total_summary dataframe the get a variance of 62.29356. The total_summary variance does not exceed the 100 pounds per square inch MechaCar suspension coils dictates.

![Deliverable 2 - lot_summary](Deliverable 2 - lot_summary)

While total_summary variance is with the 100 pounds per square inch, we can use the groupby() and summarize() function to examine each of the three lots that are included in the total_summary dataframe. Lots 1 and 2 are with the 100 pounds per square inch variance at 0.9795 and 7.4693 respectfully. Lot 3 variance is 170.2861 pounds per square inch, this is 58.72% above the acceptable established level of 100 pounds per square inch.  


## T-Tests on Suspension Coils


Using the T Test method we can examine the lots means against a given population means of 1500 pounds per square inch. We will using the significance level of 0.05 for our comparison.

Lot 1

![ttest_lot1](ttest_lot1)

The lot 1, T Test produced a p-value of 1. The p-value is above our significance level of 0.05 percent. Therefore, we do not have sufficient evidence to reject the null hypothesis, and the two means are statistically similar.

Lot 2

![ttest_lot2](ttest_lot2)

The lot 2, T Test produced a p-value of 0.6072. The p-value is above our significance level of 0.05 percent. Therefor, we do not have sufficient evidence to reject the null hypothesis, and the two means are statistically similar.

Lot 3

![ttest_lot3](ttest_lot3)

The lot 3, T Test produced a p-value of 0.04168. The p-value is below our significance level of 0.05 percent. Therefore, we have sufficient evidence to reject the null hypothesis. The two means are not statistically similar.


## Study Design: MechaCar vs Competition

Today's car market have a large collection of vehicle to choose from. There are two drive, all wheel drive, heavy duty truck, light trucks, SUVs, and hybrid to name a just a few.  If would be beneficial to MechaCar to compare MPG and vehicle total weight across large real-world numerical means. We can deploy the ANOVA to compare the means of a continuous numerical variables across a number of groups or (or vehicle types). MechaCar would need car data like MPG and vehicle weight from its competitors to included (weight with batteries for hybrid). The ANOVA can be used in multiple ways. The one-way ANOVA is used to ttest the means of a single dependent variable across a single independent variable with multiple groups. We want to reject the null hypothesis that there is not a difference between MechaCar and its competition. 
