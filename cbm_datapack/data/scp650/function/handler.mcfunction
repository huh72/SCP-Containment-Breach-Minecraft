# align model
tp @n[tag=aj.scp650.root] ~ ~ ~
data modify entity @n[tag=aj.scp650.root] Rotation[0] set from entity @s Rotation[0]

execute as @a[tag=!dead] run function look_check:scps/650

# increase despawntime var when no one is looking
execute if score .scp650 isSpotted matches 0 as @a[tag=!dead] if entity @s[tag=lookingAtScp650] run scoreboard players set .scp650 isSpotted 1
execute as @a[tag=!dead] if entity @s[tag=!lookingAtScp650] if score .scp650 isSpotted matches 1 run scoreboard players add .scp650 despawnTime 1
# despawn
execute if score .scp650 despawnTime >= .scp650max despawnTime run function scp650:despawn