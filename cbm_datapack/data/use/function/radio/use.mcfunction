execute at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:lightning_rod
tag @s add radio
say use radio!

#channel 1
execute at @s[scores={radio_channel=1}] run function use:radio/channel1/1

#channel 2
execute at @s[scores={radio_channel=2}] run function use:radio/channel2/1

#channel 3
execute if score @s[scores={radio_channel=3}] channel3_timer matches -1 run function use:radio/channel3/1
execute at @s[tag=ch3_1,scores={radio_channel=3}] run function use:radio/channel3/1
execute at @s[tag=ch3_2,scores={radio_channel=3}] run function use:radio/channel3/2
execute at @s[tag=ch3_3,scores={radio_channel=3}] run function use:radio/channel3/3
execute at @s[tag=ch3_4,scores={radio_channel=3}] run function use:radio/channel3/4
execute at @s[tag=ch3_5,scores={radio_channel=3}] run function use:radio/channel3/5
execute at @s[tag=ch3_6,scores={radio_channel=3}] run function use:radio/channel3/6
execute at @s[tag=ch3_7,scores={radio_channel=3}] run function use:radio/channel3/7
execute at @s[tag=ch3_8,scores={radio_channel=3}] run function use:radio/channel3/8
execute at @s[tag=ch3_9,scores={radio_channel=3}] run function use:radio/channel3/9


scoreboard players set @s item_selected 40
scoreboard players set @s used_a 1