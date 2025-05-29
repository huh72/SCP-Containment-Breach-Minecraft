scoreboard players set 106 appear_timer -1
tag @e[tag=scp106] add hunting
# say appeared completely!
scoreboard players set @s hunting 0
execute at @e[tag=scp106] run playsound cb:scp106.chase ambient @a[distance=..32] ~ ~1000 ~ 1000 1 1