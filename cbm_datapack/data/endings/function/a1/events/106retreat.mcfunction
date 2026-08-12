playsound cb:a1.retreat106 ambient @a[distance=..64] ~ ~ ~ 1 1 1
summon armor_stand ~-0.5 ~ ~0.5 {Tags:['pds','new'],attributes:[{id:"scale",base:1.25f}],NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
item replace entity @n[type=armor_stand,tag=new] armor.head with paper[item_model="cb:pd_decal1"]
tag @n[tag=new] remove new
function scp106:despawn