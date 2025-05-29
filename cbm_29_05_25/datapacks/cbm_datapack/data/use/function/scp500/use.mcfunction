execute at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
scoreboard players set @s bleeding 0
scoreboard players set @s health 100
function use:remove_item