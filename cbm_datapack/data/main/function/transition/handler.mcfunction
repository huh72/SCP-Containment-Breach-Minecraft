execute unless entity @s[tag=lcz] if predicate main:tolcz run function main:transition/hcz/lcz

execute unless entity @s[tag=hcz] if predicate main:lcztohcz run function main:transition/lcz/hcz
execute unless entity @s[tag=hcz] if predicate main:eztohcz run function main:transition/ez/hcz

execute unless entity @s[tag=ez] if predicate main:toez run function main:transition/hcz/ez