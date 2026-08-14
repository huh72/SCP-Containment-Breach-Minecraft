function health:reset_health
scoreboard players set @s spot_level 0
scoreboard players set @s health 1000
tag @s remove tesla_trigger
tag @s add dead
tag @s remove hit

#g death animation
function main:animation/ini
attribute @s minecraft:jump_strength base set 0
scoreboard players set @s deathAnimation 0

#g disable blinking
tag @s remove can_blink
scoreboard players set @s blink_timer -1

#g death sound
playsound cb:d9341.death ambient @a[distance=0.01..6] ~ ~0.5 ~ 0.33 1 1
playsound cb:d9341.death ambient @s ~ ~1000000 ~ 100000 1 1

#g death shader effects
function shader_control:effects/blur/set {"value":"1"}
function shader_control:effects/trail/set {"value":"1"}

#g diasble zone shader effect
function shader_control:effects/yellow/set {"value":"0"}
function shader_control:effects/blue/set {"value":"0"}

function use:super_gasmask/end
function use:gasmask/end
function use:nightvisiongoggles/end
attribute @s minecraft:movement_speed modifier remove 8990-0-0-0-9
attribute @s minecraft:movement_speed modifier remove 8990-0-0-0-9
attribute @s minecraft:movement_speed modifier remove 1488-0-0-0-8
attribute @s minecraft:movement_speed modifier add 1488-0-0-1-1 -10 add_value
#g vest
attribute @s minecraft:movement_speed modifier remove 4589-0-0-2-0
attribute @s minecraft:movement_speed modifier remove 4567-0-0-1-9

effect give @s invisibility infinite 1 true
effect give @s regeneration infinite 10 true
tag @s remove scp714
scoreboard players set @s scp714timer 0
tag @s remove vest

scoreboard players set @s item_selected 0

scoreboard players set @s playerOnFireTime 0
scoreboard players set @s playerTo457Distance 0

execute if entity @s[tag=d_mtf] run tag @s add d
execute if entity @s[tag=d_guard] run tag @s add d
execute if entity @s[tag=d_049] run tag @s add d
execute if entity @s[tag=d_1048a] run tag @s add d
execute if entity @s[tag=d_1499_1] run tag @s add d
execute if entity @s[tag=d_939] run tag @s add d
execute if entity @s[tag=d_gate] run tag @s add d
execute if entity @s[tag=d_tesla] run tag @s add d
execute if entity @s[tag=d_173] run tag @s add d
execute if entity @s[tag=d_fall] run tag @s add d
execute if entity @s[tag=d_096] run tag @s add d
execute if entity @s[tag=d_gas] run tag @s add d
execute if entity @s[tag=d_suicide] run tag @s add d
execute if entity @s[tag=d_bleeding] run tag @s add d

execute at @s[tag=d] run summon armor_stand ~ ~ ~ {Tags:['new','corpse'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
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

tag @s remove d
data modify entity @n[tag=new,limit=1] Marker set value 1b
tag @e[tag=new] remove new

scoreboard players operation @s timeNear1499_1 = 0 math
tag @s remove 1499_1KillTarget
tag @s remove 1499_1Target

#full inventory drop
function main:drop_items with storage minecraft:drop_pos

function main:death_ui/setblack {"text":"*press right click to respawn"}