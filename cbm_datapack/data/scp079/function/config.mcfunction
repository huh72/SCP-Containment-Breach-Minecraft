scoreboard objectives add scp079.broadcast0 dummy
scoreboard objectives add scp079.broadcast1 dummy
scoreboard objectives add scp079.broadcast2 dummy
scoreboard objectives add scp079.broadcast3 dummy
scoreboard objectives add scp079.broadcast4 dummy
scoreboard objectives add scp079.broadcast5 dummy
scoreboard objectives add scp079.broadcast6 dummy

scoreboard players set .cd scp079.broadcast0 7200

execute as @a unless score @s scp079.broadcast0 matches ..0 run scoreboard players set @s scp079.broadcast0 -1
execute as @a unless score @s scp079.broadcast1 matches ..0 run scoreboard players set @s scp079.broadcast1 -1
execute as @a unless score @s scp079.broadcast2 matches ..0 run scoreboard players set @s scp079.broadcast2 -1
execute as @a unless score @s scp079.broadcast3 matches ..0 run scoreboard players set @s scp079.broadcast3 -1
execute as @a unless score @s scp079.broadcast4 matches ..0 run scoreboard players set @s scp079.broadcast4 -1
execute as @a unless score @s scp079.broadcast5 matches ..0 run scoreboard players set @s scp079.broadcast5 -1
execute as @a unless score @s scp079.broadcast6 matches ..0 run scoreboard players set @s scp079.broadcast6 -1

scoreboard players set max scp079.broadcast0 20
scoreboard players set max scp079.broadcast1 15
scoreboard players set max scp079.broadcast2 5
scoreboard players set max scp079.broadcast3 50
scoreboard players set max scp079.broadcast4 95
scoreboard players set max scp079.broadcast5 120
scoreboard players set max scp079.broadcast6 55
