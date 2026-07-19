# particle angry_villager ~ ~2.5 ~ 

$scoreboard players set @n[tag=mtf] shot_cd $(shot_cd)
# $execute store result storage cb:mtf acc0 float 0.01 run random value -$(acc)..$(acc) cb:acc
# $execute store result storage cb:mtf acc1 float 0.01 run random value -$(acc)..$(acc) cb:acc

$execute store result storage minecraft:gun_main acc0 float 0.01 run random value -$(acc)..$(acc) cb:acc
$execute store result storage minecraft:gun_main acc1 float 0.01 run random value -$(acc)..$(acc) cb:acc

# 
function guns:shoot_fixed with storage cb:mtf