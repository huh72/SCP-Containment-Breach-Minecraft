execute as @e[tag=elevator] if entity @s[tag=049] run tag @s add broken
scoreboard players set @a[tag=location.049chamber] shader.brightness 0
playsound cb:scp049.blackout ambient @a[tag=location.049chamber] ~ ~ ~ 0.75 1 1
playsound cb:scp049.blackout ambient @a[tag=!location.049chamber] ~ ~-5 ~ 0.075 1 1

scoreboard players set .state chamber049.event 1