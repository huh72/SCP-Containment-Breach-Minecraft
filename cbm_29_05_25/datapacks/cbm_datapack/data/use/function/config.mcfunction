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