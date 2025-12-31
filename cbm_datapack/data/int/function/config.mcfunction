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