## Reading in and inspecting data

# 2. Read the csv file into your environment and assign it to a variable called `animals`. Be sure to check that your row names are the different animals.
animals <- read.csv("data/animals.csv")

# 3. Check to make sure that `animals` is a dataframe.
class(animals)

# 4. How many rows are in the `animals` dataframe? How many columns?
nrow(animals)
ncol(animals)

## Data wrangling

# 1. Extract the `speed` value of 40 km/h from the `animals` dataframe.
animals[1,1]
animals[which(animals$speed == 40), 1]
animals[which(animals$speed == 40), "speed"]
animals$speed[which(animals$speed == 40)]

# 2. Return the rows with animals that are the `color` Tan.
animals[c(2,5),]
animals[which(animals$color == "Tan"),]

# 3. Return the rows with animals that have `speed` greater than 50 km/h and output only the `color` column. Keep the output as a data frame.  
animals[which(animals$speed > 50), "color", drop =F]

# 4. Change the color of "Grey" to "Gray". 
animals$color[which(animals$color == "Grey")] <- "Gray"
animals[which(animals$color == "Grey"), "color"] <- "Gray"

# 5. Create a list called `animals_list` in which the first element contains the speed column of the `animals` dataframe and the second element contains the color column of the `animals` dataframe. 
animals_list <- list(animals$speed, animals$color)

# 6. Give each element of your list the appropriate name (i.e speed and color).
names(animals_list) <- colnames(animals)

## Plotting

#1. Change the animals data frame to a tibble called animals_tb. Save the row names to a column called animal_names before turning it into a tibble.
animals_tb <- animals %>%
        rownames_to_column(var = "animal_names") %>%
        as_tibble()

#2. Use ggplot2 to plot the animal names (x-axis) versus the speed of the animal (y-axis) in animals_tb using a scatterplot. Customize the plot to display as shown below.
ggplot(animals_tb) +
        geom_point(aes(x = animal_names, y = speed), color = "purple") +
        theme_bw() +
        ggtitle("Speed Comparisons Between Animals") + 
        ylab("Speed (km/h)") +
        xlab("Animal") +
        theme(plot.title=element_text(hjust=0.5))

#3. We decide that our plot would look better with the animal names ordered from slowest to fastest. Let's try to plot that!
        geom_point(aes(x = animal_names, y = forcats::fct_infreq(speed)), color = "purple") +
        theme_bw() +
        ggtitle("Speed Comparisons Between Animals") + 
        ylab("Speed (km/h)") +
        xlab("Animal") +
        theme(plot.title=element_text(hjust=0.5))
