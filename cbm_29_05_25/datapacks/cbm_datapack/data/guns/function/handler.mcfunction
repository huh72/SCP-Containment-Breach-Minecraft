# 0 v - weapon selector

#global status = no weapon + '-draw'
execute as @a unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick run scoreboard players set @s gun_selected -1
tag @a[scores={gun_selected=-1}] remove drawed
scoreboard players set @a[scores={gun_selected=-1},tag=reloading] reload -1
execute as @a[scores={gun_selected=-1}] at @s run function guns:stopsound_guns

#global status = any weapon
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run scoreboard players set @s gun_selected 0

###&guns:
#m4a1-s
execute as @a[scores={gun_selected=0}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={gun:1}] run scoreboard players set @s gun_selected 1
#m4a1
execute as @a[scores={gun_selected=0}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={gun:2}] run scoreboard players set @s gun_selected 2
#tmp
execute as @a[scores={gun_selected=0}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={gun:3}] run scoreboard players set @s gun_selected 3
#usps
execute as @a[scores={gun_selected=0}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={gun:4}] run scoreboard players set @s gun_selected 4





### TRANSFER
#m4a1-s
execute as @a[scores={gun_selected=1}] at @s run function guns:weapons/m4a1s/handler
execute as @a[scores={gun_selected=1},tag=!drawed] at @s run function guns:weapons/m4a1s/draw

#TMP
execute as @a[scores={gun_selected=3}] at @s run function guns:weapons/tmp/handler
execute as @a[scores={gun_selected=3},tag=!drawed] at @s run function guns:weapons/tmp/draw

#USP-s
execute as @a[scores={gun_selected=4}] at @s run function guns:weapons/usps/handler
execute as @a[scores={gun_selected=4},tag=!drawed] at @s run function guns:weapons/usps/draw


###FUNC's end
scoreboard players set @a right_click_gun 0