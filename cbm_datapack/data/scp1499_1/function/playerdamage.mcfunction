#instant kill
execute at @n[tag=scp1048Aorigin] if entity @s[distance=..1] run scoreboard players remove @s health 1000

#DOT
execute at @n[tag=scp1048Aorigin] if entity @s[distance=1..2.5] run scoreboard players operation @s health -= .DOT0 shriek
execute at @n[tag=scp1048Aorigin] if entity @s[distance=2.5..4.5] run scoreboard players operation @s health -= .DOT1 shriek
execute at @n[tag=scp1048Aorigin] if entity @s[distance=4.5..9] run scoreboard players operation @s health -= .DOT2 shriek
execute at @n[tag=scp1048Aorigin] if entity @s[distance=1..6.5] if predicate scp1048a:20 run scoreboard players operation @s bleeding += 1 math

#adding killfeed
execute if score @s health <= 0 math run tag @s add d_1048a

#blood particle
particle block{block_state:{Name:redstone_block}} ~ ~2 ~ 0.2 0.2 0.2 0 5

#reset
scoreboard players operation @s shriek = 0 math