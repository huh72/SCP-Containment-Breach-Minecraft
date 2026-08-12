###increase bleeding level after cd
#var
scoreboard players remove @s[scores={bleeding_level_up_cd=1..}] bleeding_level_up_cd 1
#func
execute as @s[scores={bleeding_level_up_cd=0,bleeding=..9}] run function health:bleeding_up


###damage
#var
scoreboard players remove @s[scores={bleeding_damage_cd=1..}] bleeding_damage_cd 1
#func with chance
execute if score @s bleeding_damage_cd matches 0 run function health:damage


###blooddrip spawn
#var
scoreboard players remove @s[scores={blooddrip_cd=1..}] blooddrip_cd 1
#func
execute if score @s blooddrip_cd matches 0 run function health:blooddrip

###speed depends on bleeding level
function health:speed_update