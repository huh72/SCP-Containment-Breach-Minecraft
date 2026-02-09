playsound cb:i.ulgrin.kill ambient @a[distance=0.01..] ~ ~ ~ 2 1 1
playsound cb:i.ulgrin.kill ambient @s ~ ~100 ~ 100 1 1

playsound cb:p90.shot_in ambient @a[distance=0.01..] ~ ~ ~ 2 1 1
playsound cb:p90.shot_in ambient @s ~ ~100 ~ 100 1 1

particle block{block_state:{Name:redstone_block}} ~ ~1.75 ~ 0 0 0 0 10

tag @s add d_guard
function main:death