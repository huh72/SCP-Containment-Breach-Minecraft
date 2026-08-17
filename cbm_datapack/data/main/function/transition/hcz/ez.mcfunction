# say hcz -> ez

function shader_control:effects/yellow/set {"value":"0"}
function shader_control:effects/blue/set {"value":"0.075"}

#g mask?
# playsound cb:zone1.ambient ambient @s

stopsound @s[tag=hcz] * cb:zone2.mainambient
function ambient:mainambientz2

tag @s add ez
tag @s remove hcz