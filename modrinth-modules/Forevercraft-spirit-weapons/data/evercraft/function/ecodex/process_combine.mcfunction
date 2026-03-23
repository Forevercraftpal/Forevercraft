# === ETERNAL CODEX — PROCESS COMBINE/XP TRIGGERS ===
# Run as: player (from tick)
# Checks ec.codex_combine trigger for combine/XP actions

# Skip if no trigger set
execute unless score @s ec.codex_combine matches 1.. run return 0

# --- COMBINE WITH TOME (trigger 1) ---
execute if score @s ec.codex_combine matches 1 run function evercraft:ecodex/do_combine_tome

# --- COMBINE WITH PORTAL DIAL (trigger 2) ---
execute if score @s ec.codex_combine matches 2 run function evercraft:ecodex/do_combine_dial

# --- DEPOSIT XP (trigger 3) ---
execute if score @s ec.codex_combine matches 3 if score @s ec.codex_tier matches 2.. run function evercraft:tome/absorb

# --- WITHDRAW XP (trigger 4) ---
execute if score @s ec.codex_combine matches 4 if score @s ec.codex_tier matches 2.. run function evercraft:tome/withdraw

# Reset trigger
scoreboard players set @s ec.codex_combine 0
scoreboard players enable @s ec.codex_combine
