#vars
execute if score @s touchCountCdScp066 matches 1.. run scoreboard players remove @s touchCountCdScp066 1
execute if score @s ericPlaySoundTimerScp066 matches 1.. run scoreboard players remove @s ericPlaySoundTimerScp066 1

#tp visual body to real one
tp @n[tag=aj.scp066.root] ~ ~ ~
data modify entity @n[tag=aj.scp066.root] Rotation[0] set from entity @s Rotation[0]

#set wallow destination pos if needed
data modify entity @s wander_target set from entity @p[distance=..10] Pos

#play count sound
execute if score @s touchCountCdScp066 matches 0 if entity @a[distance=..1.75] run function scp066:playnotesound

#play eric sound
execute if score @s ericPlaySoundTimerScp066 matches 0 run function scp066:playericsound

#animations -- additional var
#get current speed
execute if predicate scp066:afk run scoreboard players set @s speedScp066 0
execute if predicate scp066:roll run scoreboard players set @s speedScp066 1

#play rolling animation - if previous tick - idle and now is moving
execute if score previousTick speedScp066 matches 0 if score @s speedScp066 matches 1 as @n[tag=aj.scp066.root] run function animated_java:scp066/animations/wallow/play

#play rolling animation - if previous tick was moving and now is idle
execute if score previousTick speedScp066 matches 1 if score @s speedScp066 matches 0 as @n[tag=aj.scp066.root] run function animated_java:scp066/animations/wallow/stop

#saving speed from this tick to compare levels in next
scoreboard players operation previousTick speedScp066 = @s speedScp066




