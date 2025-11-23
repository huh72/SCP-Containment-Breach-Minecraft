item replace entity @s armor.head with minecraft:air
tag @s remove nvg
function messages:usual {"text":"You removed the night vision goggles."}
effect clear @s[tag=!dev] night_vision 

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1