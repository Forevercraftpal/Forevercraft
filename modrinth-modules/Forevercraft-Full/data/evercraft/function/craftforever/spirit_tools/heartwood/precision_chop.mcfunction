# === HEARTWOOD — PRECISION CHOP ===
# FIX #4: Detect actual log type from adjacent blocks and drop matching planks
# The broken block is air. Check surrounding blocks for log type hints.
# Run at broken block position.

# Check adjacent blocks to determine tree type, default to oak
# (The block above or below the broken one is likely still a log of the same type)
execute if block ~ ~1 ~ oak_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ spruce_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:spruce_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ birch_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:birch_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ jungle_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:jungle_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ acacia_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:acacia_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ dark_oak_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:dark_oak_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ mangrove_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:mangrove_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ cherry_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:cherry_planks",count:4},PickupDelay:10s}

# Fallback: check block below if above wasn't a log
execute if block ~ ~1 ~ air if block ~ ~-1 ~ oak_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ spruce_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:spruce_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ birch_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:birch_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ jungle_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:jungle_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ acacia_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:acacia_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ dark_oak_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:dark_oak_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ mangrove_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:mangrove_planks",count:4},PickupDelay:10s}
execute if block ~ ~1 ~ air if block ~ ~-1 ~ cherry_log run summon item ~ ~0.5 ~ {Item:{id:"minecraft:cherry_planks",count:4},PickupDelay:10s}

# Ultimate fallback: if neither above nor below is a log (isolated log), drop oak
execute if block ~ ~1 ~ air unless block ~ ~-1 ~ #minecraft:logs run summon item ~ ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:4},PickupDelay:10s}

# VFX
particle block{block_state:"oak_planks"} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 8
playsound minecraft:block.wood.break master @a[distance=..8] ~ ~ ~ 1 1.2
