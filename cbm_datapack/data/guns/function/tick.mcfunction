# execute store result storage gun_main xa int 1 run random value 0..9 cb:acc
# execute store result storage gun_main ya int 1 run random value 0..9 cb:acc

# execute as @a[scores={right_click_gun=1..}] at @s run function guns:shoot with storage minecraft:gun_main

# scoreboard players set @a[tag=armed] right_click_gun 0

#main handler
function guns:handler

# execute unless score @s gun_selected = @s prev_gun_selected run

# execute as @a at @s if score @s gun_selected matches 1 run function guns:weapons/p90/handler

#bullet holes
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ~ ~ ~ #drop:air run tp @s ^ ^ ^-0.02
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ^ ^ ^-0.1 #drop:air run tp @s ^ ^ ^-0.1
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ^ ^ ^-0.2 #drop:air run tp @s ^ ^ ^-0.2

### bullet
# execute as @e[tag=bullet] at @s run function guns:bullet/tick

###drop
# execute as @e[type=item,scores={drop_live=1},nbt={Item:{id:"minecraft:carrot_on_a_stick",custom_data:{gun:1}}}] at @s run say @s 1
# execute as @e[type=item,scores={drop_live=1},nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run function guns:drop
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] drop_live 1

function guns:player_controller/tick