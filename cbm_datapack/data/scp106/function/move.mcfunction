tp @s ~ ~ ~ facing entity @p[tag=106target]
execute if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run data modify entity @s Rotation[1] set value 0

$tp @s ^ ^ ^$(walkspeed)