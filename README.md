# sdsHomework5
This is a repo for SDS 313 Homework 5

Source of my data:
I used the player statistics from the National Women's Soccer League and narrowed down my results by specifically choosing to analyse the statistics from players in England, Australia, and Spain. This created a dataset of 5 players and provided insights into the performance of players in those specified countries. 

What analyses were run:
I first analyzed the distribution of the ages of the players by creating a histogram. The distribution of player ages in the dataset is slightly right-skewed (positively skewed), with most values falling between 15 and 35 years. The mean age of players in the National Women's Soccer League across Australia, England, and Spain is approximately 27.53 years, while the median age is 27 years. Because the mean is slightly greater than the median, this supports the conclusion that the distribution is positively skewed. Since the median is closer to Q1, the upper half of the distribution is longer, and the IQR shows that a larger spread exists above the median. The standard deviation of 4.16 years suggests a moderate variation in ages around the average.
I also investigated the relationship between minutes played and goals scored by a player using a scatterplot. The analysis showed that while goals scored fall within a typical range with few outliers, minutes played are more evenly distributed across players. Visually, this suggests a weak relationship between the two variables. The Pearson correlation coefficient, calculated at approximately 0.21, supports this observation, indicating a weak positive correlation between goals scored and minutes played. This suggests that although players who score more goals often spend more time on the field, playing additional minutes does not necessarily result in more goals.

Clear directions on reproducing the results:
The R script file and CSV must be saved in the same location. Ensure that the working directory is set when the R script and files are saved, such that the code may run.
