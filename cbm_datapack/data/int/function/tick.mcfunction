#all other handler
execute unless score .status i matches -1 unless score .status i matches 11 run function int:subtick
#after breach handler
execute if score .status i matches 11 run function int:events/afterbreach/subtick

scoreboard players operation .status i2 = .status i

# execute if entity @a[tag=seeDummyDirectly] run say @s!

# title @p actionbar ""
# title @p[scores={v=0}] actionbar "inChamber == 0"
# title @p[scores={v=1}] actionbar "inChamber == 1"
# title @p[scores={v=2}] actionbar "inChamber == 2"
# title @p[scores={v=3..}] actionbar "inChamber == 3.."