execute store result score temp scp914 run random value 0..9 cb:914_1to1_player

#case 0
execute if score temp scp914 matches 0 run scoreboard players add @s bleeding 3
#case 1
execute if score temp scp914 matches 1..6 run effect give @s speed 10 3 true