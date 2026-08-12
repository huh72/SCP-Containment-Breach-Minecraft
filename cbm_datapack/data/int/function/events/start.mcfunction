playsound cb:i.music ambient @a ~ ~ ~ 0.45 1 1
scoreboard players operation .ambient i = .ambient.max i

execute as @a run attribute @s minecraft:jump_strength base set 0

scoreboard players set @a blink_timer -1
tag @a remove can_blink
tag @a remove i.encounteredDummy
tag @a remove seeDummyDirectly

execute at @n[tag=i.spawnstartpaper] run function spawn:drop/paper {"state":"start"}
execute at @n[tag=i.soundpoint0] as @a run function save_progress:save {"sound":"none"}

#guards spawn
#ulgrin
execute at @n[tag=i.soundpoint0] positioned ^-0.25 ^ ^ run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.soundpoint0] positioned ^-0.25 ^ ^ run tag @n[tag=guard] add ulgrin
# execute at @n[tag=i.soundpoint0] positioned ^-0.25 ^ ^ run summon minecraft:interaction ~ ~ ~ {Tags:['interaction'],width:1.0f,height:2.0f}

#ulring's partner
execute at @n[tag=i.soundpoint0] positioned ^2 ^ ^0.5 run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.soundpoint0] positioned ^2 ^ ^0.5 run tag @n[tag=guard] add ulgrinP
execute at @n[tag=i.soundpoint0] positioned ^2 ^ ^0.5 run attribute @n[tag=guard] movement_speed base set 0.9
# execute at @n[tag=i.soundpoint0] positioned ^2 ^ ^0.5 run summon minecraft:interaction ~ ~ ~ {Tags:['interaction'],width:1.0f,height:2.0f}
attribute @n[tag=ulgrinP] minecraft:movement_speed base set 0.75

execute as @e[tag=guard] run rotate @s facing entity @p

#balcony guard spawn
execute at @n[tag=i.balconyGuardSpawnpoint] run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.balconyGuardSpawnpoint] run tag @n[tag=guard] add balcony
# execute at @n[tag=i.balconyGuardSpawnpoint] run summon minecraft:interaction ~ ~ ~ {Tags:['interaction'],width:1.0f,height:2.0f}

#another one guard spawn
execute at @n[tag=i.musicguardspawnpoint] run function guard:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@s"}
execute at @n[tag=i.musicguardspawnpoint] run tag @n[tag=guard] add musicguard
# execute at @n[tag=i.musicguardspawnpoint] run summon minecraft:interaction ~ ~ ~ {Tags:['interaction'],width:1.0f,height:2.0f}

# execute as @n[tag=start.gate] run function animated_java:gate/animations/openclosetoggle/resume

scoreboard players add .timer i 1
scoreboard players set .status i -1

#g do not let scps spawn during intro seq
function scps:spawnsystem/all/dontincreasetimer
function scps:spawnsystem/all/resettimer

#close door
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume