execute if entity @s[tag=!fall_into_shrinkhole] run playsound cb:scp106.sinkhole_fall ambient @s ~ ~ ~ 1 1 1
execute if entity @s[tag=!fall_into_shrinkhole] run playsound cb:scp106.sinkhole_fall ambient @a[distance=..36] ~ ~1 ~ 0.5 1 1

tag @s add fall_into_shrinkhole

tp @s ~ ~-0.075 ~