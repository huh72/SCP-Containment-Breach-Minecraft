#g shoot cd
scoreboard players operation @n[type=wandering_trader, tag=cis, tag=detected_enemy] shot_cd = shot_cd stat_hkg36

#g hit vars ::
scoreboard players set _temp.hit? ci 0

#g 
execute if predicate ci:hit_chance run scoreboard players set _temp.hit? ci 1

execute if score _temp.hit? ci matches 1 run function ci:shoot/hit

#g fire sound
execute store result storage cb:ci pitch int 1 run random value 0..35 cb:ci_fire_pitch
function ci:shoot/fire with storage cb:ci