tag @n[tag=106origin] add killed
playsound cb:scp106.kill ambient @a[distance=..16] ~ ~ ~ 1 1 1
playsound cb:pd.enter ambient @s ~ ~ ~ 1 1 1
function scp106:sounds/laugh
execute if score 106 scp106state matches 1 run scoreboard players operation 106 106hit_cd = max_a 106hit_cd
execute if score 106 scp106state matches 2 run scoreboard players operation 106 106hit_cd = max_p 106hit_cd
tag @s add hitby106
stopsound @s * cb:scp106.chase

#g main zones
tag @s[tag=lcz] add caughtInLcz
tag @s[tag=hcz] add caughtInHcz
tag @s[tag=ez] add caughtInEz
#g sub-levels
tag @s[tag=location.939storage] add caughtInLcz
tag @s[tag=location.049chamber] add caughtInHcz
tag @s[tag=location.106chamber] add caughtInHcz
tag @s[tag=location.nuke] add caughtInHcz

execute store result score .enter pocketDimension run random value 0..99 cb:pd
execute if score .enter pocketDimension matches 0..19 run scoreboard players set @s health 0
execute if score .enter pocketDimension matches 20..99 run function scp106:pd/enter