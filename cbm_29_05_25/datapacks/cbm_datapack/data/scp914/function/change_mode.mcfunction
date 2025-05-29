
execute if score mode* scp914 matches 2.. run scoreboard players set mode* scp914 -3
execute if score mode* scp914 matches -3..2 run scoreboard players add mode* scp914 1


execute if score mode* scp914 matches -2 run say rough [-2]
execute if score mode* scp914 matches -1 run say coarse [-1]
execute if score mode* scp914 matches 0 run say 1:1 [0]
execute if score mode* scp914 matches 1 run say fine [1]
execute if score mode* scp914 matches 2 run say very fine [2]