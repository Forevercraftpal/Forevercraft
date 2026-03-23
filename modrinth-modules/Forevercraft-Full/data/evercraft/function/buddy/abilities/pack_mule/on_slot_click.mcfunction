# Pack Mule — On Slot Click
# @s = player. mule_temp.slot = "s0"/"s1"/"s2"

# Store pid for macro
execute store result storage evercraft:buddy mule_temp.pid int 1 run scoreboard players get @s companion.id

# Dispatch: if slot has item → retrieve, if empty + mainhand has item → store
function evercraft:buddy/abilities/pack_mule/handle_click with storage evercraft:buddy mule_temp
