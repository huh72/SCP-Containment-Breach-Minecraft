### cards
#card 1
execute if entity @s[tag=card1] run return run kill @s
#card 2
execute if entity @s[tag=card2] run return run kill @s
#card 3
execute if entity @s[tag=card3] run return run function spawn:drop/card1 {"state":"914"}
#card 4
execute if entity @s[tag=card4] run return run function spawn:drop/card2 {"state":"914"}
#card 5
execute if entity @s[tag=card5] run return run function spawn:drop/card3 {"state":"914"}
#card omni
execute if entity @s[tag=cardomni] run return run function spawn:drop/card4 {"state":"914"}
#master card
execute if entity @s[tag=mastercard] run return run kill @s
#playing card
execute if entity @s[tag=playingcard] run return run kill @s

### coin
execute if entity @s[tag=coin] run return run kill @s

### arms
#white arm
execute if entity @s[tag=white_arm] run return run kill @s
#black arm
execute if entity @s[tag=black_arm] run return run kill @s

### radio
execute if entity @s[tag=radio] run return run kill @s

#g
execute if entity @s[tag=basicvest] run return run kill @s
execute if entity @s[tag=heavyvest] run return run kill @s

execute if entity @s[tag=killbattery] run return run function spawn:drop/battery {"state":"914"}
execute if entity @s[tag=battery9] run return run kill @s
execute if entity @s[tag=battery18] run return run kill @s