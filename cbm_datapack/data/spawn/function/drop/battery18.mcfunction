$summon armor_stand ~ ~ ~ {Tags:['drop','new','battery18','$(state)'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
item replace entity @n[tag=new] armor.head with paper[item_model="cb:battery18"]

execute as @n[tag=new,tag=914] at @s run function spawn:drop/case914

tag @e remove new
kill @s[tag=drop]