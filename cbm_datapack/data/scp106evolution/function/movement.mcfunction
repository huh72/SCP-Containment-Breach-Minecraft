tp @s ~ ~ ~ facing entity @p[tag=106target]
data modify entity @n[type=item_display,tag=aj.scp106.root] Rotation[0] set from entity @s Rotation[0]
execute if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run data modify entity @s Rotation[1] set value 0


$tp @s ^ ^ ^$(walkspeed)

execute if block ~ ~-0.5 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run tp @s ~ ~-0.5 ~
execute if block ~ ~-0.1 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run tp @s ~ ~-0.1 ~


tp @n[type=item_display,tag=aj.scp106.root] ~ ~ ~