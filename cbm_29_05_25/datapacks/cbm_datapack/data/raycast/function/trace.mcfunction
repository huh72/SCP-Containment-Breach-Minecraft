summon marker ~ ~ ~ {Tags:["ray"]}

## distance = #itt * step_size = 128 * 0.25 = 32 blocks
scoreboard players set .itt raycast 128

tag @s add this
execute anchored eyes positioned ^ ^ ^ as @e[tag=ray] run function raycast:per_block
tag @s remove this

kill @e[tag=ray]
