tp @s @n[tag=pd.center]
tag @s remove lcz
tag @s remove hcz
tag @s remove ez

tag @s add location.pocketDimension

scoreboard players set @s pocketDimension 539

function shader_control:effects/green/set {"value":"0.2"}