### cards
#card 1
execute if entity @s[tag=card1] run return run function spawn:drop/playingcard {"state":"914"}
#card 2 
execute if entity @s[tag=card2] run return run function spawn:drop/playingcard {"state":"914"}
#card 3
execute if entity @s[tag=card3] run return run function spawn:drop/playingcard {"state":"914"}
#card 4
execute if entity @s[tag=card4] run return run function spawn:drop/playingcard {"state":"914"}
#card 5
execute if entity @s[tag=card5] run return run function spawn:drop/playingcard {"state":"914"}
#card omni
execute if entity @s[tag=cardomni] run return run function spawn:drop/playingcard {"state":"914"}
#master card
execute if entity @s[tag=mastercard] run return run function spawn:drop/card1 {"state":"914"}
#playing card
execute if entity @s[tag=playingcard] run return run function spawn:drop/card1 {"state":"914"}

### coin
execute if entity @s[tag=coin] run return run function spawn:drop/card1 {"state":"914"}

#g aidkit
execute if entity @s[tag=aidkit0] run return run function spawn:drop/firstaidkit {"state":"914"}

### arms
#white arm
execute if entity @s[tag=white_arm] run function spawn:drop/blackarm {"state":"914"}
execute if entity @s[tag=white_arm] run return run kill @s
#black arm
execute if entity @s[tag=black_arm] run function spawn:drop/whitearm {"state":"914"}
execute if entity @s[tag=black_arm] run return run kill @s

### radio
execute if entity @s[tag=radio] run return run function spawn:drop/radio {"state":"914"}

#g vest
execute if entity @s[tag=basicvest] run return run function spawn:drop/basicvest {"state":"914"}
execute if entity @s[tag=heavyvest] run return run function spawn:drop/heavyvest {"state":"914"}

execute if entity @s[tag=killbattery] run return run function spawn:drop/killbattery {"state":"914"}
execute if entity @s[tag=battery9] run return run function spawn:drop/battery {"state":"914"}
execute if entity @s[tag=battery18] run return run function spawn:drop/battery18 {"state":"914"}