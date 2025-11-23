#drop
scoreboard players set items var 0
execute as @e[tag=drop] run scoreboard players add items var 1
kill @e[tag=drop]

tellraw @a [{"score":{"name":"items","objective":"var"},"color":"green","underlined":true},{"text":" items was succesfully deleted!","color":"green"}]

