#config
scoreboard objectives add shot_cd dummy
scoreboard objectives add ammo dummy
scoreboard objectives add damage dummy
scoreboard objectives add reload dummy
scoreboard objectives add gun_selected dummy
#guns
scoreboard objectives add stat_p90 dummy
scoreboard objectives add stat_m4a1s dummy
scoreboard objectives add stat_m4a1 dummy
scoreboard objectives add stat_tmp dummy
scoreboard objectives add stat_usps dummy

#drop vars
scoreboard objectives add drop_live dummy

scoreboard objectives add raycast dummy
scoreboard objectives add right_click_gun minecraft.used:carrot_on_a_stick
scoreboard objectives add acc dummy
scoreboard objectives add accn dummy
scoreboard objectives add v dummy
scoreboard players set 1000* acc 1000
scoreboard players set 100* acc 100
scoreboard players set 10* acc 10
scoreboard players set -1* acc -1

execute as @a unless score @s acc matches 0.. run scoreboard players set @s acc 0
execute as @a unless score @s accn matches 0.. run scoreboard players set @s accn 0

#storage for spread
data modify storage gun_main xa set value 0
data modify storage gun_main xb set value 0

data modify storage gun_main ya set value 0
data modify storage gun_main yb set value 0

#storage for recoil
data modify storage recoil xa set value 0
data modify storage recoil xb set value 0

data modify storage recoil ya set value 0
data modify storage recoil yb set value 0


#hit
scoreboard objectives add hit_random dummy

### guns ###
#p90
scoreboard players set acc stat_p90 1
scoreboard players set acc stat_p90 100
scoreboard players set mag_size stat_p90 50
scoreboard players set damage stat_p90 16
scoreboard players set shot_cd stat_p90 2
scoreboard players set reload stat_p90 45
#?
scoreboard players set max_mags stat_p90 10

#M4A1-S
scoreboard players set acc stat_m4a1s 1
scoreboard players set mag_size stat_m4a1s 30
scoreboard players set damage stat_m4a1s 28
scoreboard players set shot_cd stat_m4a1s 2
scoreboard players set reload stat_m4a1s 60
#?
# scoreboard players set max_mags stat_p90 10


#M4A1
# scoreboard players set acc stat_m4a1s 1
# scoreboard players set acc_step stat_m4a1s 10
# scoreboard players set mag_size stat_m4a1s 30
# scoreboard players set damage stat_m4a1s 28
# scoreboard players set shot_cd stat_m4a1s 2
# scoreboard players set reload stat_m4a1s 60
#?
# scoreboard players set max_mags stat_p90 10


#TMP
scoreboard players set acc stat_tmp 1
scoreboard players set mag_size stat_tmp 35
scoreboard players set damage stat_tmp 8
scoreboard players set shot_cd stat_tmp 1
scoreboard players set reload stat_tmp 75
#?
# scoreboard players set max_mags stat_p90 10


#USP-s
scoreboard players set acc stat_usps 1
scoreboard players set mag_size stat_usps 12
scoreboard players set damage stat_usps 11
scoreboard players set shot_cd stat_usps 6
scoreboard players set reload stat_usps 65