tag @a add bleeding
tag @a[scores={bleeding=0}] remove bleeding
scoreboard players set @a[scores={bleeding=11..}] bleeding 10

execute as @a[tag=bleeding] at @s run function health:subtick

###blooddrip remove
#var
scoreboard players remove @e[type=armor_stand,tag=blooddrip,scores={blooddrip=1..}] blooddrip 1
#func
execute as @e[type=armor_stand,tag=blooddrip,scores={blooddrip=0}] run function health:removeblooddrip

execute as @e[type=armor_stand,tag=blooddrip,nbt={OnGround:1b}] run data modify entity @s Marker set value 1b