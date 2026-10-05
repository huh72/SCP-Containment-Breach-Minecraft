#for spawn instance "state" macros has to be defined [active/passive]
$summon wandering_trader ~ ~ ~ {Tags:['infected008', 'mtf_enemy', 'ci_enemy', 'new', 'tesla_trigger', '$(state)', 'hit', 'elevatorTarget', 'canOpenDoors'],Silent:1b,Invulnerable:1b,Armor_items:[{},{},{},{id:"minecraft:air",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":1}}}}],PersistenceRequired:true}
item replace entity @n[type=wandering_trader, tag=infected008, tag=new] armor.head with minecraft:carrot_on_a_stick

#editing the entity's speed
execute as @n[type=wandering_trader, tag=infected008, tag=new] run attribute @s movement_speed base set 0.425
execute as @n[type=wandering_trader, tag=infected008, tag=new] run attribute @s follow_range base set 64

effect give @e[type=wandering_trader, tag=infected008, tag=new] minecraft:invisibility infinite 0 true
effect give @e[type=wandering_trader, tag=infected008, tag=new] minecraft:weakness infinite 255 true

#summon the animated java entity
execute as @n[type=wandering_trader, tag=infected008, tag=new] at @s run function animated_java:infected008/summon with storage aj:temp

#if passive, apply first passive (wake) animation frame
execute as @n[type=wandering_trader, tag=infected008, tag=new] if entity @s[tag=passive] as @n[tag=aj.infected008.root] run function animated_java:infected008/animations/wake/apply_frame {"frame":"0"}

#
execute as @n[type=wandering_trader, tag=infected008, tag=new] if entity @s[tag=active] run scoreboard players set @s health 300

execute as @n[type=wandering_trader, tag=infected008, tag=new] if entity @s[tag=active] run scoreboard players set @s infected008 185

#
tag @e[type=wandering_trader, tag=infected008, tag=new] remove new