tp @n[tag=dummy] @n[tag=i.173tpPoint]
execute at @n[tag=balcony] run playsound cb:p90.burst ambient @a ~ ~1 ~ 1.5 1 1
execute as @n[tag=dummy] run rotate @s facing entity @n[tag=balcony]
execute as @n[tag=balcony] run rotate @s facing entity @n[tag=dummy]