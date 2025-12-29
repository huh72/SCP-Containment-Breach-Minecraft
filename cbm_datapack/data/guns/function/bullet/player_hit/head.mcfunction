particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0 0 0 0 25

# playsound minecraft:block.anvil.place record @a ~ ~ ~ 0.25 1.5 1

say head!

#damaging - head
# * 4 | * 2
scoreboard players operation @n[tag=bullet] damage *= 4 math
scoreboard players operation @n[tag=bullet] v *= 2 math
#death func
execute if score @s health < @n[tag=bullet] damage run tag @s add d_mtf
execute if score @s health < @n[tag=bullet] damage at @n[tag=mtf] run playsound cb:mtf.terminated ambient @a ~ ~ ~ 2 1 1
scoreboard players operation @s health -= @n[tag=bullet] damage