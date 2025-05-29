#kill carrot_on_a_stick
# kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]


#death
execute as @a if score @s health matches ..0 run function main:death

execute as @a[tag=dead] if score @s right_click_item matches 1.. run function main:respawn
execute as @a[tag=dead] run function main:global_stopsound

function main:kill_feed/main
