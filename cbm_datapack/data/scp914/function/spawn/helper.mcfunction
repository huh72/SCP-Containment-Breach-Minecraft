execute positioned ^ ^2.8 ^3 rotated as @s rotated ~180 ~ run function animated_java:914_button/summon with storage aj:temp
execute as @n[type=item_display,tag=aj.914_button.root] run function animated_java:914_button/animations/change_mode/apply_frame {"frame":"0"}
execute positioned ^ ^2.3 ^3 run summon interaction ~ ~ ~ {Tags:["+interact","mode914","marker914"]}

execute positioned ^ ^1.5 ^3 rotated as @s rotated ~180 ~ run function animated_java:914_start/summon with storage aj:temp
execute as @n[type=item_display,tag=aj.914_start.root] run function animated_java:914_start/animations/start/apply_frame {"frame":"0"}
execute positioned ^ ^1 ^3 run summon interaction ~ ~ ~ {Tags:["+interact","startbutton914","marker914"]}

execute positioned ^ ^ ^5.3 rotated as @s rotated ~180 ~ run function animated_java:door914/summon with storage aj:temp
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/close/apply_frame {"frame":"0"}

execute at @n[type=item_display,tag=aj.door914.root] positioned ^-8.5 ^ ^ run summon marker ~ ~ ~ {Tags:["door914","doors_input","marker914"]}
execute at @n[type=item_display,tag=aj.door914.root] positioned ^6.5 ^ ^ run summon marker ~ ~ ~ {Tags:["door914","doors_output","marker914"]}

execute at @n[type=item_display,tag=aj.door914.root] positioned ^-7.5 ^ ^-1.5 run summon marker ~ ~ ~ {Tags:["input","marker914"]}
execute at @n[type=item_display,tag=aj.door914.root] positioned ^7.5 ^ ^-1.5 run summon marker ~ ~ ~ {Tags:["output","marker914"]}

execute at @n[type=marker,tag=doors_input] rotated as @s rotated ~90 ~ run tp @n[tag=doors_input] ~ ~ ~ ~ ~
execute at @n[type=marker,tag=doors_output] rotated as @s rotated ~90 ~ run tp @n[tag=doors_output] ~ ~ ~ ~ ~

execute at @n[type=marker,tag=input] rotated as @s rotated ~180 ~ run tp @n[tag=input] ~ ~ ~ ~ ~
execute at @n[type=marker,tag=output] rotated as @s rotated ~180 ~ run tp @n[tag=output] ~ ~ ~ ~ ~

execute positioned ^ ^ ^-3.5 rotated as @s rotated ~180 ~ run function animated_java:gate/summon with storage aj:temp
tag @n[type=item_display,tag=gate] add lvl2

scoreboard players set mode scp914 -1
function scp914:change_mode