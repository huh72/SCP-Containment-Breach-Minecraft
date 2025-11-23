###other tick func
execute as @n[type=minecraft:wandering_trader,tag=scp939_53] at @s run function scp939:53/tick




#vars
#hit
scoreboard players remove @e[type=minecraft:wandering_trader,tag=scp939,scores={hit_cd=1..}] hit_cd 1


#hit func
execute at @e[type=minecraft:wandering_trader,tag=scp939,scores={hit_cd=0}] anchored eyes positioned ^ ^0.25 ^1.5 as @a[distance=..1.25,tag=!dead] at @s run function scp939:hit

#move sounds
# scoreboard players add @e[tag=scp939,predicate=scp939:slow] walk_ 1
# scoreboard players add @e[tag=scp939,predicate=scp939:fast] run 1

# execute as @e[tag=scp939] if score @s walk_ >= step939 walk_ at @s run function scp939:move/step {"sound":"stepmetal"}
# execute as @e[tag=scp939] if score @s run >= step939 run at @s run function scp939:move/run {"sound":"runmetal"}