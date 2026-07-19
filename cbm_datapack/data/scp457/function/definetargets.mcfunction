scoreboard players set @s[distance=..1.25] playerTo457Distance 1
scoreboard players set @s[distance=1.25..1.85] playerTo457Distance 2
scoreboard players set @s[distance=1.85..2.35] playerTo457Distance 3
scoreboard players set @s[distance=2.35..3.15] playerTo457Distance 4
scoreboard players set @s[distance=3.15..6.25] playerTo457Distance 5

scoreboard players add @s[scores={playerTo457Distance=1}] playerOnFireTime 32
scoreboard players add @s[scores={playerTo457Distance=2}] playerOnFireTime 8
scoreboard players add @s[scores={playerTo457Distance=3}] playerOnFireTime 4
scoreboard players add @s[scores={playerTo457Distance=4}] playerOnFireTime 2
scoreboard players add @s[scores={playerTo457Distance=5}] playerOnFireTime 1

execute at @s[scores={playerOnFireTime=50..99}] run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.75 0.25 0 1 force
execute at @s[scores={playerOnFireTime=100..399}] run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.75 0.25 0 2 force
execute at @s[scores={playerOnFireTime=400..}] run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.75 0.25 0 4 force

execute if score .scp457 dealDamageCd = 0 math run function scp457:dealdamage