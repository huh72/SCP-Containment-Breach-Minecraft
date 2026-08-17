# say hcz -> lcz

function shader_control:effects/yellow/set {"value":"0"}

#g mask?
# playsound cb:zone1.ambient ambient @s

stopsound @s[tag=hcz] * cb:zone2.mainambient
function ambient:mainambientz0

tag @s add lcz
tag @s remove hcz



