execute at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
scoreboard players set @s bleeding 0
scoreboard players set @s health 120

function inventory:hotbar/set {"text":"'You took a pill and feel whole again."}

function use:remove_item