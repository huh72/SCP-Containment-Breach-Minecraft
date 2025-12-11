$execute as @n[tag=pds] unless entity @s[distance=..1] as @n[tag=pds_roomsize] unless entity @s[distance=..7] as @p run playsound cb:player.$(sound) ambient @s ~ ~100 ~ 10
$execute as @n[tag=pds] unless entity @s[distance=..1] as @n[tag=pds_roomsize] unless entity @s[distance=..7] run playsound cb:player.$(sound) ambient @a[distance=0.01..] ~ ~ ~ 0.8

execute as @n[tag=pds] if entity @s[distance=..1] run playsound cb:scp106.step ambient @s ~ ~ ~ 2 1 1
execute as @n[tag=pds] if entity @s[distance=..1] run playsound cb:scp106.step ambient @a[distance=..0.01] ~ ~ ~ 2

execute as @n[tag=pds_roomsize] if entity @s[distance=..7] run playsound cb:scp106.step ambient @s ~ ~ ~ 2 1 1
execute as @n[tag=pds_roomsize] if entity @s[distance=..7] run playsound cb:scp106.step ambient @a[distance=..0.01] ~ ~ ~ 2

scoreboard players set @s sneak 0
scoreboard players set @s walk_ 0
scoreboard players set @s run 0