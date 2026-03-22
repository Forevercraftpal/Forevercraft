# === SPIRIT RAIDS SYSTEM ===
function evercraft:raids/load


# === DUNGEON INSTANCE SYSTEM ===
function evercraft:dungeon/load


# === INFINITE CASTLE SYSTEM ===
function evercraft:castle/load


# === DUNGEON ATTEMPT COUNTER ===
scoreboard objectives add ec.dng_attempts dummy "Dungeon Attempts"


# === DUNGEON READY-CHECK ===
scoreboard objectives add ec.ready trigger "Dungeon Ready"
scoreboard objectives add ec.dg_ready dummy "Dungeon Ready State"
scoreboard players enable @a ec.ready
