# Satchel & Hero Satchel — Per-player effect application
# Checks hotbar → inventory → bundle contents (early exit on first match)
# Satchel must be on the player to apply stored artifact buffs

# === Regular Satchel ===
execute if items entity @s hotbar.* *[custom_data~{satchel:true}] run return run function evercraft:satchel/apply_effects
execute if items entity @s inventory.* *[custom_data~{satchel:true}] run return run function evercraft:satchel/apply_effects
execute if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{satchel:1b}}}]}}] run return run function evercraft:satchel/apply_effects

# === Hero Satchel ===
execute if items entity @s hotbar.* *[custom_data~{hero_satchel:true}] run return run function evercraft:hero_satchel/apply_effects
execute if items entity @s inventory.* *[custom_data~{hero_satchel:true}] run return run function evercraft:hero_satchel/apply_effects
execute if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{hero_satchel:1b}}}]}}] run function evercraft:hero_satchel/apply_effects
