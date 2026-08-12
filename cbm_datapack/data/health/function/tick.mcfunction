tag @a add bleeding
tag @a[scores={bleeding=0}] remove bleeding
scoreboard players set @a[scores={bleeding=11..}] bleeding 10

execute as @a[tag=bleeding,tag=!dead] at @s run function health:subtick

###blooddrip remove
#var
scoreboard players remove @e[type=armor_stand,tag=blooddrip,scores={blooddrip=1..}] blooddrip 1
#func
execute as @e[type=armor_stand,tag=blooddrip,scores={blooddrip=0}] run function health:removeblooddrip

#custom fall physics
execute as @e[type=armor_stand,tag=blooddrip] at @s if block ~ ~-0.65 ~ air run tp @s ~ ~-0.65 ~
execute as @e[type=armor_stand,tag=blooddrip] at @s if block ~ ~-0.09 ~ air run tp @s ~ ~-0.09 ~
execute as @e[type=armor_stand,tag=blooddrip] at @s if block ~ ~-0.01 ~ air run tp @s ~ ~-0.01 ~

#heartbeat handler
scoreboard players add @a[scores={heartbeatTimer=1..}] heartbeatCd 1
scoreboard players remove @a[scores={heartbeatTimer=1..}] heartbeatTimer 1

execute as @a[tag=!dead,scores={heartbeatTimer=1..}] at @s if score @s heartbeatCd = .max heartbeatCd run function health:heartbeat/play