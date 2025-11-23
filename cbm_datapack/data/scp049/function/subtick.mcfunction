#step sound + move detect
execute if entity @s[tag=!move_checked] run function scp049:ms/move_check
scoreboard players add @s[predicate=ms:walk_mtf] mtf_step 1
execute if score @s mtf_step >= step* mtf_step unless block ~ ~-0.4 ~ air run function mtf_sb:ms/step
tag @s remove move_checked
tag @s remove moved

#animations
execute as @s[predicate=scp049:idle,tag=!idle] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/idle/play
execute as @s[predicate=scp049:idle,tag=!idle] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/walk/stop

execute as @s[predicate=scp049:walk,tag=!walk] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/idle/stop
execute as @s[predicate=scp049:walk,tag=!walk] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/walk/play

tag @s add idle
tag @s add walk

tag @s[predicate=!scp049:idle] remove idle
tag @s[predicate=!scp049:walk] remove walk


#phrase func
execute if score 049 phrase matches 400.. run function scp049:phrase