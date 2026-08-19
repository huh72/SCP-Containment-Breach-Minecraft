summon minecraft:wandering_trader ~ ~ ~ {Tags:['scp966', 'new', 'canOpenDoors'],Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:scale", base:0.75}],Passengers:[{id:"minecraft:armor_stand",Tags:['shulker_hitbox_helper966'],attributes:[{id:"minecraft:scale", base:0.001}],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Invisible:1b,Passengers:[{id:"minecraft:shulker",Tags:['shulker_hitbox966'],Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,NoAI:1b}]}]}

#g init entity
attribute @n[tag=new] movement_speed base set 0.02

effect give @n[tag=scp966] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox966] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox966] regeneration infinite 10 true

scoreboard players set @s echo966 1

tag @n[tag=new] remove new