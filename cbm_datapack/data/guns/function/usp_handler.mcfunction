

execute as @a[scores={right_click_gun=1..,shot_cd=0,ammo=1..},tag=!reloading] at @s positioned ~ ~1.85 ~ positioned ^-0.3 ^ ^0.5 run particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 4
execute as @a[scores={right_click_gun=1..,shot_cd=0,ammo=1..},tag=!reloading] at @s positioned ~ ~1.75 ~ positioned ^-0.25 ^ ^ run function guns:0

scoreboard players set @a right_click_gun 0