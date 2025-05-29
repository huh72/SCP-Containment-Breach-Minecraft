# config

#slot
scoreboard objectives add slot dummy

#right click detect
scoreboard objectives add right_click_item minecraft.used:minecraft.carrot_on_a_stick

#drop
scoreboard objectives add drop_cd dummy
scoreboard players set max* drop_cd 2

# global nums
scoreboard objectives add item_num dummy
execute unless score max* item_num matches 1.. run scoreboard players set max* item_num 0


#drop count
scoreboard objectives add drop_count dummy
scoreboard players set @a drop_count 0


#sound types
#paper - pickitem0
#card - pickitem1
#visiongoggles - pickitem2
#metal - pickitem3
#
#