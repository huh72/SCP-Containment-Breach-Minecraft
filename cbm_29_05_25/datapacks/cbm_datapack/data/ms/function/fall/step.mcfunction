$playsound cb:player.$(sound) ambient @s ~ ~100 ~ 10
$playsound cb:player.$(sound) ambient @a[distance=0.01..] ~ ~ ~ 0.8

scoreboard players set @s sneak 0
scoreboard players set @s walk_ 0
scoreboard players set @s run 0
scoreboard players set @s fall_step 0