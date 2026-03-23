# ============================================================
# Guild Companion Abilities — Read data from entity and apply
# Run as: GC.Head item_display entity
# Reads signature, level, slot from entity and dispatches to apply_slot
# Applies to the player stored in #gc_ability_target companion.id
# ============================================================

# Read companion signature (type name) from profile properties
data modify storage evercraft:companions guild.ability_signature set from entity @s item.components."minecraft:profile".properties[{name:"signature"}].value

# Read level from profile properties and convert to integer
data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value companion.calc 0
function evercraft:companions/handler/math/string_to_int

# Store slot number to storage for macro — offset by 5 to avoid home slot conflicts (home=0-4, guild=5-29)
scoreboard players operation #gc_ability_slot gc.slot = @s gc.slot
scoreboard players add #gc_ability_slot gc.slot 5
execute store result storage evercraft:companions guild.ability_slot int 1 run scoreboard players get #gc_ability_slot gc.slot

# Apply abilities to the target player
scoreboard players operation #Search companion.id = #gc_ability_target companion.id
execute as @a[predicate=evercraft:companions/check_id, limit=1] run function evercraft:guild/pets/abilities/apply_slot with storage evercraft:companions guild
