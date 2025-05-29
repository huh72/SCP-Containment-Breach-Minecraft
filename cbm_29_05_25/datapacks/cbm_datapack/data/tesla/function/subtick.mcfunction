# когда игрок подходит к тесле, activating = 1, windup!/activate!, => ...
#vars
scoreboard players remove @s[scores={tesla_idle=1..}] tesla_idle 1
scoreboard players remove @s[scores={tesla_shock_timer=1..}] tesla_shock_timer 1
scoreboard players remove @s[scores={tesla_shock_cd=1..}] tesla_shock_cd 1
scoreboard players remove @s[scores={activate_cd=1..}] activate_cd 1

#idle sound + particle #!
execute if entity @s[scores={tesla_idle=0}] run function tesla:idle

#start activating
scoreboard players set @s activating 0
execute if entity @p[distance=..5,tag=!dead] run scoreboard players set @s activating 1
execute if entity @s[scores={activating=1,activate_cd=0}] run function tesla:activate

#shock
execute if entity @s[scores={tesla_shock_cd=0,activate_cd=20}] run function tesla:shock
#death func
#health
execute if entity @s[tag=0,scores={tesla_shock_timer=1..}] positioned ^-2.5 ^ ^-0.5 as @e[dy=1,dx=4,tag=player] run scoreboard players set @s[tag=!dead] health 0
execute if entity @s[tag=1,scores={tesla_shock_timer=1..}] positioned ^-2.5 ^ ^0.5 as @e[dy=1,dz=4,tag=player] run scoreboard players set @s[tag=!dead] health 0
#death tag
execute if entity @s[tag=0,scores={tesla_shock_timer=1..}] positioned ^-2.5 ^ ^-0.5 as @e[dy=1,dx=4,tag=player] run tag @s[tag=!dead] add d_tesla
execute if entity @s[tag=1,scores={tesla_shock_timer=1..}] positioned ^-2.5 ^ ^0.5 as @e[dy=1,dz=4,tag=player] run tag @s[tag=!dead] add d_tesla


# execute if entity @s[scores={tesla_shock_timer=1..}] as @a[distance=..1.4,tag=player] run scoreboard players set @s[tag=!dead] health 0
# execute if entity @s[scores={tesla_shock_timer=1..}] as @a[distance=..1.4,tag=player] run tag @s[tag=!dead] add d_tesla
#delete shock effect
execute if entity @s[scores={tesla_shock_timer=0}] run kill @n[tag=tesla_shock,distance=..5]

