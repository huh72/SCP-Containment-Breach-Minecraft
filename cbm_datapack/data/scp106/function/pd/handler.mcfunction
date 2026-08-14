# on hit - 20 = death, 80 = pd, on enter tunnel - 20 = death, 20 = escape, 60 = back to center
#g ambient
scoreboard players add @a[tag=location.pocketDimension, scores={pocketDimension=0..}] pocketDimension 1
execute as @a[tag=location.pocketDimension] if score @s pocketDimension = .ambient pocketDimension run function scp106:pd/ambient

#g player reached end of a tunnel
execute as @a[tag=location.pocketDimension] unless entity @s[distance=..16] run function scp106:pd/escape