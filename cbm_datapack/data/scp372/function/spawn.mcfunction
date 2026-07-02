# summon pig ~ ~ ~ {Tags:['scp1048origin'],Silent:1b,Invulnerable:1b}
# effect give @n[type=pig, tag=scp1048origin] invisibility infinite 1 true
# attribute @n[type=pig, tag=scp1048origin] minecraft:movement_speed base set 0.15

# scoreboard players operation @n[type=pig, tag=scp1048origin] greet = 0 math

# execute rotated 0 0 run function animated_java:scp1048/summon with storage aj:temp

execute at @p positioned ~ ~25 ~ rotated 0 0 run function animated_java:scp372/summon with storage aj:temp

scoreboard players set @n[tag=scp372] scp372.appearTimer 60