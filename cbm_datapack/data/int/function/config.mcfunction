scoreboard objectives add i dummy

scoreboard players set .timer i -1


#statuses:
#-1 - not ic cell == lobby?
#0 - cell
#1 - waiting for guards
#2 - guards are waiting for player to come out
#3 - guards leading player to 173's chamber
#4 - two last rooms
#5 - player takes the paper

scoreboard players set .status i -1
scoreboard players set .ambient i -1
scoreboard players set .ambient.max i 140

#
scoreboard players set .conv i -1

#timings
#time until door will be opened (status = 1)
scoreboard players set .dooropen.time i 250

#time until phrase "Hey, they've got some work for you"
scoreboard players set .phrase0.time i 270

#time after which guards will go to path point 0
scoreboard players set .goto0.time i 360

#tset time tp 1000 after reaching room near chamber
scoreboard players set 1000 i 1000

#by the way time
scoreboard players set .bythwway.time i 1120