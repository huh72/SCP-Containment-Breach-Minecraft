particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0 0 0 0 7
# say = legs shot!

#damaging - legs
# = | =
# scoreboard players operation @n[tag=bullet] damage /= 2 math
#death func
execute if score @s health < @n[tag=bullet] damage run tag @s add d_mtf
execute if score @s health < @n[tag=bullet] damage at @n[tag=mtf] run playsound cb:mtf.terminated ambient @a ~ ~ ~ 2 1 1
scoreboard players operation @s health -= @n[tag=bullet] damage

# random regester
execute store result score body_part hit_random run random value 0..1 cb:legs_hit

# execute if score body_part hit_random matches 0 run function guns:bullet/player_hit/left_leg
# execute if score body_part hit_random matches 1 run function guns:bullet/player_hit/right_leg


