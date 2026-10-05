tag @s add detected_enemy
tag @n[tag=mtf_enemy, tag=!dead, distance=..1.25] add detected_by_mtf

execute if score cd_spot_cd mtf matches 0 if entity @p[tag=detected_by_mtf] run playsound cb:mtf.classdspotted ambient @a[distance=..32] ~ ~ ~ 2.25 1 1
execute if score cd_spot_cd mtf matches 0 if entity @p[tag=detected_by_mtf] run scoreboard players operation cd_spot_cd mtf = _cd_spot_cd mtf