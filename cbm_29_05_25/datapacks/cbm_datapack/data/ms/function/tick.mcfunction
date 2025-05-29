# execute as @a if predicate ms:sneak run scoreboard players operation
# execute as @a if predicate ms:walk run scoreboard players operation @s sneak = @s walk_
# execute as @a if predicate ms:walk run scoreboard players operation @s run = @s walk_

# execute as @a if predicate ms:run run scoreboard players operation @s sneak = @s run
# execute as @a if predicate ms:run run scoreboard players operation @s walk_ = @s run
tag @a[predicate=ms:sneak] add sneaking
tag @a[predicate=!ms:sneak] remove sneaking

execute as @a[tag=!move_checked] at @s run function ms:move_check

execute as @a if score @s walk_ >= step* walk_ at @s if block ~ ~-0.4 ~ #ms:stone run function ms:step {"sound":"step"}
execute as @a if score @s run >= step* run at @s if block ~ ~-0.4 ~ #ms:stone run function ms:run {"sound":"run"}
execute as @a[tag=moved] if score @s sneak >= step* sneak at @s if block ~ ~-0.4 ~ #ms:stone run function ms:sneak {"sound":"step"}

execute as @a if score @s walk_ >= step* walk_ at @s if block ~ ~-0.4 ~ #ms:metal run function ms:step {"sound":"stepmetal"}
execute as @a if score @s run >= step* run at @s if block ~ ~-0.4 ~ #ms:metal run function ms:run {"sound":"runmetal"}
execute as @a[tag=moved] if score @s sneak >= step* sneak at @s if block ~ ~-0.4 ~ #ms:metal run function ms:sneak {"sound":"stepmetal"}

# execute as @a if predicate ms:sneak run say @s sneak
# execute as @a if predicate ms:walk run say @s walk
# execute as @a if predicate ms:run run say @s run

execute as @a at @s if block ~ ~-0.1 ~ minecraft:air if block ~ ~-0.1 ~0.4 minecraft:air if block ~ ~-0.1 ~-0.4 minecraft:air if block ~0.4 ~-0.1 ~ minecraft:air if block ~-0.4 ~-0.1 ~ minecraft:air run scoreboard players add @s fall_step 1
execute as @a at @s unless block ~ ~-0.1 ~ minecraft:air if score @s fall_step matches 10.. run function ms:fall/step {"sound":"step"}
execute as @a at @s unless block ~ ~-0.1 ~ minecraft:air run scoreboard players set @s fall_step 0


tag @a remove move_checked
tag @a remove moved