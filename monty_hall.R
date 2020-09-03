doorPick <- function(){
  return(ceiling(runif(1, 0, 3)))
}

doors <- c(1,2,3)

###Monty randomly picks between the two remaining
randomResults <- c()

for(i in 1:10000){
  actualDoor <- doorPick()
  myDoor <- doorPick()
  
  doorsRemain <- doors[doors!=myDoor]
  
  doorOpen <- sample(doorsRemain,1)
  
  ###Switch My Door
  myDoor <- doorsRemain[doorsRemain!=doorOpen]
  
  randomResults[i] <- ifelse(actualDoor==myDoor,1,0)
}

randomFreq <- sum(randomResults)

###Monty chooses the door
notRandomResults <- c()

actualDoor <- doorPick()
myDoor <- doorPick()

doorsRemain <- doors[doors!=myDoor]

doorOpen <- sample(doorsRemain,1)

###Switch My Door
myDoor <- doorsRemain[doorsRemain!=doorOpen]

randomResults[i] <- ifelse(actualDoor==myDoor,1,0)

for(i in 1:10000){

}

randomFreq <- sum(randomResults)