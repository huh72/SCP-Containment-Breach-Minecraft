# разные типы сообщений() -> разные title
# item name -> "game saves","quotes","interactions","вот..?"
# actionbar -> "stamina"
# subtitle -> "blinkbar"
# title -> "selected items icons/ possible interactions/blink"

scoreboard objectives add request_cd dummy
execute as @a unless score @s item_selected matches 0.. run scoreboard players set @s item_selected 0