
scoreboard players add @e[tag=blooddrip] bdrop_timer 1
scoreboard players remove @a[scores={bleeding_cd=1..,bleeding=1..},] bleeding_cd 1
scoreboard players remove @a[scores={bleeding_damage_cd=1..,bleeding=1..}] bleeding_damage_cd 1

execute as @e at @s if score @s bdrop_timer = max* bdrop_timer run kill @s


execute as @a[tag=player] at @s run function health:speed_update

execute as @a[scores={bleeding_cd=0}] at @s run function health:bleeding_up
execute as @a[scores={bleeding_damage_cd=0}] at @s run function health:damage

