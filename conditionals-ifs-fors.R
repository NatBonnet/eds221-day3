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
