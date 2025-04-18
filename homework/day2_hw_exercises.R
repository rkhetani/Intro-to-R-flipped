## Day 2 Homework Exercises

### Data wrangling

# 1. Extract only those elements in `samplegroup` that are not KO (*nesting the logical operation is optional*).

# 2. Use the `samplegroup` factor we created in a previous lesson, and relevel it such that KO is the first level followed by CTL and OE. 

### Packages and Libraries

# 1. Install the tidyverse package (it is actually a suite of packages). NOTE: This suite of packages is only available in CRAN.

# 2. Load the tidyverse library. Do you see anything unusual when it loads?

# 3. Run sessionInfo().

############################

### Data wrangling: data frames, matrices, and lists

# 1. Return the genotype and replicate column values for Sample2 and Sample8.

# 2. Return the fourth and ninth values of the replicate column.

# 3. Extract the replicate column as a data frame.

# 4. Subset the metadata dataframe to return only the rows of data with a genotype of KO.

# 5. Create a list named random with the following components: metadata, age, list1, samplegroup, and number.

# 6. Extract the samplegroup component.

# 7. Set names for the random list you created in the last exercise.

# 8. Extract the age component using the $ notation

############################

### The %in% operator

# 1. Using the A and B vectors created above, evaluate each element in B to see if there is a match in A

# 2. Subset the B vector to only return those values that are also in A.

# 3. We have a list of 6 marker genes that we are very interested in. Our goal is to extract count data for these genes using the %in% operator from the rpkm_data data frame, instead of scrolling through rpkm_data and finding them manually.

#       i. First, let’s create a vector called important_genes with the Ensembl IDs of the 6 genes we are interested in:
        
        important_genes <- c("ENSMUSG00000083700", "ENSMUSG00000080990", "ENSMUSG00000065619", "ENSMUSG00000047945", "ENSMUSG00000081010", "ENSMUSG00000030970")
        
#       ii. Use the %in% operator to determine if all of these genes are present in the row names of the rpkm_data data frame.
        
#       iii. Extract the rows from rpkm_data that correspond to these 6 genes using [] and the %in% operator. Double check the row names to ensure that you are extracting the correct rows.
        
#       iv. Bonus question: Extract the rows from rpkm_data that correspond to these 6 genes using [], but without using the %in% operator.
        
############################ 
        
### Reordering and matching

# 1. Now that we know how to reorder using indices, let’s try to use it to reorder the contents of one vector to match the contents of another. Let’s create the vectors first and second as detailed below:
        
        first <- c("A","B","C","D","E")
        second <- c("B","D","E","A","C")  # same letters but different order
        
#        How would you reorder the second vector to match first?
     
# 2. After talking with your collaborator, it becomes clear that sample2 and sample9 were actually from a different mouse background than the other samples and should not be part of our analysis. Create a new variable called subset_rpkm that has these columns removed from the rpkm_ordered data frame.
        
# 3. Use the match() function to subset the metadata data frame so that the row names of the metadata data frame match the column names of the subset_rpkm data frame.           
                
