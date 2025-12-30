particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0 0 0 0 10
# say = body shot!

# say body!

#damaging - body
# / 2 | * 2
scoreboard players operation @n[tag=bullet] damage /= 2 math
scoreboard players operation @n[tag=bullet] v *= 2 math
#death func
execute if score @s health < @n[tag=bullet] damage run tag @s add d_mtf
execute if score @s health < @n[tag=bullet] damage at @n[tag=mtf] run playsound cb:mtf.terminated ambient @a ~ ~ ~ 2 1 1
scoreboard players operation @s health -= @n[tag=bullet] damage

# function guns:bullet/player_hit/arms