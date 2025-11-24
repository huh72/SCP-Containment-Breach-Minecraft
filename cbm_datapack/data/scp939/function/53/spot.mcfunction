tag @s add chasing
attribute @s movement_speed modifier add 0000-0-0-0-2 0.6 add_value

$data modify entity @s wander_target set from entity @p[scores={spot_level=$(level)}] Pos
$playsound cb:scp939.chase ambient @p[scores={spot_level=$(level),chase_cd=0}] ~ ~20 ~ 1.5 1 1
$execute store result score @p[scores={spot_level=$(level),chase_cd=0}] chase_cd run random value 130..160 cb:939chasecd
$advancement grant @a[scores={spot_level=$(level),chase_cd=0}] only main:custom/lcz/scp939

# $execute if score @p spot_level matches $(level).. rotated as @p[scores={spot_level=$(level)}] run tp @s ~ ~ ~ 
# $execute if score @p spot_level matches $(level).. rotated as @p[scores={spot_level=$(level)}] run say uu
$execute if score @p[scores={spot_level=$(level)}] spot_level matches 3 run tp @s ~ ~ ~ facing entity @p[scores={spot_level=$(level)}]
# $execute if score @p[scores={spot_level=$(level)}] spot_level matches $(level) run say 1


scoreboard players set @s phrase_cd 60
execute as @n[tag=scp939_53,scores={alert_cd=0}] at @s run function scp939:53/alert