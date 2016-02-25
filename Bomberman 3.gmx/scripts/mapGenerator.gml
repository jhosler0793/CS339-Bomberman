#define mapGenerator


//Adds Bomberman to the stage
for(i = 0; i < 1; i++) {
    spaceFill = false
    xcor = floor(random_range(0, maxX))
    ycor = floor(random_range(0, maxY))
    
    while spaceFill == false {
        if myMatrix[xcor, ycor] == "0" {
            myMatrix[xcor, ycor] = "1"
            spaceFill = true
        }
        else {
            xcor = floor(random_range(0, maxX))
            ycor = floor(random_range(0, maxY))
         
        }
    }
}

//Finds the bomberMan instance within the matrix
bomberManX = instanceFinderX("1")
bomberManY = instanceFinderY("1")

//Adds Enemies to the matrix

for(i = 0; i < maxEnemy; i++) {
    spaceFill = false
    xcor = floor(random_range(0, maxX))
    ycor = floor(random_range(0, maxY))
    
    while spaceFill == false {
        if myMatrix[xcor, ycor] == "0" and manhattanDistance(xcor, ycor, bomberManX, bomberManY) > minDistance{
            if numOfFrogMan > 0 and i >= 1 and comDistance("5", xcor, ycor, 3) and comDistance("6", xcor, ycor, 3) and comDistance("7", xcor, ycor, 3) and comDistance("8", xcor, ycor, 3) {
                myMatrix[xcor, ycor] = "5"
                spaceFill = true
                numOfFrogMan--
            }
            else if numOfAngryTree > 0 and i >= 1 and comDistance("5", xcor, ycor, 3) and comDistance("6", xcor, ycor, 3) and comDistance("7", xcor, ycor, 3) and comDistance("8", xcor, ycor, 3) {
                myMatrix[xcor, ycor] = "7"
                spaceFill = true
                numOfAngryTree--
            }
            else if numOfMenuBirdy > 0 and i >= 1 and comDistance("5", xcor, ycor, 3) and comDistance("6", xcor, ycor, 3) and comDistance("7", xcor, ycor, 3) and comDistance("8", xcor, ycor, 3) {
                myMatrix[xcor, ycor] = "6"
                spaceFill = true
                numOfMenuBirdy--
            }
            else if numOfGoblin > 0 and i >= 1 and comDistance("5", xcor, ycor, 3) and comDistance("6", xcor, ycor, 3) and comDistance("7", xcor, ycor, 3) and comDistance("8", xcor, ycor, 3) {
                myMatrix[xcor, ycor] = "8"
                spaceFill = true
                numOfGoblin--
            }
            else {
                if i < 1 {
                    if  numOfFrogMan > 0 {
                        myMatrix[xcor, ycor] = "5"
                        spaceFill = true
                        numOfFrogMan--
                    }
                    else if  numOfAngryTree > 0 {
                        myMatrix[xcor, ycor] = "7"
                        spaceFill = true
                        numOfAngryTree--
                    }
                    else if  numOfMenuBirdy > 0 {
                        myMatrix[xcor, ycor] = "6"
                        spaceFill = true
                        numOfMenuBirdy--
                    }
                    else if  numOfGoblin > 0 {
                        myMatrix[xcor, ycor] = "8"
                        spaceFill = true
                        numOfGoblin--
                    }
                    
                }
                else {
                    randomize()
                    xcor = floor(random_range(0, maxX))
                    ycor = floor(random_range(0, maxY))
                }
            }
        }
        else {
            randomize()
            xcor = floor(random_range(0, maxX))
            ycor = floor(random_range(0, maxY))
         
        }
    }
}

randomize()

//adds  walls to the matrix

for(i = 0; i < numOfWalls; i++) {
    spaceFill = false
    xcor = floor(random_range(0, maxX))
    ycor = floor(random_range(0, maxY))
    
    while spaceFill == false {
        if myMatrix[xcor, ycor] == "0" and manhattanDistance(xcor, ycor, bomberManX, bomberManY) > minDistance{
            if numOfChest > 0 {
                myMatrix[xcor, ycor] = "4"
                spaceFill = true
                numOfChest--
            }
            else if numOfPanelChest > 0 {
                myMatrix[xcor, ycor] = "3"
                spaceFill = true
                numOfPanelChest--
            }
        }
        else {
            xcor = floor(random_range(0, maxX))
            ycor = floor(random_range(0, maxY))
         
        }
    }
}


//Spawns all objects from the matrix to the room
instanceSpawner(myMatrix[], startX, startY, blockSize)




#define instanceSpawner
///creates the objects onto the map

for (myY = 0; myY < maxY; myY++) {
    cur = startY
    for (myX = 0; myX < maxX; myX++) {
        if myMatrix[myX, myY] == "1" { 
            charplace_pro_gen_stages(startX + (myX*blockSize), startY + (myY*blockSize))
        }
        else if myMatrix[myX, myY] == "3" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_Chest_withPanel)
        }
        else if myMatrix[myX, myY] == "4" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_Chest)
        }
        else if myMatrix[myX, myY] == "5" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_Frogman)
        }
        else if myMatrix[myX, myY] == "6" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_MenuBirdy)
        }
        else if myMatrix[myX, myY] == "7" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_AngryTree)
        }
        else if myMatrix[myX, myY] == "8" {
            instance_create(startX + (myX*blockSize), startY + (myY*blockSize), obj_Goblin)
        }
    }
}



#define instanceFinderX
/*
    Searches the matrix for an the instance specified then returns the x position
    of that object

*/
whatToFind = argument[0]
for (myY = 0; myY < maxY; myY++) {
    cur = startY
    for (myX = 0; myX < maxX; myX++) {
        if myMatrix[myX, myY] == whatToFind {
            return myX
        }
    }
}



#define instanceFinderY
/*
    Searches the matrix for the instance specified then 
    returns the y position of the object

*/
for (myY = 0; myY < maxY; myY++) {
    cur = startY
    for (myX = 0; myX < maxX; myX++) {
        if myMatrix[myX, myY] == whatToFind {
            return myY
        }
    }
}



#define manhattanDistance
/*
    Finds the Manhattan Distance between two positions within the matrix.

*/
myX1 = argument[0]
myY1 = argument[1]
myX2 = argument[2]
myY2 = argument[3]

Mdistance = (abs(myX1 - myX2) + abs(myY1 - myY2))

return Mdistance



#define comDistance
/*

    This script searches for all instances of the object in the matrix 
    as defined by the user then it compares that objects distance with the current
    position. It then returns true if no object is within that distance
    and false if there is an object in range.

*/
//what to find to compare the distance to
whatToFind = argument[0]

//current position to compare to
curX = argument[1]
curY = argument[2]
//distance to check
maxDistance = argument[3]

    
for (myY = 0; myY < maxY; myY++) {
    cur = startY
    for (myX = 0; myX < maxX; myX++) {
        if myMatrix[myX, myY] == whatToFind and manhattanDistance(myX, myY, curX, curY) < maxDistance {
            return false
        }
    }
}

return true