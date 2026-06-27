#for spawn instance "state" macros has to be defined [active/passive]
$summon zombie ~ ~ ~ {Tags:['infected008', 'new', 'tesla_trigger', '$(state)'],Silent:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:stone_button",count:1,components:{"minecraft:custom_model_data":1}}]}
item replace entity @n[type=zombie,tag=infected008,tag=new] armor.head with minecraft:carrot_on_a_stick

#editing the entity's speed
execute as @n[type=zombie, tag=infected008, tag=new] run attribute @s movement_speed base set 0.165

#throw no macros value error
# execute as @n[type=zombie,tag=infected008,tag=new] if entity @s[tag=] run tellraw @a [{"text":"[ ! ]","color":"white"},{"text":" No 'infected008' spawned because there is no acceptable macros value! \n ","color":"red"},{"text":"Acceptable macros values are: 'active' or 'passive'","color":"yellow"}]

effect give @e[type=zombie,tag=infected008,tag=new] minecraft:invisibility infinite 0 true
effect give @e[type=zombie,tag=infected008,tag=new] minecraft:weakness infinite 255 true

#summon the animated java entity
execute as @n[type=zombie, tag=infected008, tag=new] at @s run function animated_java:infected008/summon with storage aj:temp

#if passive, apply first passive (wake) animation frame
execute as @n[type=zombie, tag=infected008, tag=new] if entity @s[tag=passive] as @n[tag=aj.infected008.root] run function animated_java:infected008/animations/wake/apply_frame {"frame":"1"}
execute as @n[type=zombie, tag=infected008, tag=new] if entity @s[tag=passive] run attribute @s movement_speed modifier add 9842-0-0-0-0 -1.0 add_value

#
tag @e[type=zombie,tag=infected008,tag=new] remove new