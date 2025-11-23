# aidkit 0
# когда игорк использует аптечку, aidkitusetimer = max*, generic movement speed получает attribute xxxx-x-x-x-x add ~-0.1
# по окончании attribute снимается, health =+ 75, bleeding = 0, удалить предмет
# + tag 'can_ii'

scoreboard objectives add use_timer dummy
scoreboard objectives add wear_timer dummy
scoreboard objectives add _wear_timer dummy

### AID KIT 0 ###
scoreboard players set max_aidkit0* use_timer 200

### VEST ###
scoreboard players set max_vest* wear_timer 100
scoreboard players set max_vest* _wear_timer 100

### TOGGLING ###
scoreboard objectives add item_selected dummy
#selected item number = custom model data
scoreboard objectives add used_a dummy


### Night Vision Goggles ###
scoreboard objectives add nvg_energy dummy
scoreboard players set max* nvg_energy 2400
 

### SCP 1499 ###
scoreboard objectives add 1499_ambient dummy
scoreboard players set max* 1499_ambient 990

scoreboard objectives add 1499_idle dummy
scoreboard players set max* 1499_idle 350

### RADIO ###
scoreboard objectives add radio_channel dummy
scoreboard objectives add radio_channel_prev_tick dummy
scoreboard objectives add channel1_timer dummy
scoreboard objectives add channel2_timer dummy
scoreboard objectives add channel3_timer dummy
scoreboard objectives add channel4_timer dummy

##channel 1 (static -- 20)
scoreboard players set 1 channel1_timer 28

##channel 2 (alarm -- 40)
scoreboard players set 1 channel2_timer 55

## Channel 3
#23 * 20 + 5
scoreboard players set 1 channel3_timer 465
#15 * 20 + 5
scoreboard players set 2 channel3_timer 305
#20 * 20 + 5
scoreboard players set 3 channel3_timer 405
#20 * 25 + 5
scoreboard players set 4 channel3_timer 505
#28 * 20 + 5
scoreboard players set 5 channel3_timer 565
#34 * 20 + 5
scoreboard players set 6 channel3_timer 685
#45 * 20 + 5
scoreboard players set 7 channel3_timer 905
#19 * 20 + 5
scoreboard players set 8 channel3_timer 385
#24 * 20 + 5
scoreboard players set 9 channel3_timer 485

##channel 4 (first channels' clone until mtf enter)
scoreboard players set 1 channel4_timer 28