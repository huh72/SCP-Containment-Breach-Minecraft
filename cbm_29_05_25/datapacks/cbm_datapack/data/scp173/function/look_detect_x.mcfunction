#caster rotation
execute store result score @e[tag=caster173,limit=1] rot173x run data get entity @e[tag=caster173,limit=1] Rotation[0]
execute store result score @p rot173x run data get entity @p Rotation[0]

execute store result score res* rot173x run scoreboard players operation @e[tag=caster173,limit=1] rot173x -= @p rot173x
execute if score @e[tag=caster173,limit=1] rot173x matches ..-1 run function scp173:abs_x

scoreboard players set look_at_173* rot173x 0
execute if score res* rot173x matches 0..65 run scoreboard players set look_at_173* rot173x 1
execute if score res* rot173x matches 300..360 run scoreboard players set look_at_173* rot173x 1


