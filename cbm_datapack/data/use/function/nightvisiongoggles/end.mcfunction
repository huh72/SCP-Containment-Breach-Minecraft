execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:air
tag @s remove nvg
function messages:usual {"text":"You removed the night vision goggles."}

#g goggles effect
particle minecraft:entity_effect{color:[0.996078431372549, 0.9686274509803922, 0, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s
#g green effect
particle minecraft:entity_effect{color:[0.996078431372549, 0.984313725490196, 0, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

scoreboard players set @s used_a 1