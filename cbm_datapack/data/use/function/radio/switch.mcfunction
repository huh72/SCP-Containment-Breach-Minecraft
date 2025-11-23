stopsound @s master

playsound cb:radio.switch master @s ~ ~5 ~ 0.65 1 1
playsound cb:radio.switch master @a[distance=0.01..] ~ ~ ~ 0.65 1 1

#channel 1
execute at @s[scores={radio_channel=1}] run function use:radio/channel1/1

#channel 2
execute at @s[scores={radio_channel=2}] run function use:radio/channel2/1

#channel 3
execute at @s[tag=ch3_1,scores={radio_channel=3}] run function use:radio/channel3/1
execute at @s[tag=ch3_2,scores={radio_channel=3}] run function use:radio/channel3/2
execute at @s[tag=ch3_3,scores={radio_channel=3}] run function use:radio/channel3/3
execute at @s[tag=ch3_4,scores={radio_channel=3}] run function use:radio/channel3/4
execute at @s[tag=ch3_5,scores={radio_channel=3}] run function use:radio/channel3/5
execute at @s[tag=ch3_6,scores={radio_channel=3}] run function use:radio/channel3/6
execute at @s[tag=ch3_7,scores={radio_channel=3}] run function use:radio/channel3/7
execute at @s[tag=ch3_8,scores={radio_channel=3}] run function use:radio/channel3/8
execute at @s[tag=ch3_9,scores={radio_channel=3}] run function use:radio/channel3/9

#channel 4
execute at @s[scores={radio_channel=4}] run function use:radio/channel4/1