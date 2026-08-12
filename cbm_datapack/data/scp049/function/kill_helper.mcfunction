execute if entity @s[tag=!scp714] run return run function scp049:kill

scoreboard players add @s[tag=scp714] scp714timer 1
execute if score @s scp714timer >= .max scp714timer run function scp049:kill