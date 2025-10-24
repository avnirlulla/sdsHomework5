PlayerStats <- read.csv("Homework5New.csv")
#read Homework4New.csv for a dataset to be referenced throughout this code
library(ggplot2)
#ggplot is necessary to create these graphs
stats_ggplot <- ggplot(PlayerStats)
#make the dataset into something that may be manipulated in ggplot

stats_ggplot +
  geom_histogram(aes(x = Age), binwidth = 2, fill = "#fec44f", color = "black") +
  labs(title = "Distribution of Player Ages", x = "Age", y = "Frequency") 
#use ggplot to create a histogram displaying the distribution of player ages

round(sd(PlayerStats$Age), 2)
round(median(PlayerStats$Age), 2)
round(mean(PlayerStats$Age), 2)
round(IQR(PlayerStats$Age), 2)
round(min(PlayerStats$Age), 2)
round(max(PlayerStats$Age), 2)
round(quantile(PlayerStats$Age, probs = c(0.25, 0.5, 0.75)), 2)
#calculate all relevant statistics to properly understand the graph, rounded to two decimal places: standard deviation, median, mean, IQR, minimum, maximum, specific quartiles


x <- PlayerStats$Player
#make the set, x, that the code randomly pulls from players among the PlayerStats dataset
set.seed(5)
#use set.seed to ensure the same player is chosen randomly

name <- sample(PlayerStats$Player,size=1)
#make a variable containing the randomly chosen player, using "the sample function"sample()"

stats_ggplot +
  geom_point(aes(x = Min, y = Goals, color = Player==name)) + 
  labs(title = "Comparison of Minutes Played and Goals Scored", x = "Minutes Played", y = "Goals Scored", color = name)
#make a scatter plot compaing minutes played and goals scored with the color distinguished by the variable that was just created
#set color in "aes()" to Player==name so color is distinguished whether the point is the set name
#set color in "labs()" to name so that a legend is created shwoing the colors vay whether the point is truly the set name or not

round(cor(PlayerStats$Min, PlayerStats$Goals), 2)
#find the pearson correlation coefficient to better understand how relevant the analysis is, rounded to 2 decimal places

