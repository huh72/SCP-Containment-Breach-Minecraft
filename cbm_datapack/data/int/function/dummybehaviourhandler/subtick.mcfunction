#providing the raycast
execute as @a[tag=!dead,distance=..19] positioned ~ ~1.5 ~ facing entity @s eyes run function int:dummybehaviourhandler/raycast/start

#tping markers to players and applying player to 173 rotation
execute as @a at @s run tp @n[tag=lookdetecthandler173] ~ ~ ~ facing entity @n[tag=dummy]

#look detect itself
#reset values
scoreboard players set .playerLookingByX v 0
scoreboard players set .playerLookingByY v 0
scoreboard players set .result v 0

#by X
execute as @a[tag=seeDummyDirectly,tag=!blink] at @s run function int:dummybehaviourhandler/x
#by Y
execute as @a[tag=seeDummyDirectly,tag=!blink] at @s run function int:dummybehaviourhandler/y

#final value edits
#X
execute if score .playerLookingByX v matches 0 run scoreboard players set .playerLookingByY v 0
#Y
execute if score .playerLookingByY v matches 0 run scoreboard players set .playerLookingByX v 0

#final variable
execute if score .playerLookingByX v matches 1 if score .playerLookingByY v matches 1 run scoreboard players set .playerLookingOn173 v 1