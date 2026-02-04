summon armor_stand ~ ~ ~ {Tags:['scp173d','dummy','new'],Invulnerable:1b,Invisible:1b,Silent:1b}
execute as @a at @s run summon marker ~ ~ ~ {Tags:['lookdetecthandler173']}
item replace entity @n[tag=new] armor.head with paper[minecraft:item_model="cb:scp/173"]

data modify entity @n[tag=new] Rotation set from entity @n[tag=i.173spawnpoint] Rotation

tag @n[tag=new] remove new