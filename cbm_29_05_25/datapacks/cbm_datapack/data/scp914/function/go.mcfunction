
execute if score mode* scp914 matches -2 run function scp914:recipes/rough
execute if score mode* scp914 matches -1 run function scp914:recipes/coarse
execute if score mode* scp914 matches 0 run function scp914:recipes/1_1
execute if score mode* scp914 matches 1 run function scp914:recipes/fine
execute if score mode* scp914 matches 2 run function scp914:recipes/veryfine

tp @s ~15 ~ ~