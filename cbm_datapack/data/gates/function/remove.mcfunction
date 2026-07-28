kill @e[type=item_display, tag=gatelockmarker, tag=!neverRemove]
execute as @e[type=item_display, tag=gate, tag=!neverRemove] run function animated_java:gate/remove/this
