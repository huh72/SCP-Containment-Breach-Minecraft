summon zombie ~ ~ ~ {Tags:['scp096', 'new', 'idle'], Invincible:1b, Silent:1b, NoAI:1b, PersistenceRequired:1b}

execute rotated 0 0 run function animated_java:scp096/summon with storage aj:temp

#
effect give @n[type=zombie, tag=scp096] invisibility infinite 255 true
attribute @n[type=zombie, tag=scp096] minecraft:movement_speed base set 0.4
attribute @n[type=zombie, tag=scp096] minecraft:attack_damage base set 0

scoreboard players set scp096 rageCycle 0

tag @n[type=zombie, tag=scp096, tag=new] remove new