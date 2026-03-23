# ============================================================
# HERO'S SATCHEL — Load (v2: per-bag inventory)
# Special 11-slot satchel for World Boss artifacts only.
# AoE effects from stored boss artifacts remain active.
# Each hero satchel has its own inventory keyed by bag_id.
# ============================================================

# Scoreboards
scoreboard objectives add ec.hsatch_id dummy
scoreboard objectives add ec.hsatch_slots dummy
scoreboard objectives add ec.hsatch_count dummy
scoreboard objectives add ec.hbag_id dummy "Active Hero Bag ID"

# Global hero bag ID counter (if not yet set)
execute unless score #next_hbag_id ec.var matches 1.. run scoreboard players set #next_hbag_id ec.var 0

# Migration: v1 (per-player shared) → v2 (per-bag)
execute if data storage evercraft:hero_satchel {version:1} run data remove storage evercraft:hero_satchel data
execute if data storage evercraft:hero_satchel {version:1} run tellraw @a [{text:"[Hero Satchel] ",color:"#FF4500"},{text:"Hero satchel storage upgraded to v2. Old contents reset.",color:"yellow"}]
data modify storage evercraft:hero_satchel version set value 2

# OPT: hero_satchel/tick removed — effect application handled by artifacts/accessories/tick
