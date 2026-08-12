playsound cb:annouc.0 ambient @a ~ ~1000000 ~ 100000 1 1

#g spawn mtf
execute at @n[tag=gate.gateA] at @n[tag=door] run function mtf:spawn {"NoAI":"0","additionaltag":"none","rotatedAs":"@s"}
execute at @n[tag=gate.gateA] at @n[tag=door] run function mtf:spawn {"NoAI":"0","additionaltag":"none","rotatedAs":"@s"}
execute at @n[tag=gate.gateA] at @n[tag=door] run function mtf:spawn {"NoAI":"0","additionaltag":"none","rotatedAs":"@s"}

#g setup path to random player in ez zone
function mtf:path_finding/definetarget

