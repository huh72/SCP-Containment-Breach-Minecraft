
#caster rotation
execute store result score @e[tag=caster173,limit=1] rot173y run data get entity @e[tag=caster173,limit=1] Rotation[1]
execute store result score @p rot173y run data get entity @p Rotation[1]

execute store result score res* rot173y run scoreboard players operation @e[tag=caster173,limit=1] rot173y -= @p rot173y

scoreboard players set look_at_173* rot173y 0
execute if score res* rot173y matches -45..60 run scoreboard players set look_at_173* rot173y 1

