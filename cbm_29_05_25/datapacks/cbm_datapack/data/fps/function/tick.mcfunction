#Is sprinting detect
tag @a[predicate=fps:is_sprinting] add sprinting
tag @a[predicate=!fps:is_sprinting] remove sprinting

execute as @a[tag=player,tag=sprinting] at @s run function fps:sprint
execute as @a[tag=player,tag=!sprinting] at @s run function fps:restore

execute as @a[tag=player] at @s run function fps:food_level_contol

#execute as @e[tag=aj.blueprint.root] at @s run tp @s ^ ^ ^0.2

execute as @a[tag=player] at @s run function fps:interface
