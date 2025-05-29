# config
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.085

### STAMINA ###
#full - 100
#null - 0



# 20 ' | ' -> 100/20 = 5

#how long player had to run to remove some staminа?
scoreboard players set distance* sprint 150
# how much stamina had to be removen per distance?
scoreboard players set remove* sprint 5


### STAMINA RESTORE ###
#how many time need to restore one time?
scoreboard players set restore* stamina 10
#how many stamina restore?
scoreboard players set add* stamina 5
#max value of stamina?
scoreboard players set max* stamina 100
#min value of stamina?
scoreboard players set min* stamina 0
#min value of stamina to start sprint [ '||' - 10 ]?
scoreboard players set min_start* stamina 5


### STAMINA COOLDOWN ###
#cooldown, after which stamina starts to restore
scoreboard players set cooldown* stamina 40