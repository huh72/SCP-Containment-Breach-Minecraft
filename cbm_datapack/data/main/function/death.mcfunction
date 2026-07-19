function health:reset_health
scoreboard players set @s spot_level 0
scoreboard players set @s health 1000
tag @s remove tesla_trigger
tag @s add dead
tag @s remove hit
attribute @s minecraft:movement_speed modifier remove 1488-0-0-0-8
attribute @s minecraft:movement_speed modifier add 1488-0-0-1-1 -10 add_value
effect give @s invisibility infinite 1 true
effect give @s regeneration infinite 10 true

scoreboard players set @s playerOnFireTime 0
scoreboard players set @s playerTo457Distance 0

execute at @s run summon armor_stand ~ ~ ~ {Tags:['new','corpse'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
data modify entity @n[tag=new,limit=1] Rotation set from entity @s Rotation
execute at @n[tag=new] run tp @n[tag=new] ~ ~ ~ ~180 ~

execute if entity @s[tag=d_mtf] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse1"]
execute if entity @s[tag=d_guard] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse1"]
execute if entity @s[tag=d_049] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_1048a] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_1499_1] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_939] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse2"]
execute if entity @s[tag=d_gate] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse2"]
execute if entity @s[tag=d_tesla] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_173] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_fall] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_096] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse2"]
execute if entity @s[tag=d_gas] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_suicide] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]
execute if entity @s[tag=d_bleeding] run item replace entity @n[tag=new] armor.head with minecraft:paper[item_model="cb:dclasscorpse0"]

data modify entity @n[tag=new,limit=1] Marker set value 1b
tag @e[tag=new] remove new

scoreboard players operation @s timeNear1499_1 = 0 math
tag @s remove 1499_1KillTarget
tag @s remove 1499_1Target

#full inventory drop
function main:drop_items with storage minecraft:drop_pos

function main:death_ui.mcfunction/setblack {"text":"*press right click to respawn"}