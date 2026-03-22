# === LORE DISCOVERY SYSTEM ===
# Per-tick: detect sparkle right-clicks
# OPT: Existence gate — skip entity scan when no lore sparkles exist
execute if entity @e[type=interaction,tag=ec.lore_click,limit=1] as @e[type=interaction,tag=ec.lore_click] if data entity @s interaction at @s run function evercraft:lore/on_click
# Per-tick: progress bar for active pickups (only when players are picking up)
execute as @a[scores={ec.lore_picking=1}] at @s run function evercraft:lore/progress_step
# Per-tick: pre-cache held physical lore item UID for consume detection
# OPT: Skip NBT read when cache is already populated (only read on first detect or item change)
# Clear cache when NOT holding a lore piece (switched away / consumed)
execute as @a[scores={ec.lore_cached=1..}] unless items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] run scoreboard players set @s ec.lore_cached 0
# Read NBT only when cache is empty AND holding a lore piece (first pick-up or slot change)
execute as @a[scores={ec.lore_cached=..0}] if items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] unless items entity @s weapon.mainhand written_book store result score @s ec.lore_cached run data get entity @s SelectedItem.components."minecraft:custom_data".lore_uid
# Per-tick: handle /trigger ec.lore_add (collection button in books)
execute as @a[scores={ec.lore_add=1..}] run function evercraft:lore/collect/try_add
scoreboard players enable @a[scores={ec.lore_add=1..}] ec.lore_add
scoreboard players set @a[scores={ec.lore_add=1..}] ec.lore_add 0
