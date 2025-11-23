scoreboard players set 999 v 0
execute store result score 431 v run data get entity @n[tag=bullet] Rotation[0]
# tellraw @a [{"text":"BULLET ROTATION == "},{"score":{"name":"431","objective":"v"}}]

#1
execute positioned ^ ^ ^ run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.1 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.2 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.3 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.4 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.5 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.6 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.7 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.8 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^0.9 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1 run function guns:bullet/blood/cast/check
#2
execute if score 999 v matches 0 positioned ^ ^ ^1.1 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.2 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.3 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.4 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.5 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.6 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.7 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.8 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^1.9 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2 run function guns:bullet/blood/cast/check
#3
execute if score 999 v matches 0 positioned ^ ^ ^2.1 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.2 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.3 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.4 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.5 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.6 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.7 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.8 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^2.9 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3 run function guns:bullet/blood/cast/check
#4
execute if score 999 v matches 0 positioned ^ ^ ^3.1 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.2 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.3 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.4 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.5 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.6 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.7 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.8 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^3.9 run function guns:bullet/blood/cast/check
execute if score 999 v matches 0 positioned ^ ^ ^4 run function guns:bullet/blood/cast/check

# say spawn!