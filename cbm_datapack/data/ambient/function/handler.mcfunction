scoreboard players remove @s[tag=lcz, scores={zoneambientlcz=1..}] zoneambientlcz 1
scoreboard players remove @s[tag=hcz, scores={zoneambienthcz=1..}] zoneambienthcz 1
scoreboard players remove @s[tag=ez, scores={zoneambientez=1..}] zoneambientez 1

execute if score @s zoneambientlcz matches 0 run function ambient:mainambientz0
execute if score @s zoneambienthcz matches 0 run function ambient:mainambientz1
execute if score @s zoneambientez matches 0 run function ambient:mainambientz2