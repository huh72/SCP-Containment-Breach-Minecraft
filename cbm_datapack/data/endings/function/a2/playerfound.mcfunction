tag @s add a2.found

effect give @s slowness infinite 100 true
stopsound @s ambient cb:a1.music
playsound cb:a2.classdfound ambient @s ~ ~ ~ 1 1 1

# execute as @e[tag=mtf] at @s run data modify entity @s wander_target set from entity @s Pos
execute as @e[tag=mtf,tag=notHostile] run function mtf:switchhostility {"s":"@s"}

scoreboard players set @s e2 0