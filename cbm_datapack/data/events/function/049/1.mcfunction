execute as @e[tag=elevator] if entity @s[tag=049] run tag @s add broken
schedule function events:049/lightsoff 16t replace
playsound cb:scp049.blackout ambient @a[tag=location.049chamber] ~ ~ ~ 0.75 1 1
playsound cb:scp049.blackout ambient @a[tag=!location.049chamber] ~ ~-5 ~ 0.075 1 1

scoreboard players set .state chamber049.event 1