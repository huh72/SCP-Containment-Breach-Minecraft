#$: {"MoAI":"BOOLEAN","additionaltag":"STRING","rotatedAs":"SELECTOR"}
#spawn origin entity
$summon wandering_trader ~ ~ ~ {Tags:['guard','solo_spawned','new','gun_damage_target','$(additionaltag)'],Invulnerable:1b,Silent:1b,NoAI:$(NoAI)b}
$data modify entity @n[type=wandering_trader,tag=mtf,tag=new] Rotation set from entity $(rotatedAs) Rotation

attribute @n[type=wandering_trader,tag=guard] minecraft:jump_strength base set 0
execute rotated 0 0 run function animated_java:guard/summon with storage aj:temp
scoreboard players operation @n[type=wandering_trader,tag=new] acc = acc stat_p90
scoreboard players operation @n[type=wandering_trader,tag=new] shot_cd = shot_cd stat_p90
scoreboard players set @n[type=wandering_trader,tag=new] health 120

tag @e[type=wandering_trader, tag=new] remove new