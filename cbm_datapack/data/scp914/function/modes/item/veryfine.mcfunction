### cards
#card 1
execute if entity @s[tag=card1] run return run function spawn:drop/card2 {"state":"914"}
#card 2
execute if entity @s[tag=card2] run return run function spawn:drop/card3 {"state":"914"}
#card 3
execute store result score chance scp914 run random value 0..9 cb:scp914chances
execute if entity @s[tag=card3] if score chance scp914 matches 0 run return run function spawn:drop/card4 {"state":"914"}
execute if entity @s[tag=card3] if score chance scp914 matches 1..9 run function spawn:drop/playingcard {"state":"914"}
execute if entity @s[tag=card3] if score chance scp914 matches 1..9 run return run kill @s
#card 4
execute if entity @s[tag=card4] run return run function spawn:drop/card5 {"state":"914"}
#card 5
execute store result score chance scp914 run random value 0..99 cb:scp914chances
execute if entity @s[tag=card5] if score chance scp914 matches 0..9 run return run function spawn:drop/card_omni {"state":"914"}
execute if entity @s[tag=card5] if score chance scp914 matches 10..99 run function spawn:drop/playingcard {"state":"914"}
execute if entity @s[tag=card5] if score chance scp914 matches 10..99 run return run kill @s
#card omni
execute if entity @s[tag=cardomni] run return run function spawn:drop/card_omni {"state":"914"}
#master card
execute if entity @s[tag=mastercard] run return run function spawn:drop/card2 {"state":"914"}
#playing card
execute if entity @s[tag=playingcard] run return run function spawn:drop/card2 {"state":"914"}

### coin
execute if entity @s[tag=coin] run return run function spawn:drop/mastercard {"state":"914"}

#g aidkit
execute store result score chance scp914 run random value 0..99 cb:scp914chances
execute if entity @s[tag=aidkit0] if score chance scp914 matches 0..9 run return run function spawn:drop/scp500 {"state":"914"}
execute if entity @s[tag=aidkit0] if score chance scp914 matches 10..99 run function spawn:drop/firstaidkit {"state":"914"}
execute if entity @s[tag=aidkit0] if score chance scp914 matches 10..99 run return run kill @s

### arms
#white arm
execute if entity @s[tag=white_arm] run function spawn:drop/blackarm {"state":"914"}
execute if entity @s[tag=white_arm] run return run kill @s
#black arm
execute if entity @s[tag=black_arm] run function spawn:drop/whitearm {"state":"914"}
execute if entity @s[tag=black_arm] run return run kill @s

### radio
execute if entity @s[tag=radio] run return run function spawn:drop/radio {"state":"914"}

### scp1499_1
execute if entity @s[tag=scp1499] run return run function spawn:drop/spawn1499_1

#g vest
execute store result score chance scp914 run random value 0..99 cb:scp914chances
execute if entity @s[tag=basicvest] if score chance scp914 matches 0..9 run function spawn:drop/heavyvest {"state":"914"}
execute if entity @s[tag=basicvest] if score chance scp914 matches 10..99 run return run function spawn:drop/basicvest {"state":"914"}

execute if entity @s[tag=heavyvest] run return run function spawn:drop/heavyvest {"state":"914"}

#g battery
execute if entity @s[tag=killbattery] run return run function spawn:drop/battery {"state":"914"}
execute if entity @s[tag=battery9] run return run function spawn:drop/battery18 {"state":"914"}
execute if entity @s[tag=battery18] run return run function spawn:drop/killbattery {"state":"914"}
