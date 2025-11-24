playsound cb:d9341.damage3 ambient @a ~ ~1 ~ 0.2 1 1

#decal placement
summon marker ~ ~ ~ {Tags:["scp066hitdecalplacementhander"]}

data modify storage scp066hitdecal x set from entity @n[tag=scp066hitdecalplacementhander] Pos[0]
data modify storage scp066hitdecal y set from entity @n[tag=scp066hitdecalplacementhander] Pos[1]
data modify storage scp066hitdecal z set from entity @n[tag=scp066hitdecalplacementhander] Pos[2]

function scp066:spawnhitdecal with storage minecraft:scp066hitdecal
kill @e[tag=scp066hitdecalplacementhander]

$scoreboard players set Const damageScp066 $(damage)
scoreboard players operation @p health -= Const damageScp066