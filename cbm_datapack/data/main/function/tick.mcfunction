#kill carrot_on_a_stick
# kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]


#g death
execute as @a if score @s health matches ..0 run function main:death

execute as @a[tag=dead] at @s if score @s[tag=can_respawn] right_click_item matches 1.. run function main:respawn
execute as @a[tag=dead] run function main:global_stopsound

function main:kill_feed/main

#g animation
execute as @a[tag=dead] at @s if score @s deathAnimation matches 0.. run function main:animation/handler

#g make players not able to trade
execute as @a[tag=!dead] at @s run attribute @s entity_interaction_range base set 5.0
execute as @a[tag=!dead] at @s if entity @n[type=wandering_trader, distance=..7] run attribute @s entity_interaction_range base set 0.0

#g sound-zone transition
execute as @a[tag=!dead] run function main:transition/handler

#g blood-stains size up handler
execute if score .blood_stains_resize.cd pd_shrink_scale matches 1.. run scoreboard players remove .blood_stains_resize.cd pd_shrink_scale 1

execute if score .blood_stains_resize.cd pd_shrink_scale matches 0 as @e[type=item_display, tag=blood_stains, tag=toSizeup] run function main:blood_stains/handler