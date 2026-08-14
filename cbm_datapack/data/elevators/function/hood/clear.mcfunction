
execute if score .939 isContained matches 0 if entity @a[tag=location.939storage] at @n[tag=939.spawnpoint0] run function scp939:53/spawn
execute if score .939 isContained matches 0 if entity @a[tag=location.939storage] at @n[tag=939.spawnpoint1] run function scp939:89/spawn
execute if score .939 isContained matches 0 if entity @a[tag=location.939storage] at @n[tag=939.spawnpoint2] run function scp939:96/spawn

execute unless entity @a[tag=location.939storage] run function scp939:53/despawn
execute unless entity @a[tag=location.939storage] run function scp939:89/despawn
execute unless entity @a[tag=location.939storage] run function scp939:96/despawn

tag @e[type=marker, tag=elevator] remove currElevator
tag @e[type=marker, tag=elevator] remove finalElevator
tag @a remove tpTarget