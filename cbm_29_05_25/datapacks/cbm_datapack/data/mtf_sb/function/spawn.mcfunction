summon wither_skeleton ~ ~ ~ {Tags:['mtf','solo_spawned','new','hit','gun_damage_target']}
scoreboard players set @e[tag=new] acc 100 
scoreboard players set @e[tag=new] player_seen 100 
scoreboard players operation @e[tag=new] shot_cd = shot_cd stat_p90
scoreboard players set @e[tag=new] health 120 
scoreboard players set @e[tag=new] global_num -1
execute store result score @n[tag=new] max_beep_cd run random value 400..600 cb:beep


# sounds
playsound cb:mtf.breath ambient @a ~ ~ ~ 0.4 1 1
scoreboard players operation @e[tag=new] breath_cd = max breath_cd
playsound cb:mtf.beep ambient @a ~ ~ ~ 2 1 1
scoreboard players operation @e[tag=new] beep_cd = max beep_cd

tag @e[tag=new] remove new