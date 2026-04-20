summon husk ~ ~ ~ {Tags:['scp1048Aorigin'],Silent:1b,Invulnerable:1b}
effect give @n[type=husk, tag=scp1048Aorigin] invisibility infinite 1 true
attribute @n[type=husk, tag=scp1048Aorigin] minecraft:movement_speed base set 0.15

#free "no damage" time for players
scoreboard players operation @a shriek = -20 math

execute rotated 0 0 run function animated_java:scp1048a/summon with storage aj:temp