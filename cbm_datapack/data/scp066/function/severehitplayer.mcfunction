# playsound cb:d9341.damage3 ambient @a ~ ~1 ~ 0.4 1 1

#decal placement
summon marker ~ ~ ~ {Tags:["scp066hitdecalplacementhander"]}

data modify storage scp066hitdecal x set from entity @n[tag=scp066hitdecalplacementhander] Pos[0]
data modify storage scp066hitdecal y set from entity @n[tag=scp066hitdecalplacementhander] Pos[1]
data modify storage scp066hitdecal z set from entity @n[tag=scp066hitdecalplacementhander] Pos[2]

function scp066:spawnhitdecal with storage minecraft:scp066hitdecal

#
tp @n[tag=scp066hitdecalplacementhander] ~1 ~0.01 ~2

data modify storage scp066hitdecal x set from entity @n[tag=scp066hitdecalplacementhander] Pos[0]
data modify storage scp066hitdecal y set from entity @n[tag=scp066hitdecalplacementhander] Pos[1]
data modify storage scp066hitdecal z set from entity @n[tag=scp066hitdecalplacementhander] Pos[2]

function scp066:spawnhitdecal with storage minecraft:scp066hitdecal

#
tp @n[tag=scp066hitdecalplacementhander] ~-2 ~0.02 ~1

data modify storage scp066hitdecal x set from entity @n[tag=scp066hitdecalplacementhander] Pos[0]
data modify storage scp066hitdecal y set from entity @n[tag=scp066hitdecalplacementhander] Pos[1]
data modify storage scp066hitdecal z set from entity @n[tag=scp066hitdecalplacementhander] Pos[2]

function scp066:spawnhitdecal with storage minecraft:scp066hitdecal

#
kill @e[tag=scp066hitdecalplacementhander]

#
execute as @s if predicate scp066:20 run scoreboard players add @p bleeding 1

$scoreboard players set Const damageScp066 $(damage)
scoreboard players operation @p health -= Const damageScp066