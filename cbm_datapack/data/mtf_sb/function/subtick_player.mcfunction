###first detect
#remove tag, if player get too far from any mtf
execute unless entity @n[type=wandering_trader, tag=mtf,distance=..32] run tag @s remove detected_by_mtf0
#sound
execute if entity @s[tag=!detected_by_mtf0] at @n[tag=mtf,distance=..14] run playsound cb:mtf.classdspotted ambient @a ~ ~ ~ 2 1 1
#give tag
execute if entity @n[type=wandering_trader, tag=mtf,distance=..14] run tag @s add detected_by_mtf0

###second detect, more close
execute unless entity @n[type=wandering_trader, tag=mtf,distance=..14] run tag @s remove detected_by_mtf1
#sound
execute if entity @s[tag=!detected_by_mtf1] at @n[tag=mtf,distance=..8] run playsound cb:mtf.searching ambient @a ~ ~ ~ 2 1 1
#give tag
execute if entity @n[type=wandering_trader, tag=mtf,distance=..8] run tag @s add detected_by_mtf1
