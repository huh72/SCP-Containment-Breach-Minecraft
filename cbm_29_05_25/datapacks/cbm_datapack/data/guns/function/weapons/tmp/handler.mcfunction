#&7vars
scoreboard players remove @s[scores={shot_cd=1..}] shot_cd 1

#&7stats
scoreboard players operation @s acc = acc stat_m4a1


#&7shooting
#gun stuff


#spread
execute store result storage gun_main xa int 1 run random value 0..9 cb:acc
execute store result storage gun_main ya int 1 run random value 0..9 cb:acc
#gun's vars --> shoot func()
execute store result storage gun_main shot_cd int 1 run scoreboard players get shot_cd stat_tmp

execute as @s[scores={right_click_gun=1..,shot_cd=0,ammo=1..},tag=!reloading] run function guns:shoot with storage minecraft:gun_main


###code reload here -- already enohgj files in 'reload' folder
#var
scoreboard players remove @s[scores={reload=1..}] reload 1
#reload start 
execute as @s[scores={ammo=0},tag=!reloading] run function guns:weapons/tmp/reload/start
#reload end
execute as @s[scores={reload=0},tag=reloading] run function guns:weapons/tmp/reload/end