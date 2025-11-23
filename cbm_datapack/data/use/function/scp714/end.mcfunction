execute at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s armor.chest with minecraft:air
tag @s remove scp714
function messages:usual {"text":"You removed the ring."}

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1