particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0 0 0 0 7
# say = legs shot!

# random regester
execute store result score body_part hit_random run random roll 0..1 cb:legs_hit

execute if score body_part hit_random matches 0 run function guns:bullet/player_hit/left_leg
execute if score body_part hit_random matches 1 run function guns:bullet/player_hit/right_leg


