#sneak speed control
attribute @s movement_speed modifier remove 0000-0-0-0-1
attribute @s[scores={bleeding=0},predicate=ms:sneak] movement_speed modifier add 0000-0-0-0-1 0.1 add_value
attribute @s[scores={bleeding=1..2},predicate=ms:sneak] movement_speed modifier add 0000-0-0-0-1 0.095 add_value
attribute @s[scores={bleeding=3..4},predicate=ms:sneak] movement_speed modifier add 0000-0-0-0-1 0.07 add_value
attribute @s[scores={bleeding=5..9},predicate=ms:sneak] movement_speed modifier add 0000-0-0-0-1 0.06 add_value
attribute @s[scores={bleeding=10},predicate=ms:sneak] movement_speed modifier add 0000-0-0-0-1 0.05 add_value


tag @s[predicate=ms:sneak] add sneaking
tag @s[predicate=!ms:sneak] remove sneaking

execute if entity @s[tag=!move_checked] run function ms:move_check

#step
execute if score @s walk_ >= step* walk_ if block ~ ~-0.4 ~ #ms:stone run function ms:step {"sound":"step"}
execute if score @s run >= step* run if block ~ ~-0.4 ~ #ms:stone run function ms:run {"sound":"run"}
execute if score @s[tag=moved] sneak >= step* sneak if block ~ ~-0.4 ~ #ms:stone run function ms:sneak {"sound":"step"}

#step metal
execute if score @s walk_ >= step* walk_ if block ~ ~-0.4 ~ #ms:metal run function ms:step {"sound":"runmetal"}
execute if score @s run >= step* run if block ~ ~-0.4 ~ #ms:metal run function ms:run {"sound":"stepmetal"}
execute if score @s[tag=moved] sneak >= step* sneak if block ~ ~-0.4 ~ #ms:metal run function ms:sneak {"sound":"runmetal"}

execute if block ~ ~-0.1 ~ minecraft:air if block ~ ~-0.1 ~0.4 minecraft:air if block ~ ~-0.1 ~-0.4 minecraft:air if block ~0.4 ~-0.1 ~ minecraft:air if block ~-0.4 ~-0.1 ~ minecraft:air run scoreboard players add @s fall_step 1
execute unless block ~ ~-0.1 ~ minecraft:air if score @s fall_step matches 10.. run function ms:fall/step {"sound":"step"}
execute unless block ~ ~-0.1 ~ minecraft:air run scoreboard players set @s fall_step 0

tag @s remove move_checked
tag @s remove moved

# cb:scp106.step