particle block{block_state:{Name:redstone_block}} 0 0 0 0 0 0 0 250 force @a
scoreboard players operation @n[tag=scp966] hit_cd = 966 hit_cd
playsound cb:d9341.damage3 ambient @s ~ ~ ~ 1 1 1
playsound cb:d9341.damage3 ambient @a[distance=0.01..16] ~ ~ ~ 1.5 1 1

#g apply damage
execute store result score 966 damage run random value 4..15 cb:966damage
scoreboard players operation @s health -= 966 damage

#g apply bleeding
execute if predicate guns:6 run scoreboard players add @s bleeding 2
execute if predicate guns:10 run scoreboard players add @s bleeding 1

execute if score @s health matches ..0 run tag @s add d_966