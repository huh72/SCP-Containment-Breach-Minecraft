#cds
scoreboard players remove @e[scores={breath_cd=1..},tag=mtf] breath_cd 1
scoreboard players remove @e[scores={beep_cd=1..},tag=mtf] beep_cd 1

### sounds
#breath sound
execute as @e[tag=mtf] at @s if score @s breath_cd matches 0 run function mtf_sb:breath
execute as @e[tag=mtf] at @s run stopsound @a[distance=12..] ambient cb:mtf.breath
#beep sound
execute as @e[tag=mtf] at @s if score @s beep_cd matches 0 run function mtf_sb:beep
#step sound + move detect
execute as @e[tag=mtf,tag=!move_checked] at @s run function mtf_sb:ms/move_check
execute as @e[tag=mtf,predicate=ms:walk_mtf] run scoreboard players add @s mtf_step 1
execute as @e[tag=mtf] if score @s mtf_step >= step* mtf_step at @s unless block ~ ~-0.4 ~ air run function mtf_sb:ms/step
tag @e[tag=mtf] remove move_checked
tag @e[tag=mtf] remove moved

### player detecting
#player detect cast
execute as @e[tag=mtf] at @s anchored eyes rotated ~ ~2.5 run function mtf_sb:target_on_sight/cast

# detecting target and shot
scoreboard players set @a[tag=!seen] player_seen 0
### gun vars transfer
execute store result storage gun_main xa int 1 run random value 0..9 cb:acc
execute store result storage gun_main ya int 1 run random value 0..9 cb:acc
execute store result storage gun_main shot_cd int 1 run scoreboard players get shot_cd stat_m4a1s
execute as @e[tag=player_on_sight] at @s if score @p[tag=seen] player_seen >= max player_seen if score @s shot_cd matches 0 anchored eyes rotated ~ ~4.5 run function guns:shoot with storage minecraft:gun_main
###
execute if entity @a[tag=seen] as @e[tag=player_on_sight] at @s run function mtf_sb:spy_after
tag @e remove player_on_sight
tag @a remove seen




#kill func
execute as @e[tag=mtf] at @s if score @s health matches ..0 run function mtf_sb:despawn

#vars
scoreboard players remove @e[tag=mtf,scores={shot_cd=1..}] shot_cd 1
