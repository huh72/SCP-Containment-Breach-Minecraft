#g shoot cd
scoreboard players operation @n[type=wandering_trader, tag=mtf, tag=detected_enemy] shot_cd = shot_cd stat_p90

#g hit vars ::
scoreboard players set _temp.hit? mtf 0

#g 
execute if predicate ci:hit_chance run scoreboard players set _temp.hit? mtf 1

execute if score _temp.hit? mtf matches 1 run function mtf:shoot/hit

#g fire sound
execute store result storage cb:mtf pitch int 1 run random value 0..35 cb:mtf_fire_pitch
function mtf:shoot/fire with storage cb:mtf