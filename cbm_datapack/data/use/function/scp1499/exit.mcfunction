# execute as @e[tag=1499_point,limit=1] at @s run tp @a[tag=h_scp1499] ~ ~ ~ facing entity @s
execute at @a[tag=h_scp1499] positioned as @e[tag=1499_point,limit=1] rotated as @e[tag=1499_point,limit=1] run tp @a[tag=h_scp1499] ~ ~ ~ ~ ~


execute at @a[tag=h_scp1499] run playsound cb:scp1499.exit ambient @a[tag=h_scp1499] ~ ~ ~ 0.75
tag @a remove h_scp1499