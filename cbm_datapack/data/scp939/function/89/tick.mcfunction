#marker & model transfer
execute store result score @s 939rotY run data get entity @s Rotation[1]
execute if score @s 939rotY matches 1.. run data modify entity @s Rotation[1] set value 0.0f

tp @n[type=marker, tag=marker939_89] ~ ~1 ~
tp @n[type=item_display, tag=aj.scp939.root] ~ ~ ~
data modify entity @n[type=item_display, tag=aj.scp939.root] Rotation[0] set from entity @s Rotation[0]

#lure/phrase/chase/alert sound
#var
scoreboard players remove @s[scores={phrase_cd=1..}] phrase_cd 1
scoreboard players remove @a[scores={chase_cd=1..}] chase_cd 1
scoreboard players remove @s[scores={attack_cd=1..}] attack_cd 1
scoreboard players remove @s[scores={alert_cd=1..}] alert_cd 1
#func
execute as @n[tag=scp939_89,scores={phrase_cd=0}] at @s run function scp939:89/lure

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

# execute as @a[predicate=scp939:is_sneaking] run say @s sneaking!
# execute as @a[scores={walk=1..}] run say @s walk!
# execute as @a[predicate=scp939:is_sprinting] run say @s sprinting!

#additional target check
tag @a remove confirmed
execute as @p[tag=!dead,scores={spot_level=1..}] at @n[tag=marker939_89] positioned ~ ~1 ~ facing entity @s eyes run function scp939:raycast/main
scoreboard players set @a[tag=!confirmed] spot_level 0

#walk detect clear
scoreboard players set @a walk 0

###spot func
execute as @s[tag=chasing] run function scp939:89/unspot
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=1},distance=..20] run function scp939:89/spot {"level":"1"}
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=2},distance=..10] run function scp939:89/spot {"level":"2"}
execute as @s[tag=!chasing] at @s if entity @p[scores={spot_level=3}] run function scp939:89/spot {"level":"3"}

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
scoreboard players set @s[predicate=scp939:idle] speed_level 0
scoreboard players set @s[predicate=scp939:slow] speed_level 1
scoreboard players set @s[predicate=scp939:fast] speed_level 2

#! 0 - idle, 1 - walk, 2 - run
execute if score @s speed_level matches 0 as @n[tag=aj.scp939.root, tag=!aj.scp939.animation.idle.playing] run function animated_java:scp939/animations/idle/play
execute if score @s speed_level matches 0 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.walk.playing] run function animated_java:scp939/animations/walk/stop
execute if score @s speed_level matches 0 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.run.playing] run function animated_java:scp939/animations/run/stop

execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.idle.playing] run function animated_java:scp939/animations/idle/stop
execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root, tag=!aj.scp939.animation.walk.playing] run function animated_java:scp939/animations/walk/play
execute if score @s speed_level matches 1 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.run.playing] run function animated_java:scp939/animations/run/stop

execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.idle.playing] run function animated_java:scp939/animations/idle/stop
execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root, tag=aj.scp939.animation.walk.playing] run function animated_java:scp939/animations/walk/stop
execute if score @s speed_level matches 2 as @n[tag=aj.scp939.root, tag=!aj.scp939.animation.run.playing] run function animated_java:scp939/animations/run/play