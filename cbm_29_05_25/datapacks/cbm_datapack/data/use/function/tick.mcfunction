### AID KIT 0 ###
scoreboard players remove @a[scores={use_timer=0..}] use_timer 1
execute as @a[tag=player] if score @s use_timer matches 0 run function use:aidkit0/end

### VEST 0 ###
scoreboard players remove @a[scores={wear_timer=0..}] wear_timer 1
execute as @a[tag=player] if score @s wear_timer matches 0 run function use:vest/wear

scoreboard players remove @a[scores={_wear_timer=0..}] _wear_timer 1
execute as @a[tag=player] if score @s _wear_timer matches 0 run function use:vest/end


### GAS MASK ###
item replace entity @a[tag=gasmask] armor.head with minecraft:carved_pumpkin

### NIGHT VISION GOGGLES ###
# title @a[tag=nvg] title {"text":"0-=-0","color":"green"}


### SCP 1499 ###
scoreboard players remove @a[scores={1499_ambient=0..},tag=scp1499] 1499_ambient 1
execute as @a[scores={1499_ambient=0},tag=scp1499] at @s run function use:scp1499/ambient

scoreboard players remove @a[scores={1499_idle=0..},tag=scp1499] 1499_idle 1
execute as @a[scores={1499_idle=0},tag=scp1499] at @s run function use:scp1499/idle

# selected icon display
# execute as @a[scores={item_selected=0},tag=!dead] at @s run function use:title_selected {"text":".","0":"0","1":"0","2":"0"}

# execute as @a[scores={item_selected=1}] at @s run function use:title_selected {"text":"uE004","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=2}] at @s run function use:title_selected {"text":"uE005","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=3}] at @s run function use:title_selected {"text":"uE006","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=4}] at @s run function use:title_selected {"text":"uE007","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=5}] at @s run function use:title_selected {"text":"uE008","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=6}] at @s run function use:title_selected {"text":"uE009","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=7}] at @s run function use:title_selected {"text":"uE010","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=8}] at @s run function use:title_selected {"text":"uE011","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=9}] at @s run function use:title_selected {"text":"uE012","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=10}] at @s run function use:title_selected {"text":"uE013","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=11}] at @s run function use:title_selected {"text":"uE014","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=12}] at @s run function use:title_selected {"text":"uE015","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=13}] at @s run function use:title_selected {"text":"uE016","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=14}] at @s run function use:title_selected {"text":"uE017","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=15}] at @s run function use:title_selected {"text":"uE018","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=16}] at @s run function use:title_selected {"text":"uE019","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=17}] at @s run function use:title_selected {"text":"uE020","0":"0","1":"5","2":"0"}
# execute as @a[scores={item_selected=18}] at @s run function use:title_selected {"text":"uE021","0":"0","1":"5","2":"0"}