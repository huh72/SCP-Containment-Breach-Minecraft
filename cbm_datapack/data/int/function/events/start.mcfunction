playsound cb:i.music ambient @a ~ ~ ~ 0.45 1 1
scoreboard players operation .ambient i = .ambient.max i

execute as @a run attribute @s minecraft:jump_strength base set 0

scoreboard players set @a blink_timer -1
tag @a remove can_blink
tag @a remove i.encounteredDummy

execute at @n[tag=i.spawnstartpaper] run function spawn:drop/paper {"state":"start"}
execute at @n[tag=i.soundpoint0] as @a run function save_progress:save {"sound":"none"}

#guards spawn
execute at @n[tag=i.soundpoint0] positioned ^-0.25 ^ ^ run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.soundpoint0] positioned ^-0.25 ^ ^ run tag @n[tag=guard] add ulgrin

execute at @n[tag=i.soundpoint0] positioned ^2 ^ ^0.5 run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}

execute as @e[tag=guard] run rotate @s facing entity @p

#balcony guard spawn
execute at @n[tag=i.balconyGuardSpawnpoint] run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.balconyGuardSpawnpoint] run tag @n[tag=guard] add balcony

#another one guard spawn
execute at @n[tag=i.musicguardspawnpoint] run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.musicguardspawnpoint] run tag @n[tag=guard] add musicguard

scoreboard players add .timer i 1
scoreboard players set .status i -1

#close door
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume