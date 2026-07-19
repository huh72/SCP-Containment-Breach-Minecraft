scoreboard players remove @s[scores={playerOnFireTime=1..49}] health 1
scoreboard players remove @s[scores={playerOnFireTime=50..99}] health 2
scoreboard players remove @s[scores={playerOnFireTime=100..199}] health 4
scoreboard players remove @s[scores={playerOnFireTime=200..399}] health 8
scoreboard players remove @s[scores={playerOnFireTime=400..}] health 33

execute if score @s health < 0 math run tag @s add d_burn

scoreboard players operation .scp457 dealDamageCd = .max457 dealDamageCd