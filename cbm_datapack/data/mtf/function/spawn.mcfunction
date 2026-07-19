#$: {"MoAI":"BOOLEAN","additionaltag":"STRING","rotatedAs":"SELECTOR"}
#spawn origin entity
$summon wandering_trader ~ ~ ~ {Tags:['mtf','solo_spawned','new','gun_damage_target','$(additionaltag)','hit'],Invulnerable:1b,Silent:1b,NoAI:$(NoAI)b}
$data modify entity @n[type=wandering_trader,tag=mtf,tag=new] Rotation set from entity $(rotatedAs) Rotation

attribute @n[type=wandering_trader,tag=mtf] minecraft:jump_strength base set 0
execute rotated 0 0 run function animated_java:mtf/summon with storage aj:temp

#global num fix
scoreboard players operation @n[tag=mtf,tag=new] global_num = max* global_num
scoreboard players add @n[tag=mtf,tag=new] global_num 1
scoreboard players operation max* global_num = @n[tag=mtf,tag=new] global_num

scoreboard players operation @n[type=wandering_trader,tag=new] acc = acc stat_p90
scoreboard players operation @n[type=wandering_trader,tag=new] shot_cd = shot_cd stat_p90
scoreboard players set @n[type=wandering_trader,tag=new] health 200

# sounds init
scoreboard players set @e[type=wandering_trader, tag=new] breath_cd 1
execute store result score @e[type=wandering_trader, tag=new] beep_cd run random value 200..500 cb:mtfbeepcd

tag @e[type=wandering_trader, tag=new] remove new