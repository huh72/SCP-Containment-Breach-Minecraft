#doors count
function main:clear_doors

#removing updated doors
function animated_java:door0/remove/all
kill @e[tag=door_marker]
#
kill @e[tag=str,tag=gen]
kill @e[tag=corner,tag=gen]
kill @e[tag=t_f,tag=gen]
kill @e[tag=x_f,tag=gen]
kill @e[tag=checkp,tag=gen]
kill @e[tag=dd,tag=gen]
execute as @e[tag=door,scores={global.door_num=1..}] run kill @s
scoreboard players set max global.door_num 1
# kill @e[tag=door_point,distance=..200]

#spawn clear
execute as @e[tag=173] at @s positioned ~39 ~ ~-38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~-38 run function generation:clear_
# execute as @e[tag=173] at @s positioned ~ ~ ~19 run function generation:clear_
# execute as @e[tag=173] at @s positioned ~19 ~ ~19 run function generation:clear_


#0
execute as @e[tag=173] at @s positioned ~95 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~-19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~-19 run function generation:clear_

#1
execute as @e[tag=173] at @s positioned ~95 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~ run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~ run function generation:clear_

#2
execute as @e[tag=173] at @s positioned ~95 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~19 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~19 run function generation:clear_

#3
execute as @e[tag=173] at @s positioned ~95 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~38 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~38 run function generation:clear_

#4
execute as @e[tag=173] at @s positioned ~95 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~57 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~57 run function generation:clear_

#5
execute as @e[tag=173] at @s positioned ~95 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~76 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~76 run function generation:clear_

#6
execute as @e[tag=173] at @s positioned ~95 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~95 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~95 run function generation:clear_

#7 
execute as @e[tag=173] at @s positioned ~95 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~114 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~114 run function generation:clear_

#8 
execute as @e[tag=173] at @s positioned ~95 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~133 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~133 run function generation:clear_

#9 
execute as @e[tag=173] at @s positioned ~95 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~152 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~152 run function generation:clear_


#10
execute as @e[tag=173] at @s positioned ~95 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~171 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-38 ~ ~171 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-57 ~ ~171 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-76 ~ ~171 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-95 ~ ~171 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-114 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~171 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~171 run function generation:clear_
#11
execute as @e[tag=173] at @s positioned ~95 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~190 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~190 run function generation:clear_
#12
execute as @e[tag=173] at @s positioned ~95 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~209 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~209 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-133 ~ ~209 run function generation:clear_ 
execute as @e[tag=173] at @s positioned ~-152 ~ ~209 run function generation:clear_ 
#13
execute as @e[tag=173] at @s positioned ~95 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~228 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~228 run function generation:clear_
#14
execute as @e[tag=173] at @s positioned ~95 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~247 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~247 run function generation:clear_
#15
execute as @e[tag=173] at @s positioned ~95 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~266 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~266 run function generation:clear_
#16
execute as @e[tag=173] at @s positioned ~95 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~285 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~285 run function generation:clear_
#17
execute as @e[tag=173] at @s positioned ~95 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~76 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~57 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~38 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~19 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~ ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-19 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-38 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-57 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-76 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-95 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-114 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-133 ~ ~304 run function generation:clear_
execute as @e[tag=173] at @s positioned ~-152 ~ ~304 run function generation:clear_

schedule function main:clear_items 40t replace