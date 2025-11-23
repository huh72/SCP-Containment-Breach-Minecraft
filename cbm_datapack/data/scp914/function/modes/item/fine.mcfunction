### cards
#card 1
execute if entity @s[tag=card1] run return run function spawn:drop/card2
#card 2
execute if entity @s[tag=card2] run return run function spawn:drop/card3
#card 3
execute store result score chance scp914 run random value 0..9 cb:scp914chances
execute if entity @s[tag=card3] if score chance scp914 matches 0 run return run function spawn:drop/card4
execute if entity @s[tag=card3] if score chance scp914 matches 1..9 run function spawn:drop/playingcard
execute if entity @s[tag=card3] if score chance scp914 matches 1..9 run return run kill @s
#card 4
execute if entity @s[tag=card4] run return run function spawn:drop/card5
#card 5
execute store result score chance scp914 run random value 0..99 cb:scp914chances
execute if entity @s[tag=card5] if score chance scp914 matches 0..4 run return run function spawn:drop/card_omni
execute if entity @s[tag=card5] if score chance scp914 matches 5..99 run function spawn:drop/playingcard
execute if entity @s[tag=card5] if score chance scp914 matches 5..99 run return run kill @s
#card omni
execute if entity @s[tag=cardomni] run return run function spawn:drop/card_omni
#master card
execute if entity @s[tag=mastercard] run return run function spawn:drop/card2
#playing card
execute if entity @s[tag=playingcard] run return run function spawn:drop/card2

### coin
execute if entity @s[tag=coin] run return run function spawn:drop/card2

### arms
#white arm
execute if entity @s[tag=white_arm] run function spawn:drop/blackarm
execute if entity @s[tag=white_arm] run return run kill @s
#black arm
execute if entity @s[tag=black_arm] run function spawn:drop/whitearm
execute if entity @s[tag=black_arm] run return run kill @s

### radio
execute if entity @s[tag=radio] run return run function spawn:drop/radio