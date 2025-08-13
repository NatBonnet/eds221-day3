# basic if statement

burrito <- 1.5 #assigning object value

# write a short if statement
if(burrito > 2){
  print("I love burritos")
}

#example with strings
my_ships <- c("Millenium Falcon", "X-Wing", "Tie-Fighter", "Death Star")

stringr::str_detect(my_ships, pattern = "r")
phrase <- "I love burritos"

if(stringr::str_detect(phrase, "love")){
  print("Big burrito fan")
}
 
pika <- 89.1 # define size

if(pika >60){#define size of mega pikas
  print("mega pika")
} else{ #otherwise print normal
  print("normal pika")}

# Another example with strings

food <- "I love tacos"
if(stringr::str_detect(food, pattern = "burrios")){
  print("yay burritos")
}else{
  print("what about burritos?")
}

# more options with if-else if-else statements
marmot <- 2.8
if(marmot <0.5){
  print("small")
}else if(marmot >=0.5 & marmot <3) {
  print("medium")
}else { #everything else is a large marmot
  print("large")
}

# use switch function to write complicated if-else statements
species <- "mouse"
#all of this code is the same as several if else statements
switch(species, 
       "cat" = print("meow"), #same as writing an if statement
       "dog" = print("woof"), # same as else if
       "mouse" = print("squeak") #same as last else if 
)

# see next week dplyr::case_when()

# writing for loops

dog_names <- c("Teddy", "Khora", "Banjo", "Waffle")
print("my dog's name is Teddy")

paste("my dog's name is", dog_names[1])

print(paste("my dog's name is", dog_names[1])) # this would be super annoying to copy and paste over and over again

pupster <- 1
print(paste("my dog's name is", dog_names[pupster]))

i <- dog_names
for(i in dog_names){
  print(paste("my dog's name is", i))
}

# another for loop example

mass <- seq(from = 0, to = 3, by= 0.5)
i <- mass[1]

for(i in mass){
  new_value <- i+2
  print(new_value)
}

# practice same example but with indexing

for(i in 1:length(mass) #defining iterator using the length of the vector (defining values for i) this returns a list of 7 in this case because you are indexing from 0 to 3 in increments of 0.5 so 7 positions in the vector- same as writing seq_along(mass)
    ){
new_value <- mass[i] +2
print(new_value)
}


# antoher example with iterating by position(indexing)
tree_height <-c(1,2,6,10)

# example for the first case
tree_height[1]+ tree_height[2]

# convert into a generalizable expression
i <- 1
tree_height[i] + tree_height[i+1]

for(i in seq_along(tree_height)){
  val <- tree_height[i] + tree_height[i+1]
  print(val)
}

# for loops with conditional statements
animal <- c("cat", "dog", "dog", "zebra", "dog")
one_animal <- animal[2]
if(one_animal == "dog"){
  print("i love dogs")
} else{
    print("these are other animals")
}

for(i in seq_along(animal) #this is defining i in animals
    ){
if(animal[i] == "dog"){
  print("I love dogs")
}else {
  print("other animal")
}
}

# another for loop example with conditionals
#animal species

species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

# convert ages into respective animal ages

age_human <- c(3, 8, 4, 6, 12, 18)

# 1 human year = 7 in dog years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 in goat years
i <- 1

# allocate a space for output 

animal_ages <- vector(mode = "numeric", length = length(species)) #will create an empty vector with the appropriate list size
for(i in seq_along(species)){
if(species[i] == "dog"){
  animal_age <- age_human[i]*7
}else if (species[i] == "elephant"){
  animal_age <- age_human[i]*0.88
}else if(species[i] =="goat"){
  animal_age <- age_human[i]*4.7
}
  animal_ages[i] <- animal_age # outside of conditional stores the information in the empty vector we created above
}


# another example of storing

tigers <- c(29, 39, 82)
lions<- c(2, 18, 6)

big_cats <- vector(mode = "numeric", length = length(tigers)) #allocate storage for new values
for(i in seq_along(tigers)){
  total_cats <- tigers[i]+lions[i]
  big_cats[i] <- total_cats
}
# you can also lose total_cats and replace with big_cats[i]


mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for(i in 1:ncol(mtcars)){
mean_mtcars[i] <- mean(mtcars[[i]], na.rm = TRUE)
}

# a for loop over columns with a condition

library(palmerpenguins)


for(i in seq_along(penguins)){
if(is.numeric(penguins[[i]])){
penguin_median[i] <- median(penguins[[i]], na.rm = TRUE)
print("penguin median")
}else{
  print("data not numeric")
}
}


# functional programming

#apply() function iterates over columns or rows
# rewrite for loop for finding means of mtcars columns
apply(X= mtcars, MARGIN = 2, FUN = mean) # margin is by row or by column

library(tidyverse)

penguins |> 
  group_by(species) |>
  summarise(across(where(is.numeric), mean, na.rm = TRUE)) 


