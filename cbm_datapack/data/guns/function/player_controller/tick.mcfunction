# execute as @a[scores={door_right_click=1..}] at @s run function guns:shoot {"shot_cd":"0","xa":"0","xb":"0","ya":"0","yb":"0"}
# # execute at @p run tp @n[tag=aj.p.root] ^-0.5 ^1 ^1.5
# data modify entity @n[tag=aj.p.root] Pos[2] set from entity @p Pos[2]
# data modify entity @n[tag=aj.p.root] Pos[1] set from entity @p Pos[1]
# data modify entity @n[tag=aj.p.root] Pos[0] set from entity @p Pos[0]
# execute as @n[tag=aj.p.root] at @s run tp @s ~ ~1 ~
# execute as @n[tag=aj.p.root] at @s run tp @s ^-0.5 ^ ^2
# data modify entity @n[tag=aj.p.root] Rotation[0] set from entity @p Rotation[0]
# data modify entity @n[tag=aj.p.root] Rotation[1] set value 5