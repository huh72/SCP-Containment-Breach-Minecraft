###slow cast
#regester
scoreboard objectives add grenade_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
#register cd
scoreboard objectives add throw_cd dummy
scoreboard players set max throw_cd 5
scoreboard players set @a throw_cd 0

###math
scoreboard objectives add itt dummy

#setting max itterations + math
scoreboard players set max itt 30
scoreboard players set 4 math 4
scoreboard players set 2 math 2
scoreboard players set 1 math 1
scoreboard players set 0 math 0
scoreboard players set -1 math -1
scoreboard players set -20 math -20
scoreboard players set 180 math 180
scoreboard players set 100 math 100
scoreboard players set -180 math -180

#config max itt => max itt in blocks
scoreboard players operation max itt *= 4 math

#tp cd 
scoreboard objectives add itt_cd dummy
scoreboard players set max itt_cd 1


###hit aftermath
scoreboard objectives add get_rotX dummy
scoreboard objectives add get_rotY dummy

scoreboard objectives add bounces dummy

scoreboard objectives add bounce_cd dummy
scoreboard players set max bounce_cd 5

scoreboard objectives add Nget_rotX dummy
scoreboard objectives add Nget_rotY dummy


### GRENADE VALUES
scoreboard objectives add grenade_timer dummy
scoreboard players set max grenade_timer 60

scoreboard objectives add bounce_sound_cd dummy
scoreboard players set max bounce_sound_cd 5

