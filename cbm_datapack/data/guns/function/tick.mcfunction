# execute store result storage gun_main xa int 1 run random value 0..9 cb:acc
# execute store result storage gun_main ya int 1 run random value 0..9 cb:acc

# execute as @a[scores={right_click_gun=1..}] at @s run function guns:shoot with storage minecraft:gun_main

# scoreboard players set @a[tag=armed] right_click_gun 0

#main handler
# function guns:handler

# execute unless score @s gun_selected = @s prev_gun_selected run

# execute as @a at @s if score @s gun_selected matches 1 run function guns:weapons/p90/handler

scoreboard players remove @e[scores={shot_cd=1..}] shot_cd 1

#bullet holes
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ~ ~ ~ #drop:air run tp @s ^ ^ ^-0.02
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ^ ^ ^-0.1 #drop:air run tp @s ^ ^ ^-0.1
execute as @e[tag=bullet_hole] at @s anchored eyes unless block ^ ^ ^-0.2 #drop:air run tp @s ^ ^ ^-0.2

### bullet
# execute as @e[tag=bullet] at @s run function guns:bullet/tick

###drop
# execute as @e[type=item,scores={drop_live=1},nbt={Item:{id:"minecraft:carrot_on_a_stick",custom_data:{gun:1}}}] at @s run say @s 1
# execute as @e[type=item,scores={drop_live=1},nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run function guns:drop
# scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] drop_live 1

scoreboard players remove @a[scores={shot_cd=1..}] shot_cd 1
scoreboard players remove @a[tag=armed,tag=reloading,scores={reload=1..}] reload 1

execute as @a[tag=!armed] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_model="cb:usps"] run playsound cb:m4a1s.draw ambient @a ~ ~ ~ 0.05 1 1
execute as @a[tag=!armed] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_model="cb:usps"] run tag @s add armed
execute as @a[tag=armed] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_model="cb:usps"] run tag @s remove armed

execute as @a[tag=armed] if score @s ammo matches 0 run tag @s add reloading
execute as @a[tag=armed] if score @s ammo matches 0 run scoreboard players set @s reload 60
execute as @a[tag=armed] if score @s ammo matches 0 run scoreboard players set @s ammo -1
execute as @a[tag=armed,tag=reloading] if score @s reload matches 0 run scoreboard players set @s ammo 12
execute as @a[tag=armed,tag=reloading] if score @s reload matches 0 if score @s ammo matches 12 run tag @s remove reloading

execute as @a[tag=armed] at @s run function guns:usp_handler