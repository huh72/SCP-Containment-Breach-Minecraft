summon armor_stand ~ ~ ~ {Tags:['scp173contained','new','elevatorTarget'],Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Silent:1b,Passengers:[{id:"minecraft:shulker",Tags:['shulker_hitbox'],NoAI:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}]}
item replace entity @n[tag=new] armor.head with paper[minecraft:item_model="cb:scp/173contained"]
attribute @n[tag=new] scale base set 0.91

#g hitbox
effect give @n[tag=shulker_hitbox] invisibility infinite 1 true
effect give @n[tag=shulker_hitbox] regeneration infinite 10 true
ride @n[tag=scp173contained] mount @n[tag=shulker_hitbox]

tag @n[tag=new] remove new

tag @n[tag=mtf] add 173.carrier