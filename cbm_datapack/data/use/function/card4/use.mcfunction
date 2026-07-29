execute at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:lightning_rod

scoreboard players set @s item_selected 4
scoreboard players set @s used_a 1
scoreboard players set @s access_level 4