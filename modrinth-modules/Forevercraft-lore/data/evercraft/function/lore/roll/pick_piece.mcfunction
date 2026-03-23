# Lore Roll: Entry point — detect context and pick a collectible
# Run as player, at player position

# 1. Detect dimension
execute if predicate evercraft:in_nether run scoreboard players set @s ec.lore_dim 1
execute if predicate evercraft:in_end run scoreboard players set @s ec.lore_dim 2
execute unless predicate evercraft:in_nether unless predicate evercraft:in_end run scoreboard players set @s ec.lore_dim 0

# 2. Detect biome
function evercraft:biome/detect

# 3. Y-level depth override (overworld only)
# Surface biomes (IDs 0-14, 24) underground → override to "Underground" (biome_id 25)
# Cave biomes (15=Lush Caves, 16=Dripstone, 17=Deep Dark) keep their own ID
execute if score @s ec.lore_dim matches 0 run function evercraft:lore/roll/check_depth

# 4. Detect structure proximity
function evercraft:lore/roll/detect_structure

# 5. Pick category (biome / structure / universal / lore)
function evercraft:lore/roll/pick_category

# 6. Pick set from category pool
function evercraft:lore/roll/pick_set

# 7. Pick piece from set (with 16x rare mechanic for rare+ sets)
function evercraft:lore/roll/pick_piece_from_set

# 8. Give the item to the player
function evercraft:lore/give/dispatch
