tag @p[distance=..16,tag=!dead] add mtf_target
tag @p[distance=..32,tag=b1.themechanged,tag=!dead] add mtf_target
# execute if entity @p[distance=..16] run tag @s add have_target

data modify entity @s wander_target set from entity @p[tag=mtf_target] Pos
rotate @n[tag=aj.mtf.root] facing entity @p[tag=mtf_target]

execute as @n[tag=aj.mtf.root] at @s positioned ~ ~1.75 ~ anchored eyes run function mtf:player_interact/raycast


# execute as @a[tag=!confirmed_target,tag=!mtf_target] run title @s actionbar {"text":"none"}
# execute as @a[tag=mtf_target,tag=!confirmed_target] run title @s actionbar {"text":"mtf_target"}
# execute as @a[tag=confirmed_target,tag=!mtf_target] run title @s actionbar {"text":"confirmed_target"}
# execute as @a[tag=confirmed_target,tag=mtf_target] run title @s actionbar {"text":"both"}

execute if entity @a[tag=confirmed_target,tag=!dead,distance=..32] if score .mtf classdDetect matches 0 run function mtf:player_interact/classddetected

#shoot func() and dependencies:
execute store result storage cb:mtf acc int 1 run scoreboard players get @s acc
execute store result storage cb:mtf shot_cd int 1 run scoreboard players get shot_cd stat_p90

execute if entity @a[tag=confirmed_target,tag=!dead,distance=..32] if score @s[tag=!notHostile] shot_cd matches 0 as @n[tag=aj.mtf.root] at @s run function guns:shoot_helper with storage cb:mtf