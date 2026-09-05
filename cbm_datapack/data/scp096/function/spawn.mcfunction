summon zombie ~ ~ ~ {Tags:['scp096', 'new', 'idle'],attributes:[{id:"minecraft:scale", base:0.75}],Invulnerable:1b, Silent:1b, NoAI:1b, PersistenceRequired:1b,Passengers:[{id:"minecraft:armor_stand",Tags:['shulker_hitbox_helper096'],attributes:[{id:"minecraft:scale", base:0.001}],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Invisible:1b,Passengers:[{id:"minecraft:shulker",Tags:['shulker_hitbox096'],attributes:[{id:"minecraft:scale", base:1.25}],Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,NoAI:1b}]}]}


execute rotated 0 0 run function animated_java:scp096/summon with storage aj:temp

#g init 096
effect give @n[type=zombie, tag=scp096] invisibility infinite 255 true
attribute @n[type=zombie, tag=scp096] minecraft:movement_speed base set 0.35
attribute @n[type=zombie, tag=scp096] minecraft:attack_damage base set 0
attribute @n[type=zombie, tag=scp096] minecraft:follow_range base set 256
attribute @n[type=zombie, tag=scp096] minecraft:jump_strength base set 0
attribute @n[type=zombie, tag=scp096] minecraft:step_height base set 1

scoreboard players set scp096 rageCycle 0

#g init hitbox
effect give @n[tag=shulker_hitbox096] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox096] regeneration infinite 10 true

tag @n[type=zombie, tag=scp096, tag=new] remove new