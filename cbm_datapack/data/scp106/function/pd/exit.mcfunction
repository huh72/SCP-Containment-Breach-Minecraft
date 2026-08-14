playsound cb:pd.exit ambient @s ~ ~ ~ 1 1 1
stopsound @s * cb:pd.ambient
execute at @e[type=marker, tag=door_marker, limit=1, sort=random] run tp @s[tag=caughtInLcz] ~ ~ ~0.35
execute at @e[type=marker, tag=door_marker_hcz, limit=1, sort=random] run tp @s[tag=caughtInHcz] ~ ~ ~0.35
execute at @e[type=marker, tag=door_marker_ez, limit=1, sort=random] run tp @s[tag=caughtInEz] ~ ~ ~0.35

tag @s[tag=caughtInLcz] add lcz
tag @s[tag=caughtInHcz] add hcz
tag @s[tag=caughtInEz] add ez

scoreboard players set @s[tag=lcz] zoneambientlcz 1
scoreboard players set @s[tag=hcz] zoneambienthcz 1
scoreboard players set @s[tag=ez] zoneambientez 1

execute if entity @s[tag=!caughtInLcz, tag=!caughtInHcz, tag=!caughtInEz] at @e[type=marker, tag=door_marker, limit=1, sort=random] run tp @s ~ ~ ~0.35

tag @s remove location.pocketDimension

function shader_control:effects/green/set {"value":"0.0"}