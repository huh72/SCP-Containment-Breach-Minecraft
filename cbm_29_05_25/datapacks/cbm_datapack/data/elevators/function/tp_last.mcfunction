say last tp!
execute at @e[tag=lift_dd_storage1_2] as @e[distance=..4] run function elevators:in

# $tp @e[tag=in,tag=!lift_dd_storage,tag=!lift_dd_storage1_2,tag=!lift_dd_storage2] $(tp_to)

tp @e[tag=in,tag=!lift_dd_storage,tag=!lift_dd_storage1_2,tag=!lift_dd_storage2] @n[tag=lift_dd_storage2]