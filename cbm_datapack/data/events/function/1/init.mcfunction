tag @n[tag=lczlockdown] remove lczlockdown
execute as @e[tag=checkpoint, tag=hcz] run tag @s remove blocked

function scp049:despawn
execute at @n[type=marker,tag=event1_spawn049] run function scp049:spawn
execute at @n[type=marker,tag=event1_spawn049] run playsound cb:scp049.event1spawn ambient @a ~ ~ ~ 1 1 1
execute at @n[type=marker,tag=event1_spawn049] run playsound cb:scp049.event1_2 ambient @a ~ ~ ~ 1.25 1 1
kill @e[type=marker,tag=event1_spawn049]

execute as @e[tag=event1_door] at @s if entity @s[tag=closed] run playsound cb:scp079.horror ambient @a ~ ~ ~ 0.85 1 1
execute as @e[tag=event1_door] at @s if entity @s[tag=closed] as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
execute as @e[tag=event1_door] run scoreboard players set @s access_level 100000