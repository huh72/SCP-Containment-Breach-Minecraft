# random regester
execute store result score body_part hit_random run random roll 0..1 cb:arms_hit

execute if score body_part hit_random matches 0 run function guns:bullet/player_hit/left_shoulder
execute if score body_part hit_random matches 1 run function guns:bullet/player_hit/right_shoulder
