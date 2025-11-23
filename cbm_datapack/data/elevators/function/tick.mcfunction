# scoreboard players remove @a[scores={use_cd=1..}] use_cd 1
# scoreboard players add @e[tag=lift_dd_storage,tag=moving] elev_timings 1


# execute if score @n[tag=1f,tag=lift_dd_storage] elev_timings = close_door elev_timings at @n[tag=lift_dd_storage] run function elevators:frames/0
# execute if score @n[tag=1f,tag=lift_dd_storage] elev_timings = sound0 elev_timings at @n[tag=lift_dd_storage] run playsound cb:elev.move ambient @a ~ ~ ~ 1.6 1 1
# execute if score @n[tag=1f,tag=lift_dd_storage] elev_timings = tp0 elev_timings at @n[tag=lift_dd_storage] run function elevators:tp_mid
# execute if score @n[tag=1f,tag=lift_dd_storage] elev_timings = tp1 elev_timings at @n[tag=lift_dd_storage] run function elevators:tp_last
# execute if score @n[tag=1f,tag=lift_dd_storage] elev_timings = tp1 elev_timings at @n[tag=lift_dd_storage] run function elevators:frames/1
