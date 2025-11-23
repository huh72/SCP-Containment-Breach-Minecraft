#entities
scoreboard players set items var 0
execute as @e[tag=door] run scoreboard players add items var 1
# kill @e[tag=drop]

tellraw @a [{"score":{"name":"items","objective":"var"},"color":"green","underlined":true},{"text":" door entities was succesfully deleted!","color":"green"}]
