scoreboard players operation @s stamina_remove_cd = const stamina_remove_cd
scoreboard players operation @s stamina -= const stamina_remove

playsound cb:d9341.breath_long ambient @s[scores={stamina=0,breath_cd=0}] ~ ~100 ~ 1 1 1
scoreboard players operation @s[scores={stamina=0,breath_cd=0}] breath_cd = max_player breath_cd

playsound cb:d9341.breath ambient @s[scores={stamina=45}] ~ ~100 ~ 1 1 1
playsound cb:d9341.breath ambient @s[scores={stamina=30}] ~ ~100 ~ 1 1 1
playsound cb:d9341.breath ambient @s[scores={stamina=15}] ~ ~100 ~ 1 1 1


