#g global sizeup cooldown reset
scoreboard players set .blood_stains_resize.cd pd_shrink_scale 3

#g sizeup
execute store result storage cb:bloodstains scale int 1 run scoreboard players get @s pd_shrink_scale
execute if score @s pd_shrink_scale matches ..98 run function main:blood_stains/sizeup with storage cb:bloodstains

#g stop
execute if score @s pd_shrink_scale matches 99 run tag @s remove toSizeup