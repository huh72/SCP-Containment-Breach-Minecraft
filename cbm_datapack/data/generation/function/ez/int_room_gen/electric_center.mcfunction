$execute if entity @s[tag=3] positioned ~-5 ~1 ~ run place template $(room)0
$execute if entity @s[tag=5] positioned ~ ~1 ~ run place template $(room)1

execute if entity @s[tag=3] run setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"3}]','[{"text":"3"}]','[{"text":"3"}]','[{"text":"3"}]']}}
execute if entity @s[tag=5] run setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"5}]','[{"text":"5"}]','[{"text":"5"}]','[{"text":"5"}]']}}

kill @s