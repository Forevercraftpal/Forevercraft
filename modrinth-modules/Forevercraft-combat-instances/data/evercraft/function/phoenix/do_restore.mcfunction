# === PHOENIX CODEX — RESTORE CONSUMED ITEM ===
# Restores to the same hand the player was holding it in
tag @s remove ec.phoenix_restore

execute if entity @s[tag=ec.phoenix_mainhand] run loot replace entity @s weapon.mainhand loot evercraft:phoenix/phoenix_codex
execute unless entity @s[tag=ec.phoenix_mainhand] run loot replace entity @s weapon.offhand loot evercraft:phoenix/phoenix_codex
tag @s remove ec.phoenix_mainhand
