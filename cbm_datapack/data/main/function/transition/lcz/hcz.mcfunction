say lcz -> hcz

function shader_control:effects/yellow/set {"value":"0.075"}

#g mask?
# playsound cb:zone1.ambient ambient @s

stopsound @s[tag=lcz] * cb:zone1.mainambient
function ambient:mainambientz1

tag @s add hcz
tag @s remove lcz