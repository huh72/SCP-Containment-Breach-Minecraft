#main var
scoreboard objectives add scp914 dummy
#914 work timer
scoreboard players set max scp914 300
#mode deafault
execute unless score mode scp914 matches -2..2 run schedule function scp914:change_mode 1t
execute unless score mode scp914 matches -2..2 run scoreboard players set mode scp914 -1


#-2 - rough
#-1 - coarse
# 0 - 1:1
#+1 - fine
#+2 - very ine
