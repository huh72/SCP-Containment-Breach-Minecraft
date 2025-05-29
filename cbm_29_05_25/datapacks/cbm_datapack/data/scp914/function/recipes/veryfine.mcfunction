### CARDS ###
execute if entity @s[tag=playingcard] run function scp914:recipes/veryfine/mastercard
execute if entity @s[tag=mastercard] run function scp914:recipes/veryfine/card1
execute if entity @s[tag=card1] run function scp914:recipes/veryfine/card2
execute if entity @s[tag=card2] run function scp914:recipes/veryfine/card3
execute if entity @s[tag=card3] if predicate scp914:10 run function scp914:recipes/veryfine/card4
execute if entity @s[tag=card4] if predicate scp914:30 run function scp914:recipes/veryfine/card5
execute if entity @s[tag=card5] if predicate scp914:5 run function scp914:recipes/veryfine/cardomni

### PLAYER ###
execute if entity @s[type=player] run function scp914:recipes/veryfine/player