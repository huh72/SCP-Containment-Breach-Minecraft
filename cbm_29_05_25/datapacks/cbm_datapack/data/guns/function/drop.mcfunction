#spawm visual drop
summon armor_stand ~ ~ ~ {Tags:['gun_drop','weapon','new'],Invisible:1b,Invulnerable:1b,Silent:1b}
item replace entity @n[tag=new] armor.head with carrot_on_a_stick[minecraft:custom_model_data=1]
#motion
data modify entity @n[tag=new] Motion set from entity @p Motion
say drop

#transfer vars
scoreboard players operation @s ammo = @p ammo
execute if entity @p[tag=reloading] run tag @s add reloading

#
item replace entity @p container.0 with air
kill @n[type=item]
tag @n remove new
