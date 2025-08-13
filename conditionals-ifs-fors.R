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



