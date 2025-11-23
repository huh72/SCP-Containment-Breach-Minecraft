### cards
#card 1
execute if entity @s[tag=card1] run return run kill @s
#card 2
execute if entity @s[tag=card2] run return run kill @s
#card 3
execute if entity @s[tag=card3] run return run kill @s
#card 4
execute if entity @s[tag=card4] run return run kill @s
#card 5
execute if entity @s[tag=card5] run return run kill @s
#card omni
execute if entity @s[tag=cardomni] run return run kill @s
#master card
execute if entity @s[tag=mastercard] run return run function spawn:drop/coin
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