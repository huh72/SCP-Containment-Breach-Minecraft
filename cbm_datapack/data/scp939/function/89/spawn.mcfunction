summon wandering_trader ~ ~ ~ {Tags:['scp939_89','scp939','new'],Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
summon marker ~ ~1 ~ {Tags:['marker939_89','marker939']}
execute rotated 0 0 run function animated_java:scp939/summon with storage aj:temp

attribute @n[tag=new] minecraft:movement_speed base set 0.55
# data modify entity @n[tag=new] wander_target set from entity @n[tag=new] Pos

#939 vars
scoreboard players operation @n[tag=new] attack_cd = .max attack_cd
scoreboard players operation @n[tag=new] hit_cd = max* hit_cd
scoreboard players operation @n[tag=new] phrase_cd = max* phrase_cd
scoreboard players set @n[tag=new] alert_cd 60
effect give @n[tag=scp939_89] invisibility infinite 1 true

#players vars
scoreboard players set @a spot_level 0

tag @e remove new
#scoreboard players set @e[tag=scp0492] breath 1
#scoreboard players operation @e[tag=scp0492,limit=1] hit_cd = max* hit_cd
#effect give @e[tag=scp0492] weakness infinite 100 true