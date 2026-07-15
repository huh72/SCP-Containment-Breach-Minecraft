#r/ [ $ : 'mode' (random/0/1/2/3/4/5/6); $ : 'player' (any selector) ]
$summon marker ~ ~ ~ {Tags:['$(mode)','toRemove']}

execute as @n[tag=toRemove] if entity @s[tag=random] store result storage cb:scp079 broadcast int 1 run random value 0..6 cb:scp079broadcast

function scp079:broadcast/random with storage cb:scp079

$execute as @n[tag=toRemove] if entity @s[tag=0] as $(player) run scoreboard players set @s scp079.broadcast0 0
$execute as @n[tag=toRemove] if entity @s[tag=1] as $(player) run scoreboard players set @s scp079.broadcast1 0
$execute as @n[tag=toRemove] if entity @s[tag=2] as $(player) run scoreboard players set @s scp079.broadcast2 0
$execute as @n[tag=toRemove] if entity @s[tag=3] as $(player) run scoreboard players set @s scp079.broadcast3 0
$execute as @n[tag=toRemove] if entity @s[tag=4] as $(player) run scoreboard players set @s scp079.broadcast4 0
$execute as @n[tag=toRemove] if entity @s[tag=5] as $(player) run scoreboard players set @s scp079.broadcast5 0
$execute as @n[tag=toRemove] if entity @s[tag=6] as $(player) run scoreboard players set @s scp079.broadcast6 0


kill @n[tag=toRemove]