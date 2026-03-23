# ============================================================
# SATCHEL SYSTEM — Load (v2: per-bag inventory)
# ============================================================
# Artifact Essentials Satchel: store accessories in a satchel
# and still receive their passive effects.
# Each satchel has its own inventory keyed by bag_id.

# Scoreboards
scoreboard objectives add ec.satchel_id dummy "Satchel Player ID"
scoreboard objectives add ec.satchel_tier dummy "Satchel Tier"
scoreboard objectives add ec.satchel_slots dummy "Satchel Max Slots"
scoreboard objectives add ec.satchel_count dummy "Satchel Stored Count"
scoreboard objectives add ec.bag_id dummy "Active Bag ID"

# Global bag ID counter (if not yet set)
execute unless score #next_bag_id ec.var matches 1.. run scoreboard players set #next_bag_id ec.var 0

# Migration: v1 (per-player shared) → v2 (per-bag)
execute if data storage evercraft:satchel {version:1} run data remove storage evercraft:satchel data
execute if data storage evercraft:satchel {version:1} run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Satchel storage upgraded to v2. Old contents reset.",color:"yellow"}]
data modify storage evercraft:satchel version set value 2

# OPT: satchel/tick removed — effect application handled by artifacts/accessories/tick
