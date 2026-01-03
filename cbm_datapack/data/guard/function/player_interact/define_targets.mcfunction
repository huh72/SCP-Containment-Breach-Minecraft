tag @p[distance=..16,tag=!dead] add mtf_target
tag @p[distance=..32,tag=b1.themechanged,tag=!dead] add mtf_target
# execute if entity @p[distance=..16] run tag @s add have_target

data modify entity @s[tag=!notHostile] wander_target set from entity @p[tag=mtf_target] Pos
execute if entity @s[tag=!notHostile] run rotate @n[tag=guardaj] facing entity @p[tag=mtf_target]
execute if entity @s[tag=notHostile] as @e[tag=guard] at @s run data modify entity @n[tag=guardaj] Rotation[0] set from entity @s Rotation[0]

execute as @n[tag=guardaj] at @s positioned ~ ~1.75 ~ anchored eyes run function guard:player_interact/raycast


# execute if entity @a[tag=!confirmed_target,tag=!mtf_target] run title @p actionbar {"text":"none"}
# execute if entity @a[tag=mtf_target,tag=!confirmed_target] run title @p actionbar {"text":"mtf_target"}
# execute if entity @a[tag=confirmed_target,tag=!mtf_target] run title @p actionbar {"text":"confirmed_target"}
# execute if entity @a[tag=confirmed_target,tag=mtf_target] run title @p actionbar {"text":"both"}

#shoot func() and dependencies:
execute store result storage cb:mtf acc int 1 run scoreboard players get @s acc
execute store result storage cb:mtf shot_cd int 1 run scoreboard players get shot_cd stat_p90

execute if entity @a[tag=confirmed_target,tag=!dead,distance=..32] if score @s[tag=!notHostile] shot_cd matches 0 as @n[tag=guardaj] at @s run function guns:shoot_helper with storage cb:mtf