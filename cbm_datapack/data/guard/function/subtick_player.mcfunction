# scoreboard players add @s[tag=on_reticle] player_on_reticle 1

# execute if score @s player_on_reticle >= max player_on_reticle run tag @s add confirmed_target

# #clear
# tag @a[tag=dead] remove on_reticle
# scoreboard players set @s[tag=!on_reticle] player_on_reticle 0
# tag @s[tag=!on_reticle] remove confirmed_target