summon armor_stand ~ ~-2 ~ {Tags:['scp106','new','tesla_trigger'],Silent:1b,Invisible:1b,Invulnerable:1b}
effect give @n[tag=new] invisibility infinite 0 true
execute rotated 0 0 run function animated_java:scp106/summon with storage aj:temp

scoreboard players set @e[tag=new] appear_timer 0
scoreboard players set @e[tag=new] disappear_timer 0
scoreboard players set 106 106hit_cd 20
scoreboard players set 106 breath_cd 10000
scoreboard players set 106 wall_cd 50
scoreboard players operation 106 laugh_cd = max laugh_cd
scoreboard players set 106 step_on_shrink_cd 1200
tag @a remove hitby106
tag @e[tag=new] remove hunting

tag @e[tag=new] remove new