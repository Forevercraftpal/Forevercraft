# ============================================================
# Check for campfire/soul_campfire within 2 blocks of player
# Sets #ck_campfire ec.temp to 1 if found, 0 if not
# Runs as + at the player
# Uses #minecraft:campfires tag (campfire + soul_campfire)
# Short-circuits via return run on first match
# ============================================================

scoreboard players set #ck_campfire ec.temp 0

# --- Y = -1 (campfire on ground below player — most common) ---
execute at @s if block ~ ~-1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~-1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~-1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~-1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~-1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~-1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~-1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~-1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~-1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~-1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~-1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~-1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~-1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~-1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~-1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~-1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~-1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~-1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~-1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~-1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~-1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~-1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~-1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~-1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~-1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1

# --- Y = 0 (campfire at feet level) ---
execute at @s if block ~ ~ ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~ ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~ ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~ ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~ ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~ ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~ ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~ ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~ ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~ ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~ ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~ ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~ ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~ ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~ ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~ ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~ ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~ ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~ ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~ ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~ ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~ ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~ ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~ ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~ ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1

# --- Y = +1 (campfire on a table/shelf above) ---
execute at @s if block ~ ~1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~1 ~ #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~ ~1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~1 ~1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~1 ~-1 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~1 ~1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-1 ~1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~2 ~1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~1 ~2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
execute at @s if block ~-2 ~1 ~-2 #minecraft:campfires run return run scoreboard players set #ck_campfire ec.temp 1
