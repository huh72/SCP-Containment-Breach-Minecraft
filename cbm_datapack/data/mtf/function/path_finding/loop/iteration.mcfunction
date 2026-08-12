$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^ ^18 as @n[tag=door, tag=!card] at @s run setblock ~ ~12 ~ yellow_wool
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^ ^18 as @n[tag=door, tag=!card] at @s run summon marker ~ ~ ~ {Tags:['pf.point$(iteration)','pf.point']}
# $execute at @n[tag=pf.point$(iteration)]

#g cast
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^3 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^7 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^9 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^11 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
$execute as @n[tag=pf.point$(prevIteration)] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^15 ^13 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

#g re-rotating
# tellraw @a [{"score":{"name":".cycle","objective":"mtf.pf"}}]
execute if score .cycle mtf.pf matches 2 run function mtf:path_finding/alignrotation with storage cb:mtf.pf

#g update vars
scoreboard players add .cycle mtf.pf 1
scoreboard players add .iteration mtf.pf 1
scoreboard players add .prevIteration mtf.pf 1
execute store result storage cb:mtf.pf iteration int 1 run scoreboard players get .iteration mtf.pf
execute store result storage cb:mtf.pf prevIteration int 1 run scoreboard players get .prevIteration mtf.pf


#g loop
execute unless score .iteration mtf.pf matches 24.. run function mtf:path_finding/loop/iteration with storage cb:mtf.pf