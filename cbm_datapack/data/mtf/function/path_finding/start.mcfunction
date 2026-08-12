$execute as @n[tag=mtf.pf.executor] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^ ^18 as @n[tag=door] at @s run setblock ~ ~12 ~ lime_wool
$execute as @n[tag=mtf.pf.executor] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^ ^18 as @n[tag=door] at @s run summon marker ~ ~ ~ {Tags:['pf.point0','pf.point']}
scoreboard players set .cycle mtf.pf 0
scoreboard players set .iteration mtf.pf 1
scoreboard players set .prevIteration mtf.pf 0
execute store result storage cb:mtf.pf iteration int 1 run scoreboard players get .iteration mtf.pf
execute store result storage cb:mtf.pf prevIteration int 1 run scoreboard players get .prevIteration mtf.pf

function mtf:path_finding/loop/iteration with storage cb:mtf.pf

# $execute as @n[tag=mtf.pf.executor] at @s rotated $(rotation) 0 anchored eyes positioned ^ ^ ^18 run setblock ~ ~ ~ blue_wool