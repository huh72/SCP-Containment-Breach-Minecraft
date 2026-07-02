summon minecraft:vindicator ~ ~ ~ {Tags:['scp049','new','tesla_trigger'], Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
effect give @n[tag=new] invisibility infinite 1 true
execute rotated 0 0 run function animated_java:scp049/summon with storage aj:temp
attribute @n[tag=scp049] movement_speed base set 0.3
effect give @n[tag=scp049] weakness infinite 255 true
scoreboard players set 049 phrase 140
scoreboard players set 049 door_open_cd 200
tag @e remove new