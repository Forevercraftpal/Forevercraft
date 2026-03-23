# === ETERNAL CODEX — TICK ===
# Called from main tick when any player has pending use

# Process use flag — route to cycle (sneak) or open (normal)
execute as @a[scores={ec.ecodex_use=1..}] at @s run function evercraft:ecodex/process_use

# Reset use score
scoreboard players set @a[scores={ec.ecodex_use=1..}] ec.ecodex_use 0
