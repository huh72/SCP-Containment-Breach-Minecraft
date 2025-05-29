# В заготовке каждой комнаты в центре двери будут маркеры, при генерации комплекса маркер будет накладываться на маркер, и тогда в одной двери путем удаления случайного маркера останется один маркер, на его месте, получая его наклон будет спавниться дверь со спец номером, взятым от маркера
#doors
scoreboard objectives add dm.UUID dummy
scoreboard objectives add door.UUID dummy

#doors interact vars
scoreboard objectives add door_right_click minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add door_interact_cd dummy
scoreboard players set max door_interact_cd 35

#?
scoreboard objectives add rotation dummy