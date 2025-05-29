playsound cb:d9341.falldamage ambient @s ~ ~100 ~ 10
playsound cb:d9341.falldamage ambient @a[distance=0.01..] ~ ~ ~ 1

$scoreboard players remove @s health $(damage)
execute if score @s health matches ..0 run tag @s add d_fall

scoreboard players set @s fall 0