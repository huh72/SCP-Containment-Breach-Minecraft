# say ez -> hcz

function shader_control:effects/yellow/set {"value":"0.075"}
function shader_control:effects/blue/set {"value":"0"}

#g mask?
# playsound cb:zone1.ambient ambient @s

stopsound @s[tag=ez] * cb:zone3.mainambient
function ambient:mainambientz1

tag @s add hcz
tag @s remove ez