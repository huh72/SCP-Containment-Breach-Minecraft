#caster rotation
execute store result score @e[tag=caster096,limit=1] rot096x run data get entity @e[tag=caster096,limit=1] Rotation[0]
execute store result score @p rot096x run data get entity @p Rotation[0]

execute store result score res* rot096x run scoreboard players operation @e[tag=caster096,limit=1] rot096x -= @p rot096x
execute if score @e[tag=caster096,limit=1] rot096x matches ..-1 run function scp096:abs_x

scoreboard players set look_at_096* rot096x 0
execute if score res* rot096x matches 0..65 run scoreboard players set look_at_096* rot096x 1
execute if score res* rot096x matches 300..360 run scoreboard players set look_at_096* rot096x 1

