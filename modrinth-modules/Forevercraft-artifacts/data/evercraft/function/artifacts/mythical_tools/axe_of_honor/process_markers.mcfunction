# Axe of Honor — Process markers (break detection + cleanup)
# OPT: Only called when markers exist
execute as @e[type=marker,tag=ec_axe_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/axe_of_honor/on_break
kill @e[type=marker,tag=ec_axe_target]
