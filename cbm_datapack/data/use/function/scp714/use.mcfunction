execute at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with lightning_rod
tag @s add scp714

function inventory:hotbar/set {"text":"'You put on the ring."}

# scoreboard players set @s item_selected 20
scoreboard players set @s used_a 1