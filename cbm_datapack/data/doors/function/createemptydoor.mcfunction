$summon marker ~ ~ ~ {Tags:['$(type)','doorSpawnMarker']}

execute as @n[type=marker, tag=doorSpawnMarker] if entity @s[tag=lcz] run summon item_display ~ ~1.5 ~ {Tags:['door_empty'],item:{id:"paper",components:{item_model:"cb:door0"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute as @n[type=marker, tag=doorSpawnMarker] if entity @s[tag=hcz] run summon item_display ~ ~1.5 ~ {Tags:['door_empty'],item:{id:"paper",components:{item_model:"cb:door1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute as @n[type=marker, tag=doorSpawnMarker] if entity @s[tag=!hcz, tag=!lcz] run tellraw @a [{"text":"[ ! ] ","color":"white"},{"text":"Failed to spawn non-functional door. Reason: out of expected macros values. Expected values are: 'lcz' and 'hcz'.","color":"red"}]

kill @n[type=marker, tag=doorSpawnMarker]