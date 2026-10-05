tag @s add detected_enemy
tag @n[tag=ci_enemy, tag=!dead, distance=..1.25] add detected_by_ci

execute if score cd_spot_cd ci matches 0 if entity @p[tag=detected_by_ci] run playsound cb:ci.cdspotted ambient @a[distance=..24] ~ ~1.75 ~ 3 1 1
execute if score cd_spot_cd ci matches 0 if entity @n[tag=detected_by_ci, tag=mtf] run playsound cb:ci.mtfspotted ambient @a[distance=..24] ~ ~1.75 ~ 3 1 1
execute if score cd_spot_cd ci matches 0 run scoreboard players operation cd_spot_cd ci = _cd_spot_cd ci