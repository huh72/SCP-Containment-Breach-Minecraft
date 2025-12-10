tag @a[distance=..3] add can_interact_with_lever

execute as @a[tag=can_interact_with_lever] at @s run function lever:player

tag @a remove can_interact_with_lever