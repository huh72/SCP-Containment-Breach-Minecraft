# message
# $title @s actionbar {"text":"$(text)"}
title @s actionbar {"text":"saved!"}
scoreboard players operation @s save_cd = max* save_cd
tag @s add save_f

#play sound
$playsound cb:$(sound) ambient @s ~ ~ ~ 0.66


# kill previous spawn point
execute as @e[type=marker, tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run forceload remove ~ ~ ~ ~
execute as @e[type=marker, tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run kill @s

# summon marker
summon marker ~ ~ ~ {Tags:["save","s_new","elevatorTarget"]}

#g add forceload
forceload add ~ ~ ~ ~

# get player Rotation
data modify entity @n[type=marker, tag=s_new] Rotation set from entity @s Rotation

# matching player's id and marker id
scoreboard players operation @e[tag=s_new] global_num = @s global_num

#g save level
execute if entity @s[tag=lcz] run tag @n[type=marker, tag=s_new] add save.lcz
execute if entity @s[tag=hcz] run tag @n[type=marker, tag=s_new] add save.hcz
execute if entity @s[tag=ez] run tag @n[type=marker, tag=s_new] add save.ez

# save sub-level
execute if entity @s[tag=location.049chamber] run tag @n[type=marker, tag=s_new] add save.location.049chamber
execute if entity @s[tag=location.106chamber] run tag @n[type=marker, tag=s_new] add save.location.106chamber
execute if entity @s[tag=location.nuke] run tag @n[type=marker, tag=s_new] add save.location.nuke
execute if entity @s[tag=location.939storage] run tag @n[type=marker, tag=s_new] add save.location.939storage

scoreboard players operation @n[type=marker, tag=s_new] onLevel = @s onLevel


# remove tags
tag @e remove s_new
tag @s remove save_f