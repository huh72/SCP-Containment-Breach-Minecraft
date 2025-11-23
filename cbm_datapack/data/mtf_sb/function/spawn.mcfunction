summon wandering_trader ~ ~ ~ {Tags:['mtf','solo_spawned','new','hit','gun_damage_target']}
execute rotated 0 0 run function animated_java:mtf/summon with storage aj:temp
scoreboard players set @e[type=wandering_trader, tag=new] acc 100 
scoreboard players set @e[type=wandering_trader, tag=new] player_seen 100 
scoreboard players operation @e[type=wandering_trader, tag=new] shot_cd = shot_cd stat_p90
scoreboard players set @e[type=wandering_trader, tag=new] health 120 
scoreboard players set @e[type=wandering_trader, tag=new] global_num -1


# sounds
playsound cb:mtf.breath ambient @a ~ ~ ~ 0.4 1 1
scoreboard players operation @e[type=wandering_trader, tag=new] breath_cd = max breath_cd
scoreboard players set @e[type=wandering_trader, tag=new] beep_cd 1

tag @e[type=wandering_trader, tag=new] remove new