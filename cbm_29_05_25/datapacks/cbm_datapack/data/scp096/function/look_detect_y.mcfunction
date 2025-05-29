#caster rotation
execute store result score @e[tag=caster096,limit=1] rot096y run data get entity @e[tag=caster096,limit=1] Rotation[1]
execute store result score @p rot096y run data get entity @p Rotation[1]

execute store result score res* rot096y run scoreboard players operation @e[tag=caster096,limit=1] rot096y -= @p rot096y

scoreboard players set look_at_096* rot096y 0
execute if score res* rot096y matches -45..60 run scoreboard players set look_at_096* rot096y 1


