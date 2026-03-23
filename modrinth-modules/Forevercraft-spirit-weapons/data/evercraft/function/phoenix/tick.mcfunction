# === PHOENIX CODEX — TICK ===
# Called from main tick when any player has pending use

# Process use flag — route to cycle (sneak) or open (normal)
execute as @a[scores={ec.phoenix_use=1..}] at @s run function evercraft:phoenix/process_use

# Reset use score
scoreboard players set @a[scores={ec.phoenix_use=1..}] ec.phoenix_use 0
