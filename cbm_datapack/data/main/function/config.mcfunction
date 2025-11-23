bossbar add l1 "#1"
bossbar add l2 "#2"
bossbar add l3 "#3"

bossbar set l1 players @a
bossbar set l2 players @a
bossbar set l3 players @a

bossbar set l1 color pink
bossbar set l2 color pink
bossbar set l3 color pink

scoreboard objectives add line_occ dummy

scoreboard objectives add line_timer dummy

scoreboard objectives add line_dur dummy
scoreboard players set max line_dur 200
execute unless score l1 line_dur matches 0.. run scoreboard players set l1 line_dur 0
execute unless score l2 line_dur matches 0.. run scoreboard players set l2 line_dur 0
execute unless score l3 line_dur matches 0.. run scoreboard players set l3 line_dur 0

scoreboard objectives add line_id dummy
execute unless score l1 line_id matches 0.. run scoreboard players set l1 line_id 0
execute unless score l2 line_id matches 0.. run scoreboard players set l2 line_id 0
execute unless score l3 line_id matches 0.. run scoreboard players set l3 line_id 0

scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard objectives add pos_neg dummy
#positive or negative pos
scoreboard players set drop pos_neg 0

data modify storage minecraft:drop_pos x set value 0
data modify storage minecraft:drop_pos z set value 0
