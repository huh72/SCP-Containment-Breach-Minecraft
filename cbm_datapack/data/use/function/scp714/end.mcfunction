execute at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with air
tag @s remove scp714

function inventory:hotbar/set {"text":"'You removed the ring."}

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1