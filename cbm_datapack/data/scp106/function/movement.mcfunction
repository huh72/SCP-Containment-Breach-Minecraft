tp @s ~ ~ ~ facing entity @p[tag=106target]
data modify entity @n[type=item_display,tag=aj.scp106.root] Rotation[0] set from entity @s Rotation[0]
execute if block ~ ~ ~ #scp106:air if block ~ ~1 ~ #scp106:air run data modify entity @s Rotation[1] set value 0


$tp @s ^ ^ ^$(walkspeed)

function scp106:ceiling_check

execute if score is106InsideFacility v matches 1 if block ~ ~-0.5 ~ #scp106:air if block ~ ~ ~ #scp106:air if block ~ ~1 ~ air run tp @s ~ ~-0.5 ~
execute if score is106InsideFacility v matches 1 if block ~ ~-0.1 ~ #scp106:air if block ~ ~ ~ #scp106:air if block ~ ~1 ~ air run tp @s ~ ~-0.1 ~

tp @n[type=item_display,tag=aj.scp106.root] ~ ~ ~