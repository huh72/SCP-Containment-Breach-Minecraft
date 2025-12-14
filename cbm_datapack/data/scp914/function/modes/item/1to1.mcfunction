### cards
#card 1
execute if entity @s[tag=card1] run return run function spawn:drop/playingcard
#card 2
execute if entity @s[tag=card2] run return run function spawn:drop/playingcard
#card 3
execute if entity @s[tag=card3] run return run function spawn:drop/playingcard
#card 4
execute if entity @s[tag=card4] run return run function spawn:drop/playingcard
#card 5
execute if entity @s[tag=card5] run return run function spawn:drop/playingcard
#card omni
execute if entity @s[tag=cardomni] run return run function spawn:drop/playingcard
#master card
execute if entity @s[tag=mastercard] run return run function spawn:drop/card1
#playing card
execute if entity @s[tag=playingcard] run return run function spawn:drop/card1

### coin
execute if entity @s[tag=coin] run return run function spawn:drop/card1

### arms
#white arm
execute if entity @s[tag=white_arm] run function spawn:drop/blackarm {"state":"914"}
execute if entity @s[tag=white_arm] run return run kill @s
#black arm
execute if entity @s[tag=black_arm] run function spawn:drop/whitearm
execute if entity @s[tag=black_arm] run return run kill @s

### radio
execute if entity @s[tag=radio] run return run function spawn:drop/radio