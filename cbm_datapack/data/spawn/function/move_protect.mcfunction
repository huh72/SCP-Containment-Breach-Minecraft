# say @s

tag @s remove back
tag @s remove front
tag @s remove left
tag @s remove right

execute unless block ^ ^ ^-0.4 #drop:air run tag @s add back
execute unless block ^ ^ ^0.4 #drop:air run tag @s add front
execute unless block ^0.4 ^ ^ #drop:air run tag @s add left
execute unless block ^-0.4 ^ ^ #drop:air run tag @s add right


# execute if entity @s[tag=back] run say back is not air!
# execute if entity @s[tag=front] run say front is not air!
# execute if entity @s[tag=left] run say left is not air!
# execute if entity @s[tag=right] run say right is not air!

# execute if entity @e[tag=back,tag=front,tag=left,tag=right] run say seems that item is stack!

