summon armor_stand ~ ~ ~ {Tags:['drop','new','scp1499'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
item replace entity @n[tag=new] armor.head with paper[item_model="cb:scp1499"]

execute as @n[tag=new] at @s if entity @s[tag=drop] if entity @e[tag=input,distance=..1.8] run function spawn:drop/case914

tag @e remove new
kill @s[tag=drop]