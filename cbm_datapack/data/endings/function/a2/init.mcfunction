execute as @e[tag=a1.mtfspawnpoint] at @s run function mtf:spawn {"NoAI":"0","additionaltag":"notHostile","rotatedAs":"@n[tag=a1.mtfspawnpoint]"}
execute as @e[tag=mtf] run data modify entity @s wander_target set from entity @n[tag=a2.pathpoint] Pos
playsound cb:a1.music ambient @a[distance=..96] ~ ~ ~ 1.5 1 1
scoreboard players set @n[tag=door_marker,tag=a2.blockeddoor] access_level 999