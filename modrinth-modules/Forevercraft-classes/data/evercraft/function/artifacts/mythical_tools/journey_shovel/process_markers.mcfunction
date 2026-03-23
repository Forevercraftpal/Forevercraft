# Journey Shovel — Process markers (break detection + cleanup)
# OPT: Only called when markers exist
execute as @e[type=marker,tag=ec_shov_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/journey_shovel/on_break
kill @e[type=marker,tag=ec_shov_target]
