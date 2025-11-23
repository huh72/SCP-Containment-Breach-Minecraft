###bullet
scoreboard objectives add bullet_live_time dummy
scoreboard players set max bullet_live_time 40

### bullet_holes
scoreboard objectives add bullet_hole_live_time dummy
scoreboard objectives add num_hole dummy
scoreboard objectives add b_hole dummy

scoreboard players set max bullet_hole_live_time 6000

execute unless score max num_hole matches 1.. run scoreboard players set max num_hole 0

execute unless score max b_hole matches 1.. run scoreboard players set max b_hole 64
execute if score max_live_time b_hole matches ..0 run scoreboard players set max_live_time b_hole 6000


#bullet Rot[x],[y]
scoreboard objectives add bullet dummy