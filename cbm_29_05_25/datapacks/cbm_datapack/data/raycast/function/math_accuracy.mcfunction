#=> accuracy ax, ay + Rotation[1]

scoreboard players operation bpoint acc = @s acc
scoreboard players operation apoint acc = @s acc


#before point
execute if score @s acc matches 10..99 run scoreboard players operation bpoint acc /= 10* acc

execute if score @s acc matches 100..999 run scoreboard players operation bpoint acc /= 10* acc

execute if score @s acc matches 1000..9999 run scoreboard players operation bpoint acc /= 10* acc

execute if score @s acc matches 10000..99999 run scoreboard players operation bpoint acc /= 10* acc

execute if score @s acc matches 100000..999999 run scoreboard players operation bpoint acc /= 10* acc

### !!!
execute if score @s acc matches 0..9 run scoreboard players set bpoint acc 0



# after point
execute if score @s acc matches 10..99 run scoreboard players operation apoint acc %= 10* acc

execute if score @s acc matches 100..999 run scoreboard players operation apoint acc %= 10* acc

execute if score @s acc matches 1000..9999 run scoreboard players operation apoint acc %= 100* acc
execute if score @s acc matches 1000..9999 run scoreboard players operation apoint acc %= 10* acc

execute if score @s acc matches 10000..99999 run scoreboard players operation apoint acc %= 100* acc
execute if score @s acc matches 10000..99999 run scoreboard players operation apoint acc %= 10* acc

execute if score @s acc matches 100000..999999 run scoreboard players operation apoint acc %= 1000* acc
execute if score @s acc matches 100000..999999 run scoreboard players operation apoint acc %= 10* acc