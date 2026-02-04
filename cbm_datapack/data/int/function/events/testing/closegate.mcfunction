function animated_java:gate/animations/openclosetoggle/resume

execute at @n[tag=gate_marker,tag=r0] run fill ~ ~1 ~-3 ~ ~2 ~-3 lightning_rod[facing=south]
execute at @n[tag=gate_marker,tag=r0] run fill ~ ~1 ~2 ~ ~2 ~2 lightning_rod[facing=south]
execute at @n[tag=gate_marker,tag=r1] run fill ~-3 ~1 ~ ~-3 ~2 ~ lightning_rod[facing=east]
execute at @n[tag=gate_marker,tag=r1] run fill ~2 ~1 ~ ~2 ~2 ~ lightning_rod[facing=east]
execute at @n[tag=gate_marker,tag=r0] run fill ~ ~1 ~-2 ~ ~2 ~-2 lightning_rod[facing=south]
execute at @n[tag=gate_marker,tag=r0] run fill ~ ~1 ~1 ~ ~2 ~1 lightning_rod[facing=south]
execute at @n[tag=gate_marker,tag=r1] run fill ~-2 ~1 ~ ~-2 ~2 ~ lightning_rod[facing=east]
execute at @n[tag=gate_marker,tag=r1] run fill ~1 ~1 ~ ~1 ~2 ~ lightning_rod[facing=east]
execute at @n[tag=gate_marker,tag=r0] run fill ~ ~1 ~ ~ ~2 ~-1 lightning_rod[facing=south]
execute at @n[tag=gate_marker,tag=r1] run fill ~-1 ~1 ~ ~ ~2 ~ lightning_rod[facing=east]