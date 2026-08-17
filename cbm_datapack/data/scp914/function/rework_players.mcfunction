execute if score mode scp914 matches -2 run function scp914:modes/player/rough
execute if score mode scp914 matches -1 run function scp914:modes/player/coarse
execute if score mode scp914 matches 0 run function scp914:modes/player/1to1
execute if score mode scp914 matches 1 run function scp914:modes/player/fine
execute if score mode scp914 matches 2 run function scp914:modes/player/veryfine

# data modify entity @s Rotation[0] set from entity @n[tag=input] Rotation[0]
execute rotated as @n[tag=input] run tp @s ^15 ^ ^

# say @s player