
summon zombie ~ ~ ~ {Tags:['scp049_2','scp049_2g','tesla_trigger','new','hit', 'elevatorTarget', 'canOpenDoors'],Invulnerable:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1}],PersistenceRequired:1b}
effect give @e[type=zombie,tag=scp049_2,tag=new] minecraft:fire_resistance infinite 0 true
attribute @n[tag=new] movement_speed base set 0.185
# attribute @n[tag=new] scale base set 1.25
effect give @n[tag=new] invisibility infinite 0 true
execute rotated 0 0 run function animated_java:scp049_2/summon with storage aj:temp
scoreboard players set @n[tag=new] breath 1
scoreboard players set @n[tag=new] health 400
scoreboard players operation @n[tag=new] hit_cd = max* hit_cd
attribute @n[tag=scp049_2,tag=new] follow_range base set 64
effect give @n[tag=new] weakness infinite 100 true
tag @e remove new