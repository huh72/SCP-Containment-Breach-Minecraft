# если стамина игрока = 0, то выдать голод, и food =~ 1..6 [~4 уровня еды = effect give @s minecraft:hunger 2 225 true]
# если стамина игорка >5, то выдать насыщение, и food =~ 7..8

#если food = 0-1, то выдать насыщение, [effect give @s minecraft:saturation 1 1 true]

#main logics
execute if score @s stamina matches 4..10 run effect give @s[scores={food_level=7..20},predicate=fps:is_sprinting] hunger 3 225 true
execute if score @s stamina matches 5.. run effect give @s[scores={food_level=2..6}] saturation 1 4 true

# defence of getting starve damage
effect give @s[scores={food_level=0..1}] minecraft:saturation 1 1 true