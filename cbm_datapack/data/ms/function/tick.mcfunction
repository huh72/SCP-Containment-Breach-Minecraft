#sneak speed control
execute as @a run attribute @s movement_speed modifier remove 0000-0-0-0-1
execute as @a[predicate=ms:sneak] run attribute @s[scores={bleeding=0}] movement_speed modifier add 0000-0-0-0-1 0.1 add_value
execute as @a[predicate=ms:sneak] run attribute @s[scores={bleeding=1..2}] movement_speed modifier add 0000-0-0-0-1 0.095 add_value
execute as @a[predicate=ms:sneak] run attribute @s[scores={bleeding=3..4}] movement_speed modifier add 0000-0-0-0-1 0.07 add_value
execute as @a[predicate=ms:sneak] run attribute @s[scores={bleeding=5..9}] movement_speed modifier add 0000-0-0-0-1 0.06 add_value
execute as @a[predicate=ms:sneak] run attribute @s[scores={bleeding=10}] movement_speed modifier add 0000-0-0-0-1 0.05 add_value


tag @a[predicate=ms:sneak] add sneaking
tag @a[predicate=!ms:sneak] remove sneaking

execute as @a[tag=!move_checked] at @s run function ms:move_check

#step
execute as @a if score @s walk_ >= step* walk_ at @s if block ~ ~-0.4 ~ #ms:stone run function ms:step {"sound":"step"}
execute as @a if score @s run >= step* run at @s if block ~ ~-0.4 ~ #ms:stone run function ms:run {"sound":"run"}
execute as @a[tag=moved] if score @s sneak >= step* sneak at @s if block ~ ~-0.4 ~ #ms:stone run function ms:sneak {"sound":"step"}

#step metal
execute as @a if score @s walk_ >= step* walk_ at @s if block ~ ~-0.4 ~ #ms:metal run function ms:step {"sound":"stepmetal"}
execute as @a if score @s run >= step* run at @s if block ~ ~-0.4 ~ #ms:metal run function ms:run {"sound":"runmetal"}
execute as @a[tag=moved] if score @s sneak >= step* sneak at @s if block ~ ~-0.4 ~ #ms:metal run function ms:sneak {"sound":"stepmetal"}

execute as @a at @s if block ~ ~-0.1 ~ minecraft:air if block ~ ~-0.1 ~0.4 minecraft:air if block ~ ~-0.1 ~-0.4 minecraft:air if block ~0.4 ~-0.1 ~ minecraft:air if block ~-0.4 ~-0.1 ~ minecraft:air run scoreboard players add @s fall_step 1
execute as @a at @s unless block ~ ~-0.1 ~ minecraft:air if score @s fall_step matches 10.. run function ms:fall/step {"sound":"step"}
execute as @a at @s unless block ~ ~-0.1 ~ minecraft:air run scoreboard players set @s fall_step 0

tag @a remove move_checked
tag @a remove moved