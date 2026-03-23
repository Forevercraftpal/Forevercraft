# Campfire Healing — Scan for campfires near player
# Places marker entities at campfire positions for range-based healing
# Close range (2 blocks): step 1 at Y-1, Y, Y+1 — guarantees no gaps
# Far range (3-6 blocks): step 3 at Y-1 — catches campfires at distance
# Runs as + at the player

# === CLOSE RANGE: Y = -1, step 1, radius 2 (no gaps) ===
execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~-1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~-1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}

# === CLOSE RANGE: Y = 0, step 1, radius 2 ===
execute positioned ~-2 ~0 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~0 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~0 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~0 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~0 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~0 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~0 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~0 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~0 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~0 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~0 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~0 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~0 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~0 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~0 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~0 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~0 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}

# === CLOSE RANGE: Y = +1, step 1, radius 2 ===
execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-2 ~1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~1 ~1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~1 ~-2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~1 ~1 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~2 ~1 ~2 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}

# === FAR RANGE: Y = -1, step 3, radius 3-6 (outer ring only) ===
execute positioned ~-6 ~-1 ~-6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-6 ~-1 ~-3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-6 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-6 ~-1 ~3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-6 ~-1 ~6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-3 ~-1 ~-6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-3 ~-1 ~-3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-3 ~-1 ~3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~-3 ~-1 ~6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~-6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~0 ~-1 ~6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~3 ~-1 ~-6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~3 ~-1 ~-3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~3 ~-1 ~3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~3 ~-1 ~6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~6 ~-1 ~-6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~6 ~-1 ~-3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~6 ~-1 ~0 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~6 ~-1 ~3 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
execute positioned ~6 ~-1 ~6 if block ~ ~ ~ #minecraft:campfires unless entity @e[type=marker,tag=ec.cf_heal,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec.cf_heal"]}
