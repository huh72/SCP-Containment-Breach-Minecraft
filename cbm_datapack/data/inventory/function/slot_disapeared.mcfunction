$tag @s remove $(slot)
# $say @s $(slot)
$scoreboard players operation @s $(slotcd) = max* slot_cd
# scoreboard players set @s item_selected -1
# item replace entity @s weapon.offhand with minecraft:air

tag @s add protected
tag @s add back_check