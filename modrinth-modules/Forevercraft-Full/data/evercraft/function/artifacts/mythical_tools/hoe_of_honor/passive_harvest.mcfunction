# Hoe of Honor — Passive 9x9 Harvest (20-tick schedule)
# Automatically harvests mature crops in a 9x9 area around any player holding the Hoe of Honor
# Immature crops are ignored. Harvested crops are replanted automatically.
# Crops sit at the same Y level as the player's feet (on top of farmland).

# Scan 9 rows (Z from -4 to +4) for each player holding the Hoe of Honor
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~-4 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~-3 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~3 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] positioned ~-4 ~ ~4 run function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest_row

# Self-schedule every 20 ticks (1 second)
schedule function evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest 20t
