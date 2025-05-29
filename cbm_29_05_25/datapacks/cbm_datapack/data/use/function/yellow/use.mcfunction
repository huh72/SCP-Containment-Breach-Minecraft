execute at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:acacia_boat

scoreboard players set @s item_selected 14
scoreboard players set @s used_a 1