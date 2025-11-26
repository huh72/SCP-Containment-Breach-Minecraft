#marker & model transfer
execute store result score @s 939rotY run data get entity @s Rotation[1]
execute if score @s 939rotY matches 1.. run data modify entity @s Rotation[1] set value 0.0f

tp @n[type=wandering_trader, tag=marker939_53] ~ ~1 ~
tp @n[type=item_display, tag=aj.scp939.root] ~ ~ ~
data modify entity @n[type=item_display, tag=aj.scp939.root] Rotation[0] set from entity @s Rotation[0]

#lure/phrase/chase/alert sound
#var
scoreboard players remove @s[scores={phrase_cd=1..}] phrase_cd 1
scoreboard players remove @a[scores={chase_cd=1..}] chase_cd 1
scoreboard players remove @s[scores={alert_cd=1..}] alert_cd 1
#func
execute as @n[tag=scp939_53,scores={phrase_cd=0}] at @s run function scp939:53/lure

###spot levels
#0 - игрок невидим - шифт (если дистанция 3+ блоков)
#1 - игрок видим, но на растоянии 16 блоков - спринт
#2 - игрок видим, но на растоянии 8 блоков - шаг/игрок стоит
#3 - игрок видим, вплотную(3) - не важно, какое положение (шифт\спринт) - виден

scoreboard players set @a[tag=!dead,scores={walk=1..}] spot_level 2
scoreboard players set @a[tag=!dead,scores={walk=0},predicate=!scp939:is_sneaking,predicate=!scp939:is_sprinting] spot_level 2
scoreboard players set @a[tag=!dead,predicate=scp939:is_sprinting] spot_level 1
scoreboard players set @a[tag=!dead,predicate=scp939:is_sneaking] spot_level 0
scoreboard players set @a[tag=!dead,distance=..2] spot_level 3

#additional target check
tag @a remove confirmed
execute as @p[tag=!dead,scores={spot_level=1..}] at @n[tag=marker939_53] positioned ~ ~1 ~ facing entity @s eyes run function scp939:raycast/main
scoreboard players set @a[tag=!confirmed] spot_level 0

#walk detect clear
scoreboard players set @a walk 0

###spot func
execute as @s[tag=chasing] run function scp939:53/unspot
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=1},distance=..20] run function scp939:53/spot {"level":"1"}
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=2},distance=..10] run function scp939:53/spot {"level":"2"}
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=3}] run function scp939:53/spot {"level":"3"}

###unspot func  & get 939 pos
# execute store result score @n[tag=scp939_53] 939posX run data get entity @n[tag=scp939_53] Pos[0]
# execute store result score @n[tag=scp939_53] 939posZ run data get entity @n[tag=scp939_53] Pos[2]

# execute store result score 939currenttarget 939posX run data get entity @n[tag=scp939_53] wander_target[0]
# execute store result score 939currenttarget 939posZ run data get entity @n[tag=scp939_53] wander_target[2]

# #Subtracting 939's position vars
# execute store result score PosSubtract 939posX run scoreboard players operation 939currenttarget 939posX -= @n[tag=scp939_53] 939posX
# execute store result score PosSubtract 939posZ run scoreboard players operation 939currenttarget 939posZ -= @n[tag=scp939_53] 939posZ
# #and using module
# function scp939:abs

# execute as @s[tag=scp939_53] if score PosSubtract 939posX matches ..1 if score PosSubtract 939posZ matches ..1 run function scp939:53/unspot

###939 movement check for animations
#getting speed level
scoreboard players set @s[predicate=scp939:afk] speed_level 0
scoreboard players set @s[predicate=scp939:slow] speed_level 1
scoreboard players set @s[predicate=scp939:fast] speed_level 2

#end previous animations
execute if score @s speed_level matches 0..2 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/walk/pause
execute if score @s speed_level matches 0 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/run/pause

execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/idle/pause
execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/run/pause

execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/idle/pause
execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/walk/pause

#start playing new ones, depends on previous tick speed level and current speed level
execute if score @s speed_level matches 0 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/idle/resume
execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/walk/resume
execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/run/resume

#save 939's speed level from previous tick
scoreboard players operation 939speedlevelprevtick speed_level = @s speed_level