### RADIO ### -- 40
scoreboard players remove @a[tag=radio,scores={channel1_timer=1..,radio_channel=1}] channel1_timer 1
scoreboard players remove @a[tag=radio,scores={channel2_timer=1..,radio_channel=2}] channel2_timer 1
scoreboard players remove @a[tag=radio,scores={channel3_timer=1..,radio_channel=3}] channel3_timer 1
scoreboard players remove @a[tag=radio,scores={channel4_timer=1..,radio_channel=4}] channel4_timer 1

#channel 1
execute as @a[tag=radio,scores={channel1_timer=0,radio_channel=1}] at @s run function use:radio/channel1/1

#channel 2
execute as @a[tag=radio,scores={channel2_timer=0,radio_channel=2}] at @s run function use:radio/channel2/1

#channel 3
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_1] at @s run function use:radio/channel3/2
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_2] at @s run function use:radio/channel3/3
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_3] at @s run function use:radio/channel3/4
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_4] at @s run function use:radio/channel3/5
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_5] at @s run function use:radio/channel3/6
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_6] at @s run function use:radio/channel3/7
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_7] at @s run function use:radio/channel3/8
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_8] at @s run function use:radio/channel3/9
execute as @a[tag=radio,scores={channel3_timer=0,radio_channel=3},tag=ch3_9] at @s run function use:radio/channel3/1

#channel 4
execute as @a[tag=radio,scores={channel4_timer=0,radio_channel=4}] at @s run function use:radio/channel4/1

execute as @a[tag=radio] unless score @s radio_channel = @s radio_channel_prev_tick at @s run function use:radio/switch
execute as @a run scoreboard players operation @s radio_channel_prev_tick = @s radio_channel

scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:1}}}}] radio_channel 1
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:2}}}}] radio_channel 2
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:3}}}}] radio_channel 3
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:4}}}}] radio_channel 4
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:5}}}}] radio_channel 5
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:6}}}}] radio_channel 6
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:7}}}}] radio_channel 7
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:8}}}}] radio_channel 8
scoreboard players set @a[tag=radio,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{channel:9}}}}] radio_channel 9



### AID KIT 0 ###
scoreboard players remove @a[scores={use_timer=0..}] use_timer 1
execute as @a[tag=!dead] if score @s use_timer matches 0 run function use:aidkit0/end

### BASIC VEST ###
scoreboard players remove @a[scores={wear_timer=0..}] wear_timer 1
execute as @a[tag=!dead] if score @s[tag=wearing_basic] wear_timer matches 0 run function use:vest/wear
scoreboard players remove @a[scores={_wear_timer=0..}] _wear_timer 1
execute as @a[tag=!dead] if score @s[tag=wearing_basic] _wear_timer matches 0 run function use:vest/diswear

### HEAVY VEST ###
execute as @a[tag=!dead] if score @s[tag=wearing_heavy] wear_timer matches 0 run function use:heavyvest/wear
execute as @a[tag=!dead] if score @s[tag=wearing_heavy] _wear_timer matches 0 run function use:heavyvest/diswear

### SCP-714 ###$
scoreboard players set @p[tag=scp714,scores={stamina=15..}] stamina 15

### GAS MASK ###
scoreboard players operation @a[tag=supergasmask] stamina = max stamina

### NIGHT VISION GOGGLES ###
# title @a[tag=nvg] title {"text":"0-=-0","color":"green"}


### SCP 1499 ###
scoreboard players remove @a[scores={1499_ambient=0..},tag=scp1499] 1499_ambient 1
execute as @a[scores={1499_ambient=0},tag=scp1499] at @s run function use:scp1499/ambient

scoreboard players remove @a[scores={1499_idle=0..},tag=scp1499] 1499_idle 1
execute as @a[scores={1499_idle=0},tag=scp1499] at @s run function use:scp1499/idle