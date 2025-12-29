#timer
scoreboard players add .timer e 1
scoreboard players add @a[scores={e2=0..}] e2 1

#spawn enities + settings
execute if score .timer e matches 1 at @n[tag=a2.pathpoint] run function endings:a2/init

#set player pos as target destination for mtf
execute if score .timer e matches 40 as @e[tag=mtf] run data modify entity @s wander_target set from entity @p[tag=!dead] Pos

#if player in 16 blocks range, game ends for him
execute as @e[tag=mtf,tag=notHostile] at @s as @a[distance=..8,tag=!a2.found] run function endings:a2/playerfound

#
execute as @a at @s if score @s e2 = .final e2 run function endings:a2/final